.class final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttentionCheckCache"
.end annotation


# instance fields
.field private final mLastComputed:J

.field private final mResult:I

.field private final mTimestamp:J


# direct methods
.method constructor <init>(JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    iput-wide p4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I
    .locals 1

    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-wide v0
.end method
