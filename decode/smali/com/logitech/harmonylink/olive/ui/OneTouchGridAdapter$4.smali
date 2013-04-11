.class Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

.field final synthetic val$img:Landroid/graphics/Bitmap;

.field final synthetic val$iview:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;->val$iview:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;->val$img:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;->val$iview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;->val$img:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    return-void
.end method
