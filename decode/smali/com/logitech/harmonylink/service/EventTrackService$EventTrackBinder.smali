.class public Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;
.super Landroid/os/Binder;
.source "EventTrackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/service/EventTrackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventTrackBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/service/EventTrackService;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/service/EventTrackService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;->this$0:Lcom/logitech/harmonylink/service/EventTrackService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/logitech/harmonylink/service/EventTrackService;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;->this$0:Lcom/logitech/harmonylink/service/EventTrackService;

    return-object v0
.end method
