#!/usr/bin/env python3
"""Bisection method for finding roots of a function with interactive CLI"""

from __future__ import annotations
from typing import Callable
import argparse
import plotly.graph_objects as go
import numpy as np
import time
import sys


def bisect_interactive(
    f: Callable[[float], float],
    a: float,
    b: float,
    tol: float = 1e-5,
    delay: float = 0.8,
    auto_mode: bool = False,
) -> tuple[float, int, list[dict]]:
    """Interactive bisection method that displays step-by-step progress.

    Parameters
    ----------
    f : Callable[[float], float]
        The function for which we are trying to find a root.
    a : float
        The start of the interval.
    b : float
        The end of the interval.
    tol : float, optional
        The tolerance for stopping criterion (default is 1e-5).
    delay : float, optional
        Time delay between steps in auto mode (default is 0.8 seconds).
    auto_mode : bool, optional
        If True, automatically advances; if False, waits for user input.

    Returns
    -------
    root : float
        The approximate root of the function.
    n_iter : int
        The number of iterations taken to converge.
    history : list[dict]
        History of all iterations with endpoints and midpoints.
    """
    if f(a) * f(b) > 0:
        raise ValueError(f"f(a)={f(a):.6f} and f(b)={f(b):.6f} must have different signs")

    print("=" * 70)
    print("BISECTION METHOD - INTERACTIVE MODE")
    print("=" * 70)
    print(f"Function: Looking for root where f(x) = 0")
    print(f"Initial interval: [{a:.6f}, {b:.6f}]")
    print(f"Tolerance: {tol}")
    print(f"f(a) = {f(a):.6f}, f(b) = {f(b):.6f}")
    print("=" * 70)
    
    if not auto_mode:
        input("\nPress ENTER to start the iterations...")
    else:
        time.sleep(delay)

    n_iter = 0
    history = []
    
    while (b - a) / 2 > tol:
        midpoint = (a + b) / 2
        f_a = f(a)
        f_b = f(b)
        f_mid = f(midpoint)
        
        # Store iteration data
        history.append({
            'iteration': n_iter + 1,
            'a': a,
            'b': b,
            'midpoint': midpoint,
            'f_a': f_a,
            'f_b': f_b,
            'f_mid': f_mid,
            'interval_width': b - a
        })
        
        # Display iteration information
        print(f"\n{'─' * 70}")
        print(f"ITERATION {n_iter + 1}")
        print(f"{'─' * 70}")
        print(f"  Left endpoint (a):   {a:12.8f}  →  f(a) = {f_a:12.8f}")
        print(f"  Right endpoint (b):  {b:12.8f}  →  f(b) = {f_b:12.8f}")
        print(f"  Midpoint (c):        {midpoint:12.8f}  →  f(c) = {f_mid:12.8f}")
        print(f"  Interval width:      {b - a:12.8f}")
        
        # Check for exact root
        if f_mid == 0:
            print(f"\n🎯 EXACT ROOT FOUND: x = {midpoint:.8f}")
            return midpoint, n_iter + 1, history
        
        # Determine which half contains the root
        if f_a * f_mid < 0:
            print(f"\n  → f(a) and f(c) have opposite signs")
            print(f"  → Root is in [{a:.8f}, {midpoint:.8f}]")
            print(f"  → Setting b = c")
            b = midpoint
        else:
            print(f"\n  → f(c) and f(b) have opposite signs")
            print(f"  → Root is in [{midpoint:.8f}, {b:.8f}]")
            print(f"  → Setting a = c")
            a = midpoint
        
        n_iter += 1
        
        # Wait for user input or delay
        if not auto_mode:
            input("\nPress ENTER for next iteration...")
        else:
            time.sleep(delay)
    
    root = (a + b) / 2
    print(f"\n{'=' * 70}")
    print(f"✓ CONVERGENCE ACHIEVED!")
    print(f"{'=' * 70}")
    print(f"  Final root:          {root:.10f}")
    print(f"  Final f(root):       {f(root):.10e}")
    print(f"  Total iterations:    {n_iter}")
    print(f"  Final interval:      [{a:.10f}, {b:.10f}]")
    print(f"  Final width:         {b - a:.10e}")
    print(f"{'=' * 70}\n")
    
    return root, n_iter, history


