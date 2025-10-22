#!/usr/bin/env python3
"""
weierstrass_plotly.py

Interactive visualization of partial sums of the Weierstrass function
    W(x) = sum_{n=1}^infty a^n * cos(b^n * pi * x)

We use b = 7 (positive odd integer) and a = 0.85 (0 < a < 1 and a*b > 1 + 3*pi/2).
A slider controls the number of terms N used in the partial sum.
"""
import numpy as np
import plotly.graph_objects as go

# Parameters (chosen to satisfy the condition a*b > 1 + 3*pi/2)
a = 0.85
b = 7
assert 0 < a < 1, "Choose 0 < a < 1"
assert a * b > 1 + 1.5 * np.pi, "The chosen a and b should satisfy a*b > 1 + 3*pi/2"

# Domain and discretization
x_min, x_max = -2.0, 2.0
n_points = 1_000_000
x = np.linspace(x_min, x_max, n_points)

# Number of partial-sum terms available for the slider
N_max = 20

# Precompute cumulative partial sums efficiently
y_list = []
y = np.zeros_like(x)
a_pow = a  # a^1
b_pow = b  # b^1

for n in range(1, N_max + 1):
    # Add the n-th term: a^n * cos(b^n * pi * x)
    y = y + a_pow * np.cos(b_pow * np.pi * x)
    y_list.append(y.copy())
    # update powers for next term:
    a_pow *= a
    b_pow *= b

# Build Plotly frames (one frame per N)
frames = [
    go.Frame(
        data=[go.Scatter(x=x, y=y_list[i], mode="lines", line=dict(width=1))],
        name=str(i + 1),
        layout=go.Layout(
            title_text=f"Weierstrass partial sum (N = {i+1}), a={a}, b={b}"
        ),
    )
    for i in range(N_max)
]

# Initial trace (N = 1)
initial_trace = go.Scatter(
    x=x,
    y=y_list[0],
    mode="lines",
    line=dict(width=1),
    name="Weierstrass partial sum",
)

# Slider steps (one per frame)
steps = []
for i in range(N_max):
    step = dict(
        method="animate",
        label=str(i + 1),
        args=[
            [str(i + 1)],
            {
                "mode": "immediate",
                "frame": {"duration": 0, "redraw": True},
                "transition": {"duration": 0},
            },
        ],
    )
    steps.append(step)

sliders = [
    dict(
        active=0,
        currentvalue={"prefix": "Number of terms N: "},
        pad={"t": 50},
        steps=steps,
    )
]

# Play and Pause buttons
updatemenus = [
    dict(
        type="buttons",
        showactive=False,
        y=1.15,
        x=0.0,
        xanchor="left",
        yanchor="top",
        buttons=[
            dict(
                label="Play",
                method="animate",
                args=[
                    None,
                    {
                        "frame": {"duration": 300, "redraw": True},
                        "fromcurrent": True,
                        "transition": {"duration": 0},
                        "mode": "immediate",
                    },
                ],
            ),
            dict(
                label="Pause",
                method="animate",
                args=[
                    [None],
                    {
                        "frame": {"duration": 0, "redraw": False},
                        "mode": "immediate",
                        "transition": {"duration": 0},
                    },
                ],
            ),
        ],
    )
]

layout = go.Layout(
    title=f"Weierstrass partial sum (N = 1), a={a}, b={b}",
    xaxis=dict(title="x", range=[x_min, x_max]),
    yaxis=dict(title="W_N(x)"),
    sliders=sliders,
    updatemenus=updatemenus,
    template="simple_white",
    width=900,
    height=500,
)

fig = go.Figure(data=[initial_trace], layout=layout, frames=frames)

# Show the figure
fig.show()
