.class public Lorg/xbill/DNS/SetResponse;
.super Ljava/lang/Object;
.source "SetResponse.java"


# static fields
.field static final CNAME:I = 0x4

.field static final DELEGATION:I = 0x3

.field static final DNAME:I = 0x5

.field static final NXDOMAIN:I = 0x1

.field static final NXRRSET:I = 0x2

.field static final SUCCESSFUL:I = 0x6

.field static final UNKNOWN:I

.field private static final nxdomain:Lorg/xbill/DNS/SetResponse;

.field private static final nxrrset:Lorg/xbill/DNS/SetResponse;

.field private static final unknown:Lorg/xbill/DNS/SetResponse;


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->unknown:Lorg/xbill/DNS/SetResponse;

    .line 59
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->nxdomain:Lorg/xbill/DNS/SetResponse;

    .line 60
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->nxrrset:Lorg/xbill/DNS/SetResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iput p1, p0, Lorg/xbill/DNS/SetResponse;->type:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method constructor <init>(ILorg/xbill/DNS/RRset;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput p1, p0, Lorg/xbill/DNS/SetResponse;->type:I

    .line 72
    iput-object p2, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method static ofType(I)Lorg/xbill/DNS/SetResponse;
    .locals 2
    .parameter

    .prologue
    .line 84
    packed-switch p0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    sget-object v0, Lorg/xbill/DNS/SetResponse;->unknown:Lorg/xbill/DNS/SetResponse;

    .line 98
    :goto_0
    return-object v0

    .line 88
    :pswitch_1
    sget-object v0, Lorg/xbill/DNS/SetResponse;->nxdomain:Lorg/xbill/DNS/SetResponse;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lorg/xbill/DNS/SetResponse;->nxrrset:Lorg/xbill/DNS/SetResponse;

    goto :goto_0

    .line 95
    :pswitch_3
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v0}, Lorg/xbill/DNS/SetResponse;-><init>()V

    .line 96
    iput p0, v0, Lorg/xbill/DNS/SetResponse;->type:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    .line 108
    :cond_0
    iget-object p0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 109
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public answers()[Lorg/xbill/DNS/RRset;
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object p0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 160
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/xbill/DNS/RRset;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/xbill/DNS/RRset;

    check-cast p0, [Lorg/xbill/DNS/RRset;

    move-object v0, p0

    goto :goto_0
.end method

.method public getCNAME()Lorg/xbill/DNS/CNAMERecord;
    .locals 0

    .prologue
    .line 168
    iget-object p0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast p0, Lorg/xbill/DNS/RRset;

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/CNAMERecord;

    return-object p0
.end method

.method public getDNAME()Lorg/xbill/DNS/DNAMERecord;
    .locals 0

    .prologue
    .line 176
    iget-object p0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast p0, Lorg/xbill/DNS/RRset;

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/DNAMERecord;

    return-object p0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 0

    .prologue
    .line 184
    iget-object p0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast p0, Lorg/xbill/DNS/RRset;

    return-object p0
.end method

.method public isCNAME()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDNAME()Z
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelegation()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNXDOMAIN()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNXRRSET()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 191
    :pswitch_0
    const-string v0, "unknown"

    .line 197
    :goto_0
    return-object v0

    .line 192
    :pswitch_1
    const-string v0, "NXDOMAIN"

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v0, "NXRRSET"

    goto :goto_0

    .line 194
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_6
    const-string v0, "successful"

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
