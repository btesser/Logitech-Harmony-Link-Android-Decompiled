.class Lcom/novell/sasl/client/TokenParser;
.super Ljava/lang/Object;
.source "TokenParser.java"


# static fields
.field private static final STATE_DONE:I = 0x6

.field private static final STATE_LOOKING_FOR_COMMA:I = 0x4

.field private static final STATE_LOOKING_FOR_FIRST_TOKEN:I = 0x1

.field private static final STATE_LOOKING_FOR_TOKEN:I = 0x2

.field private static final STATE_PARSING_ERROR:I = 0x5

.field private static final STATE_SCANNING_TOKEN:I = 0x3


# instance fields
.field private m_curPos:I

.field private m_scanStart:I

.field private m_state:I

.field private m_tokens:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    .line 43
    iput v0, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 45
    return-void
.end method


# virtual methods
.method isValidTokenChar(C)Z
    .locals 1
    .parameter

    .prologue
    .line 172
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_1

    const/16 v0, 0x40

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x5b

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5d

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2c

    if-eq v0, p1, :cond_3

    const/16 v0, 0x25

    if-eq v0, p1, :cond_3

    const/16 v0, 0x28

    if-eq v0, p1, :cond_3

    const/16 v0, 0x29

    if-eq v0, p1, :cond_3

    const/16 v0, 0x7b

    if-eq v0, p1, :cond_3

    const/16 v0, 0x7d

    if-eq v0, p1, :cond_3

    const/16 v0, 0x7f

    if-ne v0, p1, :cond_4

    .line 182
    :cond_3
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWhiteSpace(C)Z
    .locals 1
    .parameter

    .prologue
    .line 198
    const/16 v0, 0x9

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa

    if-eq v0, p1, :cond_0

    const/16 v0, 0xd

    if-eq v0, p1, :cond_0

    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseToken()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x2c

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x5

    .line 59
    .line 62
    iget v0, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    if-ne v0, v5, :cond_7

    move-object v0, v1

    .line 146
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 65
    :goto_1
    iget v1, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    iget-object v2, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    if-nez v0, :cond_6

    .line 67
    iget-object v1, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 68
    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    packed-switch v2, :pswitch_data_0

    .line 125
    :cond_1
    :goto_2
    iget v1, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    goto :goto_1

    .line 72
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/TokenParser;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/TokenParser;->isValidTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget v1, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    iput v1, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    .line 79
    const/4 v1, 0x3

    iput v1, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto :goto_2

    .line 83
    :cond_2
    iput v3, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 84
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token character at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/TokenParser;->isValidTokenChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/TokenParser;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v1, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v1, 0x4

    iput v1, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto :goto_2

    .line 98
    :cond_3
    if-ne v6, v1, :cond_4

    .line 100
    iget-object v0, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v1, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    iput v4, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto :goto_2

    .line 105
    :cond_4
    iput v3, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 106
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token character at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/TokenParser;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    if-ne v1, v6, :cond_5

    .line 115
    iput v4, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto/16 :goto_2

    .line 118
    :cond_5
    iput v3, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 119
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a comma, found \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' at postion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_6
    if-nez v0, :cond_0

    .line 130
    iget v1, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 142
    :pswitch_4
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Trialing comma"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_5
    iget-object v0, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v1, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    iput v5, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
