from os import environ
from dotenv import load_dotenv

load_dotenv()

config = {
    "DB_URI": environ.get("DB_URI"),
    "API_CREATE_SCHEMA": environ.get("API_CREATE_SCHEMA") == "True",
}