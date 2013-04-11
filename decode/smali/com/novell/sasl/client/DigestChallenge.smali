.class Lcom/novell/sasl/client/DigestChallenge;
.super Ljava/lang/Object;
.source "DigestChallenge.java"


# static fields
.field private static final CIPHER_3DES:I = 0x1

.field private static final CIPHER_DES:I = 0x2

.field private static final CIPHER_RC4:I = 0x8

.field private static final CIPHER_RC4_40:I = 0x4

.field private static final CIPHER_RC4_56:I = 0x10

.field private static final CIPHER_RECOGNIZED_MASK:I = 0x1f

.field private static final CIPHER_UNRECOGNIZED:I = 0x20

.field public static final QOP_AUTH:I = 0x1

.field public static final QOP_AUTH_CONF:I = 0x4

.field public static final QOP_AUTH_INT:I = 0x2

.field public static final QOP_UNRECOGNIZED:I = 0x8


# instance fields
.field private m_algorithm:Ljava/lang/String;

.field private m_characterSet:Ljava/lang/String;

.field private m_cipherOptions:I

.field private m_maxBuf:I

.field private m_nonce:Ljava/lang/String;

.field private m_qop:I

.field private m_realms:Ljava/util/ArrayList;

.field private m_staleFlag:Z


# direct methods
.method constructor <init>([B)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    .line 54
    iput-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    .line 56
    iput-boolean v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    .line 58
    iput-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    .line 62
    new-instance v0, Lcom/novell/sasl/client/DirectiveList;

    invoke-direct {v0, p1}, Lcom/novell/sasl/client/DirectiveList;-><init>([B)V

    .line 65
    :try_start_0
    invoke-virtual {v0}, Lcom/novell/sasl/client/DirectiveList;->parseDirectives()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 84
    invoke-virtual {p1}, Lcom/novell/sasl/client/DirectiveList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novell/sasl/client/ParsedDirective;

    .line 91
    invoke-virtual {v0}, Lcom/novell/sasl/client/ParsedDirective;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleRealm(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 94
    :cond_1
    const-string v3, "nonce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleNonce(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v3, "qop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleQop(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v3, "maxbuf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleMaxbuf(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 100
    :cond_4
    const-string v3, "charset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 101
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleCharset(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 102
    :cond_5
    const-string v3, "algorithm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleAlgorithm(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 104
    :cond_6
    const-string v3, "cipher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleCipher(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 106
    :cond_7
    const-string v3, "stale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleStale(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 111
    :cond_8
    const/4 v0, -0x1

    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-ne v0, v1, :cond_9

    .line 112
    const/high16 v0, 0x1

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    .line 114
    :cond_9
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    if-nez v0, :cond_b

    .line 115
    iput v4, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    .line 127
    :cond_a
    return-void

    .line 116
    :cond_b
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v4, :cond_c

    .line 117
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Only qop-auth is supported by client"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_c
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_d

    .line 120
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Invalid cipher options"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_d
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 122
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Missing nonce directive"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_e
    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    if-eqz v0, :cond_f

    .line 124
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Unexpected stale flag"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_f
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 126
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Missing algorithm directive"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherOptions()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    return v0
.end method

.method public getMaxBuf()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    return v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    return v0
.end method

.method public getRealms()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStaleFlag()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    return v0
.end method

.method handleAlgorithm(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many algorithm directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    .line 254
    const-string v0, "md5-sess"

    iget-object v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid algorithm directive value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    return-void
.end method

.method handleCharset(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many charset directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Invalid character encoding directive"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    return-void
.end method

.method handleCipher(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 277
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many cipher directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    new-instance v0, Lcom/novell/sasl/client/TokenParser;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novell/sasl/client/TokenParser;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    .line 282
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    .line 283
    :goto_0
    if-eqz v1, :cond_6

    .line 286
    const-string v2, "3des"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    .line 284
    :goto_1
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_1
    const-string v2, "des"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 290
    :cond_2
    const-string v2, "rc4-40"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 292
    :cond_3
    const-string v2, "rc4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 294
    :cond_4
    const-string v2, "rc4-56"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 297
    :cond_5
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 300
    :cond_6
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    if-nez v0, :cond_7

    .line 301
    const/16 v0, 0x20

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    .line 302
    :cond_7
    return-void
.end method

.method handleMaxbuf(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, -0x1

    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-eq v0, v1, :cond_0

    .line 206
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many maxBuf directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    .line 210
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-nez v0, :cond_1

    .line 211
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Max buf value must be greater than zero."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    return-void
.end method

.method handleNonce(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many nonce values."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    .line 144
    return-void
.end method

.method handleQop(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many qop directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    new-instance v0, Lcom/novell/sasl/client/TokenParser;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novell/sasl/client/TokenParser;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_0
    if-eqz v1, :cond_4

    .line 183
    const-string v2, "auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    .line 181
    :goto_1
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_1
    const-string v2, "auth-int"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1

    .line 187
    :cond_2
    const-string v2, "auth-conf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1

    .line 190
    :cond_3
    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1

    .line 192
    :cond_4
    return-void
.end method

.method handleRealm(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method handleStale(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Too many stale directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    const-string v0, "true"

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    .line 323
    return-void

    .line 321
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stale directive value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