def visualize_bisection_history(
    f: Callable[[float], float],
    history: list[dict],
    x_range: tuple[float, float] = (-5, 5),
    function_label: str = "f(x)"
):
    """Create an animated visualization of the bisection method history.

    Parameters
    ----------
    f : Callable[[float], float]
        The function being analyzed.
    history : list[dict]
        History of iterations from bisect_interactive.
    x_range : tuple[float, float], optional
        Range for plotting the function.
    function_label : str, optional
        Label for the function in the plot.
    """
    X = np.linspace(x_range[0], x_range[1], 1000)
    Y = [f(x) for x in X]
    
    # Create frames for animation
    frames = []
    
    for i, step in enumerate(history):
        frame_data = [
            # Function curve
            go.Scatter(
                x=X,
                y=Y,
                mode="lines",
                name=function_label,
                line=dict(color="blue", width=2),
                showlegend=(i == 0)
            ),
            # Zero line
            go.Scatter(
                x=X,
                y=[0] * len(X),
                mode="lines",
                name="y = 0",
                line=dict(color="gray", width=1, dash="dash"),
                showlegend=(i == 0)
            ),
            # Left endpoint
            go.Scatter(
                x=[step['a']],
                y=[step['f_a']],
                mode="markers+text",
                name="Left (a)",
                marker=dict(color="red", size=12, symbol="square"),
                text=[f"a={step['a']:.4f}"],
                textposition="top center",
                showlegend=(i == 0)
            ),
            # Right endpoint
            go.Scatter(
                x=[step['b']],
                y=[step['f_b']],
                mode="markers+text",
                name="Right (b)",
                marker=dict(color="orange", size=12, symbol="square"),
                text=[f"b={step['b']:.4f}"],
                textposition="top center",
                showlegend=(i == 0)
            ),
            # Midpoint
            go.Scatter(
                x=[step['midpoint']],
                y=[step['f_mid']],
                mode="markers+text",
                name="Midpoint (c)",
                marker=dict(color="green", size=15, symbol="diamond"),
                text=[f"c={step['midpoint']:.4f}"],
                textposition="bottom center",
                showlegend=(i == 0)
            ),
            # Interval line
            go.Scatter(
                x=[step['a'], step['b']],
                y=[0, 0],
                mode="lines",
                name="Interval",
                line=dict(color="purple", width=4),
                showlegend=(i == 0)
            )
        ]
        
        frames.append(go.Frame(
            data=frame_data,
            name=f"Iteration {i + 1}",
            layout=go.Layout(
                title_text=f"Iteration {step['iteration']}: Interval [{step['a']:.6f}, {step['b']:.6f}], Width = {step['interval_width']:.6f}"
            )
        ))
    
    # Initial figure with first frame data
    fig = go.Figure(data=frames[0].data, frames=frames)
    
    fig.update_layout(
        title=f"Bisection Method Animation - Iteration 1",
        xaxis_title="x",
        yaxis_title=function_label,
        hovermode="closest",
        updatemenus=[{
            "type": "buttons",
            "showactive": False,
            "buttons": [
                {
                    "label": "▶ Play",
                    "method": "animate",
                    "args": [None, {
                        "frame": {"duration": 1000, "redraw": True},
                        "fromcurrent": True,
                        "mode": "immediate",
                        "transition": {"duration": 300}
                    }]
                },
                {
                    "label": "⏸ Pause",
                    "method": "animate",
                    "args": [[None], {
                        "frame": {"duration": 0, "redraw": False},
                        "mode": "immediate",
                        "transition": {"duration": 0}
                    }]
                }
            ],
            "x": 0.1,
            "y": 1.15
        }],
        sliders=[{
            "active": 0,
            "steps": [
                {
                    "args": [[f.name], {
                        "frame": {"duration": 0, "redraw": True},
                        "mode": "immediate",
                        "transition": {"duration": 0}
                    }],
                    "label": f"Iter {i + 1}",
                    "method": "animate"
                }
                for i, f in enumerate(frames)
            ],
            "x": 0.1,
            "len": 0.9,
            "xanchor": "left",
            "y": 0,
            "yanchor": "top"
        }]
    )
    
    fig.show()


