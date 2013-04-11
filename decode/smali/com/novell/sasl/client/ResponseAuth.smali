.class Lcom/novell/sasl/client/ResponseAuth;
.super Ljava/lang/Object;
.source "ResponseAuth.java"


# instance fields
.field private m_responseValue:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/novell/sasl/client/DirectiveList;

    invoke-direct {v0, p1}, Lcom/novell/sasl/client/DirectiveList;-><init>([B)V

    .line 37
    :try_start_0
    invoke-virtual {v0}, Lcom/novell/sasl/client/DirectiveList;->parseDirectives()V

    .line 38
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/ResponseAuth;->checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/novell/sasl/client/DirectiveList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novell/sasl/client/ParsedDirective;

    .line 63
    invoke-virtual {v0}, Lcom/novell/sasl/client/ParsedDirective;->getName()Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v3, "rspauth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Missing response-auth directive."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    return-void
.end method

.method public getResponseValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    return-object v0
.end method
