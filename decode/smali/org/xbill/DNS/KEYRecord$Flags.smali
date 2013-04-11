.class public Lorg/xbill/DNS/KEYRecord$Flags;
.super Ljava/lang/Object;
.source "KEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flags"
.end annotation


# static fields
.field public static final EXTEND:I = 0x1000

.field public static final FLAG10:I = 0x20

.field public static final FLAG11:I = 0x10

.field public static final FLAG2:I = 0x2000

.field public static final FLAG4:I = 0x800

.field public static final FLAG5:I = 0x400

.field public static final FLAG8:I = 0x80

.field public static final FLAG9:I = 0x40

.field public static final HOST:I = 0x200

.field public static final NOAUTH:I = 0x8000

.field public static final NOCONF:I = 0x4000

.field public static final NOKEY:I = 0xc000

.field public static final NTYP3:I = 0x300

.field public static final OWNER_MASK:I = 0x300

.field public static final SIG0:I = 0x0

.field public static final SIG1:I = 0x1

.field public static final SIG10:I = 0xa

.field public static final SIG11:I = 0xb

.field public static final SIG12:I = 0xc

.field public static final SIG13:I = 0xd

.field public static final SIG14:I = 0xe

.field public static final SIG15:I = 0xf

.field public static final SIG2:I = 0x2

.field public static final SIG3:I = 0x3

.field public static final SIG4:I = 0x4

.field public static final SIG5:I = 0x5

.field public static final SIG6:I = 0x6

.field public static final SIG7:I = 0x7

.field public static final SIG8:I = 0x8

.field public static final SIG9:I = 0x9

.field public static final USER:I = 0x0

.field public static final USE_MASK:I = 0xc000

.field public static final ZONE:I = 0x100

.field private static flags:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 186
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "KEY flags"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 190
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 191
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 193
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x4000

    const-string v2, "NOCONF"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 194
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const v1, 0x8000

    const-string v2, "NOAUTH"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 195
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xc000

    const-string v2, "NOKEY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 196
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x2000

    const-string v2, "FLAG2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 197
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1000

    const-string v2, "EXTEND"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 198
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x800

    const-string v2, "FLAG4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 199
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x400

    const-string v2, "FLAG5"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 200
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "USER"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 201
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x100

    const-string v2, "ZONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 202
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x200

    const-string v2, "HOST"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 203
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x300

    const-string v2, "NTYP3"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 204
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x80

    const-string v2, "FLAG8"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 205
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x40

    const-string v2, "FLAG9"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 206
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x20

    const-string v2, "FLAG10"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 207
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x10

    const-string v2, "FLAG11"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 208
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG0"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 209
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    const-string v2, "SIG1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 210
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG2"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 211
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "SIG3"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 212
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "SIG4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 213
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "SIG5"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 214
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x6

    const-string v2, "SIG6"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 215
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x7

    const-string v2, "SIG7"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 216
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "SIG8"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 217
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x9

    const-string v2, "SIG9"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 218
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xa

    const-string v2, "SIG10"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 219
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xb

    const-string v2, "SIG11"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 220
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xc

    const-string v2, "SIG12"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 221
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xd

    const-string v2, "SIG13"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 222
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xe

    const-string v2, "SIG14"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 223
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf

    const-string v2, "SIG15"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 224
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static value(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 236
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 237
    if-ltz v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 252
    :goto_0
    return v0

    :cond_0
    move v0, v4

    .line 240
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x0

    .line 245
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    sget-object v2, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v2

    .line 247
    if-gez v2, :cond_1

    move v0, v4

    .line 248
    goto :goto_0

    .line 250
    :cond_1
    or-int/2addr v1, v2

    .line 251
    goto :goto_1

    :cond_2
    move v0, v1

    .line 252
    goto :goto_0
.end method
