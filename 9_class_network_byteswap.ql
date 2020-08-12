import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        exists(MacroInvocation inov |
            inov.getMacroName().regexpMatch("ntoh.*") 
            and inov.getExpr() = this)
    }
}

from NetworkByteSwap n
select n, "Network byte swap"

