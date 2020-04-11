.class public final synthetic Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;

    invoke-direct {v0}, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;-><init>()V

    sput-object v0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;->INSTANCE:Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/permission/RuntimePermissionUsageInfo;

    check-cast p2, Landroid/permission/RuntimePermissionUsageInfo;

    invoke-static {p1, p2}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->lambda$onPermissionUsageResult$1(Landroid/permission/RuntimePermissionUsageInfo;Landroid/permission/RuntimePermissionUsageInfo;)I

    move-result p1

    return p1
.end method
