.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

.field private final synthetic f$2:Ljava/lang/CharSequence;

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/widget/Button;

.field private final synthetic f$5:Lcom/android/systemui/statusbar/SmartReplyController;

.field private final synthetic f$6:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final synthetic f$7:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;ILandroid/widget/Button;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$1:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$2:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$4:Landroid/widget/Button;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$5:Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$6:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$7:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$1:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$2:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$4:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$5:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$6:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;->f$7:Landroid/content/Context;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$inflateReplyButton$1(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;ILandroid/widget/Button;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
