.class public final synthetic Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;->f$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;

    iput-object p2, p0, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;->f$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->lambda$packageDeleted$0$OPMultiAppListSettings$PackageDeleteObserver(Ljava/lang/String;)V

    return-void
.end method
