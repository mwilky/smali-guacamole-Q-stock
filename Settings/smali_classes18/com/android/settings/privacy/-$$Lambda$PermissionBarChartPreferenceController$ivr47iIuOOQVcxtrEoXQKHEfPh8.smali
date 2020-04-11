.class public final synthetic Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$ivr47iIuOOQVcxtrEoXQKHEfPh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/privacy/PermissionBarChartPreferenceController;

.field private final synthetic f$1:Landroid/permission/RuntimePermissionUsageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privacy/PermissionBarChartPreferenceController;Landroid/permission/RuntimePermissionUsageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$ivr47iIuOOQVcxtrEoXQKHEfPh8;->f$0:Lcom/android/settings/privacy/PermissionBarChartPreferenceController;

    iput-object p2, p0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$ivr47iIuOOQVcxtrEoXQKHEfPh8;->f$1:Landroid/permission/RuntimePermissionUsageInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$ivr47iIuOOQVcxtrEoXQKHEfPh8;->f$0:Lcom/android/settings/privacy/PermissionBarChartPreferenceController;

    iget-object v1, p0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$ivr47iIuOOQVcxtrEoXQKHEfPh8;->f$1:Landroid/permission/RuntimePermissionUsageInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->lambda$createBarViews$2$PermissionBarChartPreferenceController(Landroid/permission/RuntimePermissionUsageInfo;Landroid/view/View;)V

    return-void
.end method
