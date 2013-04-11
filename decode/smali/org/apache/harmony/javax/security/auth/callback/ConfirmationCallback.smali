.class public Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;
.super Ljava/lang/Object;
.source "ConfirmationCallback.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANCEL:I = 0x2

.field public static final ERROR:I = 0x2

.field public static final INFORMATION:I = 0x0

.field public static final NO:I = 0x1

.field public static final OK:I = 0x3

.field public static final OK_CANCEL_OPTION:I = 0x2

.field public static final UNSPECIFIED_OPTION:I = -0x1

.field public static final WARNING:I = 0x1

.field public static final YES:I = 0x0

.field public static final YES_NO_CANCEL_OPTION:I = 0x1

.field public static final YES_NO_OPTION:I = 0x0

.field private static final serialVersionUID:J = -0x7e3a4355ee99e2d8L


# instance fields
.field private defaultOption:I

.field private messageType:I

.field private optionType:I

.field private options:[Ljava/lang/String;

.field private prompt:Ljava/lang/String;

.field private selection:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 64
    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.18"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    if-eqz p3, :cond_2

    if-eq p3, v2, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_1
    if-eqz p3, :cond_2

    if-eq p3, v2, :cond_2

    if-eq p3, v1, :cond_2

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_2
    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_2

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 88
    iput p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 89
    iput p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 90
    return-void

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(I[Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 94
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_6

    .line 102
    aget-object v1, p2, v0

    if-eqz v1, :cond_4

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 103
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_6
    if-ltz p3, :cond_7

    array-length v0, p2

    if-lt p3, v0, :cond_8

    .line 107
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_8
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    .line 112
    iput p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 113
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    if-gt p2, v1, :cond_2

    if-gez p2, :cond_3

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    packed-switch p3, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.18"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    if-eqz p4, :cond_4

    if-eq p4, v2, :cond_4

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_1
    if-eqz p4, :cond_4

    if-eq p4, v2, :cond_4

    if-eq p4, v1, :cond_4

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_2
    const/4 v0, 0x3

    if-eq p4, v0, :cond_4

    if-eq p4, v1, :cond_4

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_4
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->prompt:Ljava/lang/String;

    .line 147
    iput p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 148
    iput p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 149
    iput p4, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 150
    return-void

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    if-gez p2, :cond_3

    .line 160
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_3
    if-eqz p3, :cond_4

    array-length v0, p3

    if-nez v0, :cond_5

    .line 164
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_5
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_8

    .line 167
    aget-object v1, p3, v0

    if-eqz v1, :cond_6

    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 168
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_8
    if-ltz p4, :cond_9

    array-length v0, p3

    if-lt p4, v0, :cond_a

    .line 172
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.17"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_a
    iput-object p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    .line 177
    iput p4, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 178
    iput p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 179
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->prompt:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method public getDefaultOption()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    return v0
.end method

.method public getOptionType()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    return v0
.end method

.method public getOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->selection:I

    return v0
.end method

.method public setSelectedIndex(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 207
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 208
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 209
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->selection:I

    .line 233
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "auth.1B"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :cond_2
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->selection:I

    goto :goto_0

    .line 216
    :pswitch_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.19"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.19"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_2

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.19"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
