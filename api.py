from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from routes import load as load_routes
import logging

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

load_routes(app)