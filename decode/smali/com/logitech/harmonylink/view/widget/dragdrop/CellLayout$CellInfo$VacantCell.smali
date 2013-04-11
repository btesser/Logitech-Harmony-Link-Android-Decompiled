.class final Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VacantCell"
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0x64

.field private static sAcquiredCount:I

.field private static final sLock:Ljava/lang/Object;

.field private static sRoot:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;


# instance fields
.field cellX:I

.field cellY:I

.field private next:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

.field spanX:I

.field spanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    .line 1010
    const/4 v0, 0x0

    sput v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    .locals 4

    .prologue
    .line 1016
    sget-object v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1017
    :try_start_0
    sget-object v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    if-nez v2, :cond_0

    .line 1018
    new-instance v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    invoke-direct {v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;-><init>()V

    monitor-exit v1

    move-object v1, v2

    .line 1025
    :goto_0
    return-object v1

    .line 1021
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    .line 1022
    .local v0, info:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    iget-object v2, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->next:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    sput-object v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    .line 1023
    sget v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    .line 1025
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 1026
    .end local v0           #info:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method release()V
    .locals 3

    .prologue
    .line 1030
    sget-object v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    sget v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 1032
    sget v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    .line 1033
    sget-object v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->next:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    .line 1034
    sput-object p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    .line 1036
    :cond_0
    monitor-exit v0

    .line 1037
    return-void

    .line 1036
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VacantCell[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
