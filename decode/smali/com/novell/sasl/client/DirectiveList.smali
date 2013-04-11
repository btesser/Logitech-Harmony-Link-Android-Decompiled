.class Lcom/novell/sasl/client/DirectiveList;
.super Ljava/lang/Object;
.source "DirectiveList.java"


# static fields
.field private static final STATE_LOOKING_FOR_COMMA:I = 0x6

.field private static final STATE_LOOKING_FOR_DIRECTIVE:I = 0x2

.field private static final STATE_LOOKING_FOR_EQUALS:I = 0x4

.field private static final STATE_LOOKING_FOR_FIRST_DIRECTIVE:I = 0x1

.field private static final STATE_LOOKING_FOR_VALUE:I = 0x5

.field private static final STATE_NO_UTF8_SUPPORT:I = 0x9

.field private static final STATE_SCANNING_NAME:I = 0x3

.field private static final STATE_SCANNING_QUOTED_STRING_VALUE:I = 0x7

.field private static final STATE_SCANNING_TOKEN_VALUE:I = 0x8


# instance fields
.field private m_curName:Ljava/lang/String;

.field private m_curPos:I

.field private m_directiveList:Ljava/util/ArrayList;

.field private m_directives:Ljava/lang/String;

.field private m_errorPos:I

.field private m_scanStart:I

.field private m_state:I


# direct methods
.method constructor <init>([B)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_directiveList:Ljava/util/ArrayList;

    .line 54
    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 62
    const/16 v0, 0x9

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_0
.end method


# virtual methods
.method addDirective(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 325
    if-nez p2, :cond_0

    .line 327
    iget-object v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    iget v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 346
    const/4 v1, 0x1

    .line 349
    :goto_1
    iget-object v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_directiveList:Ljava/util/ArrayList;

    new-instance v3, Lcom/novell/sasl/client/ParsedDirective;

    invoke-direct {v3, p1, v0, v1}, Lcom/novell/sasl/client/ParsedDirective;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 332
    const/4 v1, 0x0

    .line 333
    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 334
    :goto_2
    iget v3, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    if-ge v2, v3, :cond_2

    .line 336
    const/16 v3, 0x5c

    iget-object v4, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    .line 337
    add-int/lit8 v2, v2, 0x1

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 342
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    move-object v0, v1

    goto :goto_0

    .line 348
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method getIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_directiveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method isValidTokenChar(C)Z
    .locals 1
    .parameter

    .prologue
    .line 274
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

    .line 284
    :cond_3
    const/4 v0, 0x0

    .line 286
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
    .line 299
    const/16 v0, 0x9

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa

    if-eq v0, p1, :cond_0

    const/16 v0, 0xd

    if-eq v0, p1, :cond_0

    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseDirectives()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x22

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 79
    .line 81
    const-string v0, "<no name>"

    .line 83
    iget v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 84
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "No UTF-8 support on platform"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v5

    move v2, v5

    .line 88
    :goto_0
    iget v3, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iget-object v4, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 90
    iget-object v3, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v4, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 91
    iget v4, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    packed-switch v4, :pswitch_data_0

    .line 217
    :cond_1
    :goto_1
    if-eqz v5, :cond_e

    .line 224
    :cond_2
    if-nez v5, :cond_3

    .line 227
    iget v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    packed-switch v1, :pswitch_data_1

    .line 250
    :cond_3
    :goto_2
    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 102
    const/4 v2, 0x3

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_1

    .line 106
    :cond_4
    iget v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 107
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Invalid name character"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    iget v4, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    const/4 v2, 0x4

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_1

    .line 121
    :cond_5
    const/16 v0, 0x3d

    if-ne v0, v3, :cond_6

    .line 123
    iget-object v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    iget v4, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 124
    iput v7, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_1

    .line 128
    :cond_6
    iget v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 129
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Invalid name character"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    const/16 v2, 0x3d

    if-ne v2, v3, :cond_7

    .line 140
    iput v7, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_1

    .line 144
    :cond_7
    iget v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 145
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Expected equals sign \'=\'."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    if-ne v9, v3, :cond_8

    .line 156
    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 157
    const/4 v2, 0x7

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_1

    .line 159
    :cond_8
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 161
    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 162
    const/16 v2, 0x8

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_1

    .line 166
    :cond_9
    iget v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 167
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Unexpected character"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 178
    invoke-virtual {p0, v0, v5}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    .line 179
    iput v8, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_1

    .line 181
    :cond_a
    const/16 v2, 0x2c

    if-ne v2, v3, :cond_b

    .line 183
    invoke-virtual {p0, v0, v5}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    .line 184
    iput v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_1

    .line 188
    :cond_b
    iget v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 189
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Invalid value character"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_6
    const/16 v4, 0x5c

    if-ne v4, v3, :cond_c

    .line 195
    const/4 v1, 0x1

    .line 196
    :cond_c
    if-ne v9, v3, :cond_1

    const/16 v4, 0x5c

    if-eq v4, v2, :cond_1

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    .line 201
    iput v8, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    move v1, v5

    goto/16 :goto_1

    .line 206
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const/16 v2, 0x2c

    if-ne v3, v2, :cond_d

    .line 209
    iput v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_1

    .line 212
    :cond_d
    iget v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 213
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Expected a comma."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_e
    iget v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    move v2, v3

    goto/16 :goto_0

    .line 230
    :pswitch_8
    invoke-virtual {p0, v0, v5}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 238
    :pswitch_9
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Trailing comma."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_a
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Missing value."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :pswitch_b
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Parse error: Missing closing quote."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 227
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
