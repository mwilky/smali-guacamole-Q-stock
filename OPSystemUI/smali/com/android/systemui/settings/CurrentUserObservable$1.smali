.class Lcom/android/systemui/settings/CurrentUserObservable$1;
.super Landroidx/lifecycle/MutableLiveData;
.source "CurrentUserObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/CurrentUserObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/CurrentUserObservable;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/CurrentUserObservable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserObservable$1;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable$1;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-static {p0}, Lcom/android/systemui/settings/CurrentUserObservable;->access$000(Lcom/android/systemui/settings/CurrentUserObservable;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method protected onInactive()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onInactive()V

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable$1;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-static {p0}, Lcom/android/systemui/settings/CurrentUserObservable;->access$000(Lcom/android/systemui/settings/CurrentUserObservable;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method
