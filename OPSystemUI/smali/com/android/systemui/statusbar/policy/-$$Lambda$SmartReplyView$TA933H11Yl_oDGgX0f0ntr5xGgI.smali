.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/SmartReplyController;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/app/Notification$Action;

.field private final synthetic f$4:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field private final synthetic f$5:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$0:Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$3:Landroid/app/Notification$Action;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$4:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$5:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$0:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$3:Landroid/app/Notification$Action;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$4:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;->f$5:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$inflateActionButton$3(Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method
