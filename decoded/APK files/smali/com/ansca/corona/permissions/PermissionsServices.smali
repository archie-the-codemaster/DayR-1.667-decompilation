.class public Lcom/ansca/corona/permissions/PermissionsServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "PermissionsServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel23;,
        Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel11;,
        Lcom/ansca/corona/permissions/PermissionsServices$PermissionGroup;,
        Lcom/ansca/corona/permissions/PermissionsServices$Permission;
    }
.end annotation


# static fields
.field private static sDangerousPermissionGroups:[Ljava/lang/String;

.field private static sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPermissionsPreferences:Landroid/content/SharedPreferences;

.field private static sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreviouslyRequestedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestedPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission-group.CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission-group.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission-group.CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission-group.LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission-group.MICROPHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission-group.PHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission-group.SENSORS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission-group.SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission-group.STORAGE"

    aput-object v2, v0, v1

    .line 544
    sput-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sDangerousPermissionGroups:[Ljava/lang/String;

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    .line 578
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 600
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    .line 601
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 602
    :try_start_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sPreviouslyRequestedPermissions:Ljava/util/HashSet;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 604
    invoke-static {p1}, Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel11;->initializePreviouslyRequestedPermissions(Landroid/content/Context;)V

    .line 606
    :cond_0
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 610
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "bodysensors"

    const-string v2, "android.permission-group.SENSORS"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "android.permission-group.CALENDAR"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "calendars"

    const-string v2, "android.permission-group.CALENDAR"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "camera"

    const-string v2, "android.permission-group.CAMERA"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "android.permission-group.CONTACTS"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "location"

    const-string v2, "android.permission-group.LOCATION"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "microphone"

    const-string v2, "android.permission-group.MICROPHONE"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "phone"

    const-string v2, "android.permission-group.PHONE"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "sms"

    const-string v2, "android.permission-group.SMS"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    const-string v1, "storage"

    const-string v2, "android.permission-group.STORAGE"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_1
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 626
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.SENSORS"

    const-string v2, "BodySensors"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.CALENDAR"

    const-string v2, "Calendars"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.CAMERA"

    const-string v2, "Camera"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.CONTACTS"

    const-string v2, "Contacts"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.LOCATION"

    const-string v2, "Location"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.MICROPHONE"

    const-string v2, "Microphone"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.PHONE"

    const-string v2, "Phone"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.SMS"

    const-string v2, "SMS"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.STORAGE"

    const-string v2, "Storage"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_2
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    const/16 v1, 0x14

    const/16 v2, 0xe

    const/16 v3, 0x10

    if-eqz p1, :cond_8

    .line 641
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_CALENDAR"

    const-string v5, "android.permission-group.CALENDAR"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.WRITE_CALENDAR"

    const-string v5, "android.permission-group.CALENDAR"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.CAMERA"

    const-string v5, "android.permission-group.CAMERA"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_CONTACTS"

    const-string v5, "android.permission-group.CONTACTS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.WRITE_CONTACTS"

    const-string v5, "android.permission-group.CONTACTS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.GET_ACCOUNTS"

    const-string v5, "android.permission-group.CONTACTS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission-group.LOCATION"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission-group.LOCATION"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.RECORD_AUDIO"

    const-string v5, "android.permission-group.MICROPHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_3

    .line 664
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.WRITE_CALL_LOG"

    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_4

    .line 668
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_4
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.USE_SIP"

    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_5

    .line 676
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.BODY_SENSORS"

    const-string v5, "android.permission-group.SENSORS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_5
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "android.permission-group.SMS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "android.permission-group.SMS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_SMS"

    const-string v5, "android.permission-group.SMS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    const-string v5, "android.permission-group.SMS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.RECEIVE_MMS"

    const-string v5, "android.permission-group.SMS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    .line 687
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_CELL_BROADCASTS"

    const-string v5, "android.permission-group.SMS"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_7

    .line 693
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v5, "android.permission-group.STORAGE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_7
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v5, "android.permission-group.STORAGE"

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_8
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 700
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.CALENDAR"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.CALENDAR"

    .line 702
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v4, "android.permission.READ_CALENDAR"

    .line 703
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "android.permission.WRITE_CALENDAR"

    .line 704
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.CAMERA"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.CAMERA"

    .line 709
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v4, "android.permission.CAMERA"

    .line 710
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.CONTACTS"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.CONTACTS"

    .line 715
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v4, "android.permission.READ_CONTACTS"

    .line 716
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "android.permission.WRITE_CONTACTS"

    .line 717
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "android.permission.GET_ACCOUNTS"

    .line 718
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.LOCATION"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.LOCATION"

    .line 723
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 724
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 725
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.MICROPHONE"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.MICROPHONE"

    .line 730
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 731
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.PHONE"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v4, "android.permission-group.PHONE"

    .line 736
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 737
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "android.permission.CALL_PHONE"

    .line 738
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_9

    const-string v4, "android.permission.READ_CALL_LOG"

    .line 740
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "android.permission.WRITE_CALL_LOG"

    .line 741
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_a

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 744
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v2, "android.permission.USE_SIP"

    .line 746
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 747
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_b

    .line 751
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.SENSORS"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.SENSORS"

    .line 753
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "android.permission.BODY_SENSORS"

    .line 754
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_b
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.SMS"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.SMS"

    .line 760
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    .line 761
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    .line 762
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_SMS"

    .line 763
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    .line 764
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_MMS"

    .line 765
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_c

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    .line 768
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_c
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.STORAGE"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object p1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    const-string v1, "android.permission-group.STORAGE"

    .line 774
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 775
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_d

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 776
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 778
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_e
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$000()Landroid/content/SharedPreferences;
    .locals 1

    .line 24
    sget-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionsPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .line 24
    sput-object p0, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionsPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .line 24
    sget-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sPreviouslyRequestedPermissions:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .line 24
    sput-object p0, Lcom/ansca/corona/permissions/PermissionsServices;->sPreviouslyRequestedPermissions:Ljava/util/HashSet;

    return-object p0
.end method

.method private checkCallingAndSelfPermission(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;
    .locals 4

    if-eqz p1, :cond_8

    .line 1410
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1414
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1415
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1418
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 1420
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    return-object p1

    .line 1422
    :cond_2
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    return-object p1

    .line 1427
    :cond_3
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    .line 1428
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-ne v1, v0, :cond_5

    if-nez v0, :cond_4

    .line 1432
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    return-object p1

    .line 1434
    :cond_4
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    return-object p1

    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    if-eqz v0, :cond_6

    goto :goto_1

    .line 1439
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app with process id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is trying to piggy back off of this app\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_7
    :goto_1
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    return-object p1

    .line 1407
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 798
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 801
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/permissions/PermissionsServices;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 807
    array-length v3, v2

    if-lez v3, :cond_6

    .line 808
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 811
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_4

    .line 815
    :try_start_0
    aget-object v6, v2, v5

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_3

    .line 822
    iget-object v7, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 823
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const-string v7, "android.permission-group.UNDEFINED"

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 825
    sget-object v6, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_2
    if-eqz v6, :cond_3

    .line 827
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 828
    aget-object v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 834
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v1

    :cond_5
    new-array p1, v4, [Ljava/lang/String;

    .line 837
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_6
    return-object v1
.end method

.method public findPermissionInManifestForGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 859
    invoke-virtual {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 860
    aget-object p1, p1, v0

    :goto_0
    return-object p1
.end method

.method public getPAAppPermissionNameFromAndroidPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1017
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 1019
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1020
    invoke-virtual {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionGroupFromPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1024
    :cond_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1026
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPAAppPermissionNameFromPermissionGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1027
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPAAppPermissionNameFromPermissionGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1003
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 1004
    :try_start_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1005
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPermissionGroupFromPAAppPermissionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 988
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 989
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 990
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 991
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPermissionGroupFromPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 959
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 962
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 966
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 967
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const-string v2, "android.permission-group.UNDEFINED"

    .line 968
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 969
    sget-object v0, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    return-object v1
.end method

.method public getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;
    .locals 1

    .line 873
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 877
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->isPermissionInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-direct {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->checkCallingAndSelfPermission(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object p1

    return-object p1

    .line 882
    :cond_1
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    return-object p1
.end method

.method public getPermissionStateForSupportedGroup(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;
    .locals 7

    .line 903
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 905
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 906
    monitor-exit v0

    return-object v2

    .line 908
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->isSupportedPermissionGroupName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    monitor-exit v0

    return-object p1

    .line 913
    :cond_1
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionGroupToPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 916
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    monitor-exit v0

    return-object p1

    :cond_2
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    .line 918
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 922
    array-length v3, p1

    const/4 v4, 0x0

    .line 924
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_5

    .line 925
    sget-object v5, Lcom/ansca/corona/permissions/PermissionsServices$1;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    aget-object v6, p1, v1

    invoke-virtual {p0, v6}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    :cond_4
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    monitor-exit v0

    return-object p1

    :cond_5
    if-ne v3, v4, :cond_6

    .line 941
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    monitor-exit v0

    return-object p1

    .line 945
    :cond_6
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 946
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getRequestedPermissions()[Ljava/lang/String;
    .locals 5

    .line 1044
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 1046
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1047
    monitor-exit v0

    return-object v2

    .line 1049
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1050
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1053
    :cond_1
    :try_start_1
    sget-object v4, Lcom/ansca/corona/permissions/PermissionsServices;->sRequestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1056
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1000

    .line 1055
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    sput-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sRequestedPermissions:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1059
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1062
    :cond_2
    :goto_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sRequestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1065
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sRequestedPermissions:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1068
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 1069
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRequestedPermissionsInState(Lcom/ansca/corona/permissions/PermissionState;)[Ljava/lang/String;
    .locals 8

    .line 1090
    sget-object v0, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "Corona"

    const-string v0, "ERROR: PermissionServices.getRequestedPermissionsInState(): Requested Permissions cannot by in the state, MISSING!"

    .line 1091
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1096
    :cond_0
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1099
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 1102
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    invoke-virtual {p0}, Lcom/ansca/corona/permissions/PermissionsServices;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1112
    :goto_0
    :try_start_0
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 1114
    aget-object v6, v3, v5

    invoke-direct {p0, v6}, Lcom/ansca/corona/permissions/PermissionsServices;->checkCallingAndSelfPermission(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v6

    sget-object v7, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v6, v7, :cond_3

    .line 1115
    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1117
    :cond_3
    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1122
    :cond_4
    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne p1, v3, :cond_5

    new-array p1, v4, [Ljava/lang/String;

    .line 1123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_5
    new-array p1, v4, [Ljava/lang/String;

    .line 1125
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public getRequestedPermissionsInStateForGroup(Lcom/ansca/corona/permissions/PermissionState;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1156
    sget-object v0, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    const-string v1, "Corona"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "ERROR: PermissionServices.getRequestedPermissionsInStateForGroup(): Requested Permissions cannot by in the state, MISSING!"

    .line 1157
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1161
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ansca/corona/permissions/PermissionsServices;->isSupportedPermissionGroupName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "ERROR: PermissionServices.getRequestedPermissionsInStateForGroup(): The supplied PermissionGroup name is not supported."

    .line 1162
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1167
    :cond_1
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    .line 1172
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    .line 1177
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    invoke-virtual {p0, p2}, Lcom/ansca/corona/permissions/PermissionsServices;->findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1187
    :goto_0
    :try_start_0
    array-length v5, p2

    if-ge v4, v5, :cond_5

    .line 1189
    aget-object v5, p2, v4

    invoke-direct {p0, v5}, Lcom/ansca/corona/permissions/PermissionsServices;->checkCallingAndSelfPermission(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v5

    sget-object v6, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v5, v6, :cond_4

    .line 1190
    aget-object v5, p2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1192
    :cond_4
    aget-object v5, p2, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1197
    :cond_5
    sget-object p2, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne p1, p2, :cond_6

    new-array p1, v3, [Ljava/lang/String;

    .line 1198
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_6
    new-array p1, v3, [Ljava/lang/String;

    .line 1200
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public getSupportedPermissionGroups()[Ljava/lang/String;
    .locals 2

    .line 1214
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 1215
    :try_start_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sDangerousPermissionGroups:[Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPAAppPermissionName(Ljava/lang/String;)Z
    .locals 2

    .line 1246
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 1247
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1248
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sPlatformAgnosticPermissionGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isPartOfPAAppPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1226
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    .line 1228
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1229
    invoke-virtual {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionGroupFromPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1233
    :cond_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sMarshmallowPermissionToPermissionGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1235
    :goto_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionsServices;->sPermissionGroupPlatformAgnosticMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isPermissionInManifest(Ljava/lang/String;)Z
    .locals 4

    .line 1274
    invoke-virtual {p0}, Lcom/ansca/corona/permissions/PermissionsServices;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1276
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1277
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isSupportedPermissionGroupName(Ljava/lang/String;)Z
    .locals 4

    .line 1258
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1259
    :goto_0
    :try_start_0
    sget-object v3, Lcom/ansca/corona/permissions/PermissionsServices;->sDangerousPermissionGroups:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1260
    sget-object v3, Lcom/ansca/corona/permissions/PermissionsServices;->sDangerousPermissionGroups:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1262
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 1263
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public requestAllDeniedPermissionsInGroup(Ljava/lang/String;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V
    .locals 5

    .line 1323
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1326
    invoke-virtual {p0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "Corona"

    if-eqz p1, :cond_1

    .line 1328
    array-length v2, p1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 1330
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1331
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v3

    .line 1332
    sget-object v4, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v3, v4, :cond_0

    .line 1333
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "PermissionsServices.requestAllDeniedPermissionInGroup(): No permissions in group!"

    .line 1337
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1342
    new-instance p1, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {p1, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/util/LinkedHashSet;)V

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    goto :goto_1

    :cond_3
    const-string p1, "PermissionsServices.requestAllDeniedPermissionInGroup(): Didn\'t find any permissions to request!"

    .line 1344
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V
    .locals 2

    .line 1298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string p1, "Corona"

    const-string p2, "ERROR: PermissionServices.requestPermissions(): Permissions can only be requested for Android 6 and above!"

    .line 1299
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1304
    :cond_0
    invoke-static {p1, p2, p0}, Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel23;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/PermissionsServices;)V

    return-void
.end method

.method public shouldNeverAskAgain(Ljava/lang/String;)Z
    .locals 2

    .line 1355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1359
    :cond_0
    invoke-static {p1, p0}, Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel23;->shouldNeverAskAgain(Ljava/lang/String;Lcom/ansca/corona/permissions/PermissionsServices;)Z

    move-result p1

    return p1
.end method

.method public showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V
    .locals 1

    .line 1386
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Corona"

    const-string v0, "PermissionServices.showPermissionGroupMissingFromManifestAlert(): CoronaActivity is null!"

    .line 1388
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1392
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V

    return-void
.end method

.method public showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1370
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Corona"

    const-string p2, "PermissionServices.showPermissionMissingFromManifestAlert(): CoronaActivity is null!"

    .line 1372
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1376
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/CoronaActivity;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
