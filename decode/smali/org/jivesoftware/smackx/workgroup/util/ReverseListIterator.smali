.class Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;
.super Ljava/lang/Object;
.source "ModelUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private _i:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Ljava/util/ListIterator;)V
    .locals 1
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    .line 297
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 311
    return-void
.end method
