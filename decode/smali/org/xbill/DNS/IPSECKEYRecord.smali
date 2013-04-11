.class public Lorg/xbill/DNS/IPSECKEYRecord;
.super Lorg/xbill/DNS/Record;
.source "IPSECKEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/IPSECKEYRecord$Gateway;,
        Lorg/xbill/DNS/IPSECKEYRecord$Algorithm;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2a555fd7ba8ed6b7L


# instance fields
.field private algorithmType:I

.field private gateway:Ljava/lang/Object;

.field private gatewayType:I

.field private key:[B

.field private precedence:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIILjava/lang/Object;[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const/16 v2, 0x2d

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 62
    const-string v0, "precedence"

    invoke-static {v0, p5}, Lorg/xbill/DNS/IPSECKEYRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    .line 63
    const-string v0, "gatewayType"

    invoke-static {v0, p6}, Lorg/xbill/DNS/IPSECKEYRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    .line 64
    const-string v0, "algorithmType"

    invoke-static {v0, p7}, Lorg/xbill/DNS/IPSECKEYRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    .line 65
    packed-switch p6, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\"gatewayType\" must be between 0 and 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    .line 95
    :goto_0
    iput-object p9, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    .line 96
    return-void

    .line 70
    :pswitch_1
    instance-of v0, p8, Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\"gateway\" must be an IPv4 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p8, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 77
    :pswitch_2
    instance-of v0, p8, Ljava/net/Inet6Address;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\"gateway\" must be an IPv6 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput-object p8, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :pswitch_3
    instance-of v0, p8, Lorg/xbill/DNS/Name;

    if-nez v0, :cond_2

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\"gateway\" must be a DNS name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    const-string v0, "gateway"

    check-cast p8, Lorg/xbill/DNS/Name;

    invoke-static {v0, p8}, Lorg/xbill/DNS/IPSECKEYRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    return v0
.end method

.method public getGateway()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    return-object v0
.end method

.method public getGatewayType()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    return v0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/xbill/DNS/IPSECKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/IPSECKEYRecord;-><init>()V

    return-object v0
.end method

.method public getPrecedence()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    .line 126
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    .line 127
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    .line 128
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid gateway type"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid gateway format"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    .line 147
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    .line 148
    return-void

    .line 136
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 139
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    .line 101
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    .line 102
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    .line 103
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid gateway type"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    .line 119
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    .line 121
    :cond_0
    return-void

    .line 108
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 111
    :pswitch_2
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 114
    :pswitch_3
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    if-eqz v0, :cond_0

    .line 173
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :pswitch_0
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 166
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 212
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 213
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 214
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 229
    :cond_0
    return-void

    .line 219
    :pswitch_1
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 220
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/Name;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
