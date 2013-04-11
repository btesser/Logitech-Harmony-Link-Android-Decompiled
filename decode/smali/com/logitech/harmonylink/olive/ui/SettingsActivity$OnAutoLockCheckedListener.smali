.class public Lcom/logitech/harmonylink/olive/ui/SettingsActivity$OnAutoLockCheckedListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnAutoLockCheckedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$OnAutoLockCheckedListener;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$OnAutoLockCheckedListener;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    const-string v1, "autolockstate"

    invoke-virtual {v0, v1, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$200()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0, v3}, Lcom/logitech/connect/ConnectClient;->setAutoLockState(Z)V

    .line 144
    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$300()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v0, v0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$400()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v0, v0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$500()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v0, v0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$600()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v0, v0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 149
    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$700()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0, v2}, Lcom/logitech/connect/ConnectClient;->setAutoLockState(Z)V

    .line 150
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$OnAutoLockCheckedListener;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    const-string v1, "autolockstate"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
