.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$uSpta0ZIMf9cRtvmpWftCm99phY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/SummaryLoader;

.field private final synthetic f$1:Landroid/content/BroadcastReceiver;

.field private final synthetic f$2:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$uSpta0ZIMf9cRtvmpWftCm99phY;->f$0:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$uSpta0ZIMf9cRtvmpWftCm99phY;->f$1:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$uSpta0ZIMf9cRtvmpWftCm99phY;->f$2:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$uSpta0ZIMf9cRtvmpWftCm99phY;->f$0:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$uSpta0ZIMf9cRtvmpWftCm99phY;->f$1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$uSpta0ZIMf9cRtvmpWftCm99phY;->f$2:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->lambda$registerReceiver$1$SummaryLoader(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
