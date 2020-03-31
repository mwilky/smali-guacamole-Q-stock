.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$8d3SjU56C80S4rq-vR5b0crRuYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$8d3SjU56C80S4rq-vR5b0crRuYY;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$8d3SjU56C80S4rq-vR5b0crRuYY;->f$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$8d3SjU56C80S4rq-vR5b0crRuYY;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$8d3SjU56C80S4rq-vR5b0crRuYY;->f$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->lambda$handleRemoteViewClick$3$StatusBarRemoteInputCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z

    move-result p0

    return p0
.end method
