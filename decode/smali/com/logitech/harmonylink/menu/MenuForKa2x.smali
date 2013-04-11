.class public Lcom/logitech/harmonylink/menu/MenuForKa2x;
.super Ljava/lang/Object;
.source "MenuForKa2x.java"

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
    .line 26
    const v0, 0x7f070178

    return v0
.end method

.method public menuAction(Lcom/logitech/harmonylink/harmony/Dom;Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;I)Z
    .locals 8
    .parameter "dom"
    .parameter "context"
    .parameter "mApplication"
    .parameter "menuItem"

    .prologue
    const/high16 v7, 0x2

    const/4 v6, 0x1

    .line 30
    invoke-virtual {p3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v2

    .line 31
    .local v2, init:Lcom/logitech/harmonylink/RemoteControlInitializer;
    sparse-switch p4, :sswitch_data_0

    .line 56
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 33
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "home"

    invoke-virtual {v2, v5}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v1, i:Landroid/content/Intent;
    const/high16 v5, 0x2400

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 37
    goto :goto_0

    .line 39
    .end local v1           #i:Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {v0, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, controls:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v0           #controls:Landroid/content/Intent;
    :goto_1
    move v5, v6

    .line 49
    goto :goto_0

    .line 44
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;

    invoke-direct {v3, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v3, noControls:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 51
    .end local v3           #noControls:Landroid/content/Intent;
    :sswitch_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "settings"

    invoke-virtual {v2, v5}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 54
    goto :goto_0

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700cb -> :sswitch_0
        0x7f070179 -> :sswitch_1
        0x7f07017a -> :sswitch_2
    .end sparse-switch
.end method
