.class public Lcom/logitech/harmonylink/menu/MenuForKa1x;
.super Ljava/lang/Object;
.source "MenuForKa1x.java"

# interfaces
.implements Lcom/logitech/harmonylink/menu/IMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuOptions()I
    .locals 1

    .prologue
    .line 23
    const/high16 v0, 0x7f0b

    return v0
.end method

.method public getMenuVisiblity()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f07017b

    return v0
.end method

.method public menuAction(Lcom/logitech/harmonylink/harmony/Dom;Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;I)Z
    .locals 6
    .parameter "dom"
    .parameter "context"
    .parameter "mApplication"
    .parameter "menuItem"

    .prologue
    const/high16 v5, 0x400

    const/4 v4, 0x1

    .line 33
    invoke-virtual {p3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v1

    .line 34
    .local v1, init:Lcom/logitech/harmonylink/RemoteControlInitializer;
    packed-switch p4, :pswitch_data_0

    .line 46
    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 36
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "home"

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, deviceIntent:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 39
    goto :goto_0

    .line 41
    .end local v0           #deviceIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "settings"

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v2, settingsIntent:Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p2, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 44
    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x7f07017a
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
