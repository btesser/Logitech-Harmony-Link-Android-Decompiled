.class public final Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    }
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field cellX:I

.field cellY:I

.field final current:Landroid/graphics/Rect;

.field maxVacantSpanX:I

.field maxVacantSpanXSpanY:I

.field maxVacantSpanY:I

.field maxVacantSpanYSpanX:I

.field screen:I

.field spanX:I

.field spanY:I

.field final vacantCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1059
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 979
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIIIIZ)V
    .locals 2
    .parameter "_cell"
    .parameter "_cellX"
    .parameter "_cellY"
    .parameter "_spanX"
    .parameter "_spanY"
    .parameter "_screen"
    .parameter "_valid"

    .prologue
    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1059
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 983
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 984
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    .line 985
    iput p3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    .line 986
    iput p4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanX:I

    .line 987
    iput p5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanY:I

    .line 988
    iput p6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->screen:I

    .line 989
    iput-boolean p7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    .line 990
    return-void
.end method


# virtual methods
.method public clearVacantCells()V
    .locals 3

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1063
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1065
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1068
    return-void
.end method

.method public findCellForSpan([III)Z
    .locals 1
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1136
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v0

    return v0
.end method

.method public findCellForSpan([IIIZ)Z
    .locals 8
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "clear"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1140
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1141
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1143
    .local v1, count:I
    const/4 v2, 0x0

    .line 1145
    .local v2, found:Z
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanX:I

    if-lt v5, p2, :cond_0

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanY:I

    if-lt v5, p3, :cond_0

    .line 1146
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    aput v5, p1, v6

    .line 1147
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    aput v5, p1, v7

    .line 1148
    const/4 v2, 0x1

    .line 1152
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1153
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    .line 1154
    .local v0, cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    if-ne v5, p2, :cond_4

    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    if-ne v5, p3, :cond_4

    .line 1155
    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1156
    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1157
    const/4 v2, 0x1

    .line 1163
    .end local v0           #cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 1164
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    .line 1165
    .restart local v0       #cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    if-lt v5, p2, :cond_5

    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    if-lt v5, p3, :cond_5

    .line 1166
    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1167
    iget v5, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1168
    const/4 v2, 0x1

    .line 1173
    .end local v0           #cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->clearVacantCells()V

    .line 1175
    :cond_3
    return v2

    .line 1152
    .restart local v0       #cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1163
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method findVacantCellsFromOccupied([ZII)V
    .locals 8
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/high16 v1, -0x8000

    .line 1105
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    if-gez v0, :cond_1

    .line 1106
    :cond_0
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 1107
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 1108
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->clearVacantCells()V

    .line 1119
    :goto_0
    return-void

    .line 1112
    :cond_1
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 1113
    .local v5, unflattened:[[Z
    const/4 v7, 0x0

    .local v7, y:I
    :goto_1
    if-ge v7, p3, :cond_3

    .line 1114
    const/4 v6, 0x0

    .local v6, x:I
    :goto_2
    if-ge v6, p2, :cond_2

    .line 1115
    aget-object v0, v5, v6

    mul-int v1, v7, p2

    add-int/2addr v1, v6

    aget-boolean v1, p1, v1

    aput-boolean v1, v0, v7

    .line 1114
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1113
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1118
    .end local v6           #x:I
    :cond_3
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    #calls: Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findIntersectingVacantCells(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;IIII[[Z)V
    invoke-static/range {v0 .. v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->access$000(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;IIII[[Z)V

    goto :goto_0
.end method

.method public getCell()Landroid/view/View;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cell:Landroid/view/View;

    return-object v0
.end method

.method public getCellX()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    return v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->screen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanY:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    return v0
.end method

.method public setScreen(I)I
    .locals 0
    .parameter "_screen"

    .prologue
    .line 1075
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->screen:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
