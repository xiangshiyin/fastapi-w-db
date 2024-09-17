from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
from app.models import Base, get_db, User

app = FastAPI()


@app.get("/")
def read_root():
    return {"message": "Welcome to FastAPI with MySQL"}


@app.get("/Users/")
def read_users(db: Session = Depends(get_db)):
    users = db.query(User).all()
    return users
