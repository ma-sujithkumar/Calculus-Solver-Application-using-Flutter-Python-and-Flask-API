from flask import Flask,jsonify
from sympy import *

app = Flask(__name__)

@app.route('/differentiate/<sym>/<func>',methods=["GET"])
def get_tasks(sym,func):
    sym1=sym.split(",")
    sym2=" ".join(sym1)
    x,y=symbols(sym2)
    ans=diff(func,x)
    return jsonify({"solution":str(ans)})

@app.route('/integrate/<sym>/<func>',methods=["GET"])
def get_tasks1(sym,func):
    sym1=sym.split(",")
    sym2=" ".join(sym1)
    x,y=symbols(sym2)
    ans=integrate(func,x)
    return jsonify({"solution":str(ans)})

@app.route('/def_integrate/<sym>/<func>/<low>/<upper>',methods=["GET"])
def get_tasks2(sym,func,low,upper):
    sym1=sym.split(",")
    sym2=" ".join(sym1)
    x,y=symbols(sym2)
    ans=integrate(func,(x,low,upper))
    return jsonify({"solution":str(ans)})

if __name__=="__main__":
    app.run()