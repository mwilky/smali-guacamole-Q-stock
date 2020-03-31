.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private final synthetic f$1:Landroid/app/Notification$Action;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/SmartReplyController;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final synthetic f$4:I

.field private final synthetic f$5:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field private final synthetic f$6:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/app/Notification$Action;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$1:Landroid/app/Notification$Action;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$2:Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput p5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$5:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$6:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$1:Landroid/app/Notification$Action;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$2:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$4:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$5:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;->f$6:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$inflateActionButton$4(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/app/Notification$Action;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/view/View;)V

    return-void
.end method
