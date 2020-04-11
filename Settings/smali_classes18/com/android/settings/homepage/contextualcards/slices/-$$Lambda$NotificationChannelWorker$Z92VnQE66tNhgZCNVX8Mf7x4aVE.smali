.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelWorker$Z92VnQE66tNhgZCNVX8Mf7x4aVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelWorker$Z92VnQE66tNhgZCNVX8Mf7x4aVE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelWorker$Z92VnQE66tNhgZCNVX8Mf7x4aVE;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelWorker$Z92VnQE66tNhgZCNVX8Mf7x4aVE;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelWorker$Z92VnQE66tNhgZCNVX8Mf7x4aVE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelWorker$Z92VnQE66tNhgZCNVX8Mf7x4aVE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelWorker;->lambda$removeUninstalledPackages$0(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
