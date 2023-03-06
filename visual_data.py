#!/usr/bin/env python3
import random
import re
import pprint
from datetime import datetime
import pandas as pd
import dash
from dash.dependencies import Input, Output
from dash import html
from dash import dcc
import plotly.graph_objs as go
from plotly.subplots import make_subplots
from flask import Flask

server = Flask(__name__)
app = dash.Dash(server=server)

app.layout = html.Div(
    [
        html.Label('Data Path: '),
        dcc.Input(id="log_file_path", value='', type='text', debounce=True),
    ]
    +[
        html.Div([
            dcc.Graph(id='graph1')
        ],style={'width':'100%','display':'inline-block'})
    ]
)
