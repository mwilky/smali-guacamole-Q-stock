.class public Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptionStateProvider;
.super Ljava/lang/Object;
.source "OpNotificationInterruptionStateProvider.java"


# static fields
.field protected static final OP_DEBUG:Z


# instance fields
.field protected final mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptionStateProvider;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OpNotificationController;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptionStateProvider;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    return-void
.end method


# virtual methods
.method protected shouldHeadsUp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptionStateProvider;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->canHeadsUp(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
