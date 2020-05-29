.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$Z32FkHtX39dSe-RNGB8pBy7LIdA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$Z32FkHtX39dSe-RNGB8pBy7LIdA;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$Z32FkHtX39dSe-RNGB8pBy7LIdA;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$Z32FkHtX39dSe-RNGB8pBy7LIdA;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$Z32FkHtX39dSe-RNGB8pBy7LIdA;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$Z32FkHtX39dSe-RNGB8pBy7LIdA;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$Z32FkHtX39dSe-RNGB8pBy7LIdA;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$applyAlertingBehavior$13$NotificationInfo(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
