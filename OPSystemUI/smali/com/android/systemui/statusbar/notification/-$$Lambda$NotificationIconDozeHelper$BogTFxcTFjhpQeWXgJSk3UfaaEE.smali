.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationIconDozeHelper$BogTFxcTFjhpQeWXgJSk3UfaaEE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationIconDozeHelper$BogTFxcTFjhpQeWXgJSk3UfaaEE;->f$0:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationIconDozeHelper$BogTFxcTFjhpQeWXgJSk3UfaaEE;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationIconDozeHelper$BogTFxcTFjhpQeWXgJSk3UfaaEE;->f$0:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationIconDozeHelper$BogTFxcTFjhpQeWXgJSk3UfaaEE;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->lambda$fadeImageAlpha$1$NotificationIconDozeHelper(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
