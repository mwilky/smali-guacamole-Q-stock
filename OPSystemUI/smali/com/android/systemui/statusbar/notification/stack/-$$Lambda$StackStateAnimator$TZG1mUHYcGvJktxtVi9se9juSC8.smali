.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$StackStateAnimator$TZG1mUHYcGvJktxtVi9se9juSC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$StackStateAnimator$TZG1mUHYcGvJktxtVi9se9juSC8;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$StackStateAnimator$TZG1mUHYcGvJktxtVi9se9juSC8;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->lambda$processAnimationEvents$0(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method
