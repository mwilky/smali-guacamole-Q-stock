.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackController$TlIH8GpCbmJQdNzMgf9ko_xLlUk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackController;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackController$TlIH8GpCbmJQdNzMgf9ko_xLlUk;->f$0:Lcom/android/systemui/statusbar/policy/CallbackController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackController$TlIH8GpCbmJQdNzMgf9ko_xLlUk;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackController$TlIH8GpCbmJQdNzMgf9ko_xLlUk;->f$0:Lcom/android/systemui/statusbar/policy/CallbackController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackController$TlIH8GpCbmJQdNzMgf9ko_xLlUk;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->lambda$observe$0(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
