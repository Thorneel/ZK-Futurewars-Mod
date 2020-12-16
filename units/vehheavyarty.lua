return { vehheavyarty = {
  unitname            = [[vehheavyarty]],
  name                = [[Impaler]],
  description         = [[Precision Artillery Rover]],
  acceleration        = 0.252,
  brakeRate           = 0.96,
  buildCostMetal      = 700,
  builder             = false,
  buildPic            = [[vehheavyarty.png]],
  canMove             = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[40 20 40]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],

  customParams        = {

    dontfireatradarcommand = '0',
  },

  explodeAs           = [[BIG_UNITEX_MERL]],
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[vehiclelrarty]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 1100,
  maxSlope            = 18,
  maxVelocity         = 2.0,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP]],
  objectName          = [[core_diplomat.s3o]],
  script              = [[vehheavyarty.lua]],
  selfDestructAs      = [[BIG_UNITEX_MERL]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:NONE]],
    },

  },

  sightDistance       = 660,
  trackOffset         = 15,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 44,
  turninplace         = 0,
  turnRate            = 736,

  weapons             = {

    {
      def                = [[CORTRUCK_ROCKET]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },

  weaponDefs          = {

    CORTRUCK_ROCKET = {
      name                    = [[Kinetic Cruise Missile]],
      areaOfEffect            = 24,
      cegTag                  = [[raventrail]],
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,

      customParams        = {
        burst = Shared.BURST_RELIABLE,
        reaim_time = 15, -- Some script bug. It does not need fast aim updates anyway.
        light_camera_height = 2500,
        light_color = [[1 0.8 0.2]],
		cruisealt = 1000,
		cruisedist = 240,
      },

      damage         = {
        default = 800.1,
      },

      texture1=[[null]], --flare, reference: http://springrts.com/wiki/Weapon_Variables#Texture_Tags
      --texture2=[[null]], --smoketrail
      --texture3=[[null]], --flame

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:DOT_Merl_Explo]],
      fireStarter             = 100,
      flightTime              = 20,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_merl.s3o]],
      noSelfDamage            = true,
      range                   = 1800,
      reloadtime              = 10,
      smokeTrail              = false,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      tolerance               = 4000,
      turnrate                = 18000,
	  startVelocity           = 80,
      weaponAcceleration      = 315,
	  tracks = true, -- doesn't actually track. Needed for cruise missile.
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 800,
    },

  },

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[core_diplomat_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
    },

  },

} }