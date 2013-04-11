.class public Lcom/logitech/harmonylink/harmony/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final INTENT_EXTRA_NAME:Ljava/lang/String; = "com.logitech.harmonylink.harmony.device"


# instance fields
.field private mCommands:Lcom/logitech/harmonylink/harmony/Commands;

.field private mDeviceType:Ljava/lang/String;

.field private mDeviceTypeDisplayName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mManufacturer:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getIconResourceIDbyDeviceType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0200c5

    .line 97
    const-string v0, "TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Television"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    const v0, 0x7f0200da

    .line 108
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string v0, "STB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const v0, 0x7f0200c6

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "AVR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "DvdCdGame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    const v0, 0x7f0200d2

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "DvdrVcr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "DvdCd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    :cond_5
    const v0, 0x7f0200d0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public static getLabelResourceByDeviceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "defaultValue"

    .prologue
    .line 129
    if-eqz p1, :cond_1

    const-string v0, "TV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AVR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    invoke-static {p1}, Lcom/logitech/harmonylink/harmony/Device;->getLabelResourceIDbyDeviceType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static getLabelResourceIDbyDeviceType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f06001a

    .line 116
    const-string v0, "TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Television"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    const v0, 0x7f06001d

    .line 123
    :goto_0
    return v0

    .line 118
    :cond_1
    const-string v0, "STB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const v0, 0x7f06001e

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "AVR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 121
    goto :goto_0

    :cond_3
    move v0, v1

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public getCommand(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 2
    .parameter "commandName"

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Device;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Commands;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Device;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/harmony/Commands;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Device;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/harmony/Commands;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/Command;

    move-object v1, p0

    .line 77
    :goto_1
    return-object v1

    .line 73
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCommands()Lcom/logitech/harmonylink/harmony/Commands;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Device;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Device;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTypeDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Device;->mDeviceTypeDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Device;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Device;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Device;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Device;->mName:Ljava/lang/String;

    return-object v0
.end method

.method initCommands(Lcom/logitech/harmonylink/harmony/Commands;)V
    .locals 0
    .parameter "commands"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 82
    return-void
.end method

.method public setCommands(Lcom/logitech/harmonylink/harmony/Commands;)V
    .locals 0
    .parameter "commands"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 70
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceType"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mDeviceType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDeviceTypeDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceTypeDisplayName"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mDeviceTypeDisplayName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mLabel:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .parameter "manufacturer"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mManufacturer:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Device;->mName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Device;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Device;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
