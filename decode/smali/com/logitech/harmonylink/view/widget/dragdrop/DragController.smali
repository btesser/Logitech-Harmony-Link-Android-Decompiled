.class public interface abstract Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;
    }
.end annotation


# static fields
.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I


# virtual methods
.method public abstract removeDragListener(Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;)V
.end method

.method public abstract setDragListener(Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;)V
.end method

.method public abstract startDrag(Landroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;Ljava/lang/Object;I)V
.end method
