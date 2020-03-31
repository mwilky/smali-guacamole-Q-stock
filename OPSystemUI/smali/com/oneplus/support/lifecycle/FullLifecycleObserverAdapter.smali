.class Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/FullLifecycleObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object v0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$com$oneplus$support$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ON_ANY must not been send by anybody"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;

    invoke-interface {p0, p1}, Lcom/oneplus/support/lifecycle/FullLifecycleObserver;->onDestroy(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;

    invoke-interface {p0, p1}, Lcom/oneplus/support/lifecycle/FullLifecycleObserver;->onStop(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;

    invoke-interface {p0, p1}, Lcom/oneplus/support/lifecycle/FullLifecycleObserver;->onPause(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;

    invoke-interface {p0, p1}, Lcom/oneplus/support/lifecycle/FullLifecycleObserver;->onResume(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;

    invoke-interface {p0, p1}, Lcom/oneplus/support/lifecycle/FullLifecycleObserver;->onStart(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lcom/oneplus/support/lifecycle/FullLifecycleObserver;

    invoke-interface {p0, p1}, Lcom/oneplus/support/lifecycle/FullLifecycleObserver;->onCreate(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
