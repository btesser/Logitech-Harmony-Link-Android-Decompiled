.class Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    iput-object p2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/logitech/harmonylink/util/BitmapUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    return-void
.end method
