.class public Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;
.super Landroid/app/ListActivity;
.source "VoiceCommandsListActivity.java"


# instance fields
.field cmdMap:Lcom/logitech/harmonylink/context/Commandmap;

.field private mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mAvailableCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;"
        }
    .end annotation
.end field

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mListCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private SendCommand(ILandroid/view/View;)V
    .locals 3
    .parameter "position"
    .parameter "v"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mAvailableCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Command;

    .line 135
    .local v0, cmd:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->startBrowser()Z

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    goto :goto_0
.end method

.method private matchText()Z
    .locals 9

    .prologue
    .line 82
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Devices;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/harmony/Device;

    .line 83
    .local v3, device:Lcom/logitech/harmonylink/harmony/Device;
    if-nez v3, :cond_4

    .line 107
    .end local v3           #device:Lcom/logitech/harmonylink/harmony/Device;
    :cond_1
    sget-object v6, Lcom/logitech/harmonylink/harmony/Command;->cmdMapWithName:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mVoiceText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/harmony/Command;

    .line 110
    .local v5, searchcmd:Lcom/logitech/harmonylink/harmony/Command;
    if-eqz v5, :cond_2

    .line 112
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mAvailableCommands:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mListCommands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mVoiceText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "browser"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    new-instance v1, Lcom/logitech/harmonylink/harmony/Command;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mVoiceText:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/logitech/harmonylink/harmony/Command;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, browserCmnd:Lcom/logitech/harmonylink/harmony/Command;
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mAvailableCommands:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mListCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v1           #browserCmnd:Lcom/logitech/harmonylink/harmony/Command;
    :cond_3
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mAvailableCommands:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 124
    const/4 v6, 0x0

    .line 126
    :goto_1
    return v6

    .line 87
    .end local v5           #searchcmd:Lcom/logitech/harmonylink/harmony/Command;
    .restart local v3       #device:Lcom/logitech/harmonylink/harmony/Device;
    :cond_4
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->cmdMap:Lcom/logitech/harmonylink/context/Commandmap;

    iget-object v7, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mVoiceText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/context/Commandmap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, DictionryString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v3, v0}, Lcom/logitech/harmonylink/harmony/Device;->getCommand(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v2

    .line 92
    .local v2, cmd:Lcom/logitech/harmonylink/harmony/Command;
    if-eqz v2, :cond_0

    .line 93
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mAvailableCommands:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Device;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 96
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mListCommands:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Device;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 99
    :cond_5
    iget-object v6, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mListCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 126
    .end local v0           #DictionryString:Ljava/lang/String;
    .end local v2           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    .end local v3           #device:Lcom/logitech/harmonylink/harmony/Device;
    .restart local v5       #searchcmd:Lcom/logitech/harmonylink/harmony/Command;
    :cond_6
    const/4 v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f030059

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->setContentView(I)V

    .line 50
    new-instance v1, Lcom/logitech/harmonylink/context/Commandmap;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/Commandmap;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->cmdMap:Lcom/logitech/harmonylink/context/Commandmap;

    .line 51
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "results"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mVoiceText:Ljava/lang/String;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 58
    iget-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mAvailableCommands:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mListCommands:Ljava/util/ArrayList;

    .line 63
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->matchText()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const v1, 0x7f0600bd

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mVoiceText:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->finish()V

    .line 71
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->mListCommands:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parentView"
    .parameter "childView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 148
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 149
    invoke-direct {p0, p3, p2}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->SendCommand(ILandroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;->finish()V

    .line 151
    return-void
.end method
