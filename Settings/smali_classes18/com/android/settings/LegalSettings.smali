.class public Lcom/android/settings/LegalSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LegalSettings.java"


# static fields
.field private static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field private static final KEY_HEALTH_SAFETY_INFORMATION:Ljava/lang/String; = "health_safety_information"

.field private static final KEY_HEALTH_SAFETY_INFORMATION_TYPE:I = 0xc

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_PERMISSION_AGREEMENT:Ljava/lang/String; = "op_permission_agreement"

.field private static final KEY_PERMISSION_AGREEMENT_TYPE:I = 0x4

.field private static final KEY_PRIVACE_POLICY:Ljava/lang/String; = "op_privacy_policy"

.field private static final KEY_PRIVACE_POLICY_TYPE:I = 0x3

.field private static final KEY_USER_AGREEMENT:Ljava/lang/String; = "op_user_agreements"

.field private static final KEY_USER_AGREEMENT_TYPE:I = 0x2

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "LegalSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings/LegalSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static startLegalActivity(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "op_legal_notices_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v2, "op_user_agreements"

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v2, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v3, "op_privacy_policy"

    const/4 v4, 0x3

    invoke-direct {v2, p1, v3, v4}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v3, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v4, "op_permission_agreement"

    const/4 v5, 0x4

    invoke-direct {v3, p1, v4, v5}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v5, "health_safety_information"

    const/16 v6, 0xc

    invoke-direct {v4, p1, v5, v6}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LegalSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe1

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const/high16 v0, 0x7f160000

    return v0
.end method