# Example definitions
EXAMPLES = {
    1: {
        "name": "Cubic Polynomial",
        "function": lambda x: x**3 - x - 2,
        "label": "f(x) = x³ - x - 2",
        "interval": (1.0, 2.0),
        "x_range": (0.5, 2.5),
        "description": "Finding the root of a cubic polynomial"
    },
    2: {
        "name": "Sine vs Exponential",
        "function": lambda x: np.sin(x)**3 - np.exp(x) / 10,
        "label": "f(x) = sin(x)³ - exp(x)/10",
        "interval": (-1.0, 1.0),
        "x_range": (-2.0, 2.0),
        "description": "Finding where sin(x)³ = exp(x)/10"
    },
    3: {
        "name": "Cosine Fixed Point",
        "function": lambda x: np.cos(x) - x,
        "label": "f(x) = cos(x) - x",
        "interval": (0.0, 1.0),
        "x_range": (-0.5, 1.5),
        "description": "Finding the fixed point where cos(x) = x"
    }
}


def list_examples():
    """Display all available examples."""
    print("\n" + "=" * 70)
    print("AVAILABLE EXAMPLES")
    print("=" * 70)
    for num, example in EXAMPLES.items():
        print(f"\nExample {num}: {example['name']}")
        print(f"  Function:    {example['label']}")
        print(f"  Interval:    {example['interval']}")
        print(f"  Description: {example['description']}")
    print("\n" + "=" * 70 + "\n")


def run_example(example_num: int, mode: str, tolerance: float, delay: float):
    """Run a specific example with given parameters.
    
    Parameters
    ----------
    example_num : int
        The example number to run (1, 2, or 3).
    mode : str
        Either 'manual' or 'auto'.
    tolerance : float
        Convergence tolerance.
    delay : float
        Delay between iterations in auto mode (seconds).
    """
    if example_num not in EXAMPLES:
        print(f"Error: Example {example_num} not found.")
        list_examples()
        sys.exit(1)
    
    example = EXAMPLES[example_num]
    auto_mode = (mode == 'auto')
    
    print(f"\n{'=' * 70}")
    print(f"EXAMPLE {example_num}: {example['name']}")
    print(f"{'=' * 70}")
    print(f"Function: {example['label']}")
    print(f"Description: {example['description']}")
    print(f"Mode: {mode.upper()}")
    print(f"Tolerance: {tolerance}")
    if auto_mode:
        print(f"Delay: {delay}s")
    print(f"{'=' * 70}\n")
    
    # Run interactive bisection
    a, b = example['interval']
    root, iterations, history = bisect_interactive(
        example['function'],
        a,
        b,
        tol=tolerance,
        delay=delay,
        auto_mode=auto_mode
    )
    
    # Show visualization
    print("\nGenerating interactive visualization...")
    visualize_bisection_history(
        example['function'],
        history,
        x_range=example['x_range'],
        function_label=example['label']
    )


def main():
    """Main CLI entry point."""
    parser = argparse.ArgumentParser(
        description="Interactive Bisection Method for Root Finding",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  %(prog)s --example 1                    # Run example 1 in manual mode
  %(prog)s --example 2 --mode auto        # Run example 2 in auto mode
  %(prog)s --example 3 --tolerance 1e-8   # Run example 3 with custom tolerance
  %(prog)s --list                         # List all available examples
  %(prog)s -e 1 -m auto -d 0.5           # Quick auto run with 0.5s delay
        """
    )
    
    parser.add_argument(
        '--example', '-e',
        type=int,
        choices=[1, 2, 3],
        help='Example number to run (1, 2, or 3)'
    )
    
    parser.add_argument(
        '--mode', '-m',
        type=str,
        choices=['manual', 'auto'],
        default='manual',
        help='Execution mode: manual (press ENTER) or auto (timed) [default: manual]'
    )
    
    parser.add_argument(
        '--tolerance', '-t',
        type=float,
        default=1e-5,
        help='Convergence tolerance [default: 1e-5]'
    )
    
    parser.add_argument(
        '--delay', '-d',
        type=float,
        default=0.8,
        help='Delay between iterations in auto mode (seconds) [default: 0.8]'
    )
    
    parser.add_argument(
        '--list', '-l',
        action='store_true',
        help='List all available examples'
    )
    
    args = parser.parse_args()
    
    # Handle --list flag
    if args.list:
        list_examples()
        return
    
    # Require --example if not listing
    if args.example is None:
        parser.print_help()
        print("\n" + "!" * 70)
        print("ERROR: --example is required (use --list to see available examples)")
        print("!" * 70 + "\n")
        sys.exit(1)
    
    # Run the selected example
    run_example(args.example, args.mode, args.tolerance, args.delay)


if __name__ == "__main__":
    main()
