.class Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;
.super Ljava/lang/Object;
.source "SmartReplyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedOnClickListener"
.end annotation


# instance fields
.field private final mActualListener:Landroid/view/View$OnClickListener;

.field private final mInitDelayMs:J

.field private final mInitTimeMs:J


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->mActualListener:Landroid/view/View$OnClickListener;

    iput-wide p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->mInitDelayMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->mInitTimeMs:J

    return-void
.end method

.method private hasFinishedInitialization()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->mInitTimeMs:J

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->mInitDelayMs:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->hasFinishedInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->mActualListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Accidental Smart Suggestion click registered, delay: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;->mInitDelayMs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartReplyView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
