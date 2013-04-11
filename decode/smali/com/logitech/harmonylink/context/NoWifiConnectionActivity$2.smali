.class Lcom/logitech/harmonylink/context/NoWifiConnectionActivity$2;
.super Ljava/lang/Object;
.source "NoWifiConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity$2;->this$0:Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity$2;->this$0:Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
