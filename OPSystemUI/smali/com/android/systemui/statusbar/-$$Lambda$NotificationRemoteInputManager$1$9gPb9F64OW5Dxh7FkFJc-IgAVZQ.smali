.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;


# instance fields
.field private final synthetic f$0:Landroid/widget/RemoteViews$RemoteResponse;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;->f$0:Landroid/widget/RemoteViews$RemoteResponse;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;->f$2:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final handleClick()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;->f$0:Landroid/widget/RemoteViews$RemoteResponse;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;->f$2:Landroid/app/PendingIntent;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->lambda$onClickHandler$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method
