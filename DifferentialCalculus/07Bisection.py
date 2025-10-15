"""Bisection method for finding roots of a function"""

from __future__ import annotations
from typing import Callable
import plotly.graph_objects as go
import numpy as np

X: np.ndarray = np.linspace(-5, 5, 1000)


def bisect(
    f: Callable[[float], float],
    a: float,
    b: float,
    tol: float = 1e-5,
) -> tuple[float, int, list[float]]:
    """Find a root of f in the interval [a, b] using the bisection method.

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

    Returns
    -------
    root : float
        The approximate root of the function.
    n_iter : int
        The number of iterations taken to converge.
    """
    if f(a) * f(b) > 0:
        raise ValueError(f"{f(a)=} and {f(b)=} must have different signs")

    n_iter = 0
    iter = []
    while (b - a) / 2 > tol:
        midpoint = (a + b) / 2
        iter.append(midpoint)
        if f(midpoint) == 0:
            return midpoint, n_iter, iter
        elif f(a) * f(midpoint) < 0:
            b = midpoint
        else:
            a = midpoint
        n_iter += 1
    return (a + b) / 2, n_iter, iter


def example1():
    """A cubic function with a root in [-1, 3]"""
    # Example usage
    def example_function(x: float) -> float:
        return x**3 - x - 2

    root, iterations, points = bisect(example_function, -1, 3)
    print(f"Root: {root}, Iterations: {iterations}, Points: {points}")

    figure = go.Figure()
    figure.add_trace(
        go.Scatter(
            x=[point for point in points],
            y=[0 for _ in points],
            mode="markers",
            name="Bisection Points",
            marker=dict(color="green", size=8),
        )
    )
    figure.add_trace(
        go.Scatter(
            x=X,
            y=[example_function(x) for x in X],
            mode="lines",
            name="f(x) = x^3 - x - 2",
        )
    )
    figure.update_layout(
        title="Bisection Method Points",
        xaxis_title="x",
        yaxis_title="f(x) = x^3 - x - 2",
    )
    figure.show()


def example2():
    """The cube of a sine function being equal to a exponential function"""
    def example_function(x: float) -> float:
        return np.sin(x)**3 - np.exp(x) / 10

    root, iterations, points = bisect(example_function, -1, 1)
    print(f"Root: {root}, Iterations: {iterations}, Points: {points}")

    figure = go.Figure()
    figure.add_trace(
        go.Scatter(
            x=[point for point in points],
            y=[0 for _ in points],
            mode="markers",
            name="Bisection Points",
            marker=dict(color="green", size=8),
        )
    )
    figure.add_trace(
        go.Scatter(
            x=X,
            y=[example_function(x) for x in X],
            mode="lines",
            name="f(x) = sin(x)^3 - exp(x)/10",
        )
    )
    figure.update_layout(
        title="Bisection Method Points",
        xaxis_title="x",
        yaxis_title="f(x) = sin(x)^3 - exp(x)/10",
    )
    figure.show()


if __name__ == "__main__":
    example1()
    example2()
