.class Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;
.super Ljava/lang/Object;
.source "LongshotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveTracker"
.end annotation


# instance fields
.field endTime:J

.field private isStart:Z

.field mEndPoint:Landroid/graphics/Point;

.field mStartPoint:Landroid/graphics/Point;

.field moveDistance:I

.field startTime:J

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->mStartPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->mEndPoint:Landroid/graphics/Point;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->startTime:J

    iput-wide v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->endTime:J

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    return-void
.end method


# virtual methods
.method public getMove()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public isStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    return v0
.end method

.method moveTracker()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    return-void
.end method

.method public start(FF)V
    .locals 2

    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    int-to-float v0, v0

    sub-float v1, p2, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->startTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart:Z

    return-void
.end method

.method public updateMovePoint(FF)V
    .locals 2

    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    int-to-float v0, v0

    sub-float v1, p2, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->moveDistance:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->endTime:J

    return-void
.end method
