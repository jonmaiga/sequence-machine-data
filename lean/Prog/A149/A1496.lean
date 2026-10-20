import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A149600: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149600, there is no canonical definition to state claims against.
-/

/-! ## A149600.P13434400611100911076

`or(1, A204008(C(∑[n], n)))`
-/

namespace A149600.P13434400611100911076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204008 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n))

end

end A149600.P13434400611100911076

/-! ## A149600.P10910802945068188688

`A194640(A026558(n))`
-/

namespace A149600.P10910802945068188688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A026558 n).toNat

end

end A149600.P10910802945068188688

/-!
# A149601: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149601, there is no canonical definition to state claims against.
-/

/-! ## A149601.P16761372047082710518

`A149602(n)-A160086(A149568(n+1))`
-/

namespace A149601.P16761372047082710518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149602 n - A160086 (A149568 (n + 1)).toNat

end

end A149601.P16761372047082710518

/-! ## A149601.P14493779315628861731

`A149602(n)-A160086(A149577(n+1))`
-/

namespace A149601.P14493779315628861731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149602 n - A160086 (A149577 (n + 1)).toNat

end

end A149601.P14493779315628861731

/-!
# A149602: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149602, there is no canonical definition to state claims against.
-/

/-! ## A149602.P4153188925039452814

`A156684(7*A149388(n))`
-/

namespace A149602.P4153188925039452814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (7 * A149388 n).toNat

end

end A149602.P4153188925039452814

/-! ## A149602.P8060200962401739322

`or(A149601(n), A166352(2^n))`
-/

namespace A149602.P8060200962401739322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149601 n) (A166352 (2 ^ n))

end

end A149602.P8060200962401739322

/-!
# A149603: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149603, there is no canonical definition to state claims against.
-/

/-! ## A149603.P3068021854025043120

`A324713(n!)+A003120(n+1)`
-/

namespace A149603.P3068021854025043120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (Nat.factorial n) + A003120 (n + 1)

end

end A149603.P3068021854025043120

/-! ## A149603.P4141568615139881295

`A121047(round(exp(n-1)))`
-/

namespace A149603.P4141568615139881295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (SequenceMachineLib.roundAway (Real.exp ((n : ℤ) - 1 : ℝ))).toNat

end

end A149603.P4141568615139881295

/-!
# A149604: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149604, there is no canonical definition to state claims against.
-/

/-! ## A149604.P13685968658777601064

`A087011(4^n+5^n+1-(2^n)%35)`
-/

namespace A149604.P13685968658777601064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (4 ^ n + (5 ^ n + 1) - 2 ^ n % 35)

end

end A149604.P13685968658777601064

/-! ## A149604.P16251623504565695875

`A262689(floor((ratio[n+1]+n)^(n+1))-(∑[n+3]-2))`
-/

namespace A149604.P16251623504565695875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌋ - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)).toNat

end

end A149604.P16251623504565695875

/-!
# A149605: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149605, there is no canonical definition to state claims against.
-/

/-! ## A149605.P748940658429070776

`A149606(n)%p?[∑[2^n]]`
-/

namespace A149605.P748940658429070776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149606 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A149605.P748940658429070776

/-! ## A149605.P1144089188567813241

`A149606(A073788(n))`
-/

namespace A149605.P1144089188567813241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149606 (A073788 n).toNat

end

end A149605.P1144089188567813241

/-! ## A149605.P8342789565258562999

`A092525(A149606(n))`
-/

namespace A149605.P8342789565258562999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092525 (A149606 n).toNat

end

end A149605.P8342789565258562999

/-!
# A149606: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149606, there is no canonical definition to state claims against.
-/

/-! ## A149606.P4916755359963907244

`or(A001065(A149600(n)), A149605(n))`
-/

namespace A149606.P4916755359963907244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001065 (A149600 n).toNat) (A149605 n)

end

end A149606.P4916755359963907244

/-! ## A149606.P11388461556317135884

`or(A025427(A149613(n)), A149605(n))`
-/

namespace A149606.P11388461556317135884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025427 (A149613 n).toNat) (A149605 n)

end

end A149606.P11388461556317135884

/-! ## A149606.P1190958000469497471

`or(A025427(A149624(n)), A149605(n))`
-/

namespace A149606.P1190958000469497471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025427 (A149624 n).toNat) (A149605 n)

end

end A149606.P1190958000469497471

/-! ## A149606.P635107994512869173

`or(A026921(A149619(n)), A149605(n))`
-/

namespace A149606.P635107994512869173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026921 (A149619 n).toNat) (A149605 n)

end

end A149606.P635107994512869173

/-!
# A149607: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149607, there is no canonical definition to state claims against.
-/

/-! ## A149607.P7271815999308273810

`or(A008615(A113946(n)), A109267(n))`
-/

namespace A149607.P7271815999308273810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008615 (A113946 n).toNat) (A109267 n)

end

end A149607.P7271815999308273810

/-! ## A149607.P7929765668518559691

`xor(A149608(n), A241770(A090802(n)))`
-/

namespace A149607.P7929765668518559691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149608 n) (A241770 (A090802 n).toNat)

end

end A149607.P7929765668518559691

/-! ## A149607.P5289652473938048323

`xor(A149608(n), A241770(A241770(n+1)+1))`
-/

namespace A149607.P5289652473938048323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149608 n) (A241770 (A241770 (n + 1) + 1).toNat)

end

end A149607.P5289652473938048323

/-!
# A149608: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149608, there is no canonical definition to state claims against.
-/

/-! ## A149608.P13675433935022905866

`xor(A149607(n), A241770(A090802(n)))`
-/

namespace A149608.P13675433935022905866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149607 n) (A241770 (A090802 n).toNat)

end

end A149608.P13675433935022905866

/-! ## A149608.P14147868409548045497

`or(A149592(n), A351593(A023860(n+1)))`
-/

namespace A149608.P14147868409548045497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149592 n) (A351593 (A023860 (n + 1)).toNat)

end

end A149608.P14147868409548045497

/-! ## A149608.P15170119211672823851

`xor(A149607(n), A241770(A241770(n+1)+1))`
-/

namespace A149608.P15170119211672823851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149607 n) (A241770 (A241770 (n + 1) + 1).toNat)

end

end A149608.P15170119211672823851

/-!
# A149609: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149609, there is no canonical definition to state claims against.
-/

/-! ## A149609.P15144955307387573745

`or(A002024(A000699(n)), A149572(n))`
-/

namespace A149609.P15144955307387573745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A000699 n).toNat) (A149572 n)

end

end A149609.P15144955307387573745

/-! ## A149609.P14212380181424925436

`or(A001222(A006125(n)), A201805(n))`
-/

namespace A149609.P14212380181424925436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A006125 n).toNat) (A201805 n)

end

end A149609.P14212380181424925436

/-!
# A149610: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149610, there is no canonical definition to state claims against.
-/

/-! ## A149610.P9753377648684160304

`abs(A328732(C(4*n+n+1, n)/(2*n+1)))`
-/

namespace A149610.P9753377648684160304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328732 (SequenceMachineLib.roundAway ((Nat.choose (4 * n + (n + 1)) n : ℚ) / (2 * n + 1 : ℚ))).toNat|

end

end A149610.P9753377648684160304

/-! ## A149610.P10584550122758087588

`A335134(A216215(n+1))`
-/

namespace A149610.P10584550122758087588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335134 (A216215 (n + 1)).toNat

end

end A149610.P10584550122758087588

/-!
# A149611: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149611, there is no canonical definition to state claims against.
-/

/-! ## A149611.P11670271344349209489

`A004277(A149620(n))-A149626(n)`
-/

namespace A149611.P11670271344349209489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149620 n).toNat - A149626 n

end

end A149611.P11670271344349209489

/-! ## A149611.P8968188795572809393

`or(A106432(A020031(n)), A149604(n))`
-/

namespace A149611.P8968188795572809393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106432 (A020031 n).toNat) (A149604 n)

end

end A149611.P8968188795572809393

/-! ## A149611.P11835735781779134873

`or(A060247(A149622(n)), A149604(n))`
-/

namespace A149611.P11835735781779134873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060247 (A149622 n).toNat) (A149604 n)

end

end A149611.P11835735781779134873

/-!
# A149612: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149612, there is no canonical definition to state claims against.
-/

/-! ## A149612.P2034964787900482482

`A149614(n)-A037806(A266211(n+1))`
-/

namespace A149612.P2034964787900482482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149614 n - A037806 (A266211 (n + 1)).toNat

end

end A149612.P2034964787900482482

/-! ## A149612.P11186133216962675427

`A149614(n)-A104488(A247416(n+1))`
-/

namespace A149612.P11186133216962675427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149614 n - A104488 (A247416 (n + 1)).toNat

end

end A149612.P11186133216962675427

/-! ## A149612.P11649712284804564888

`A149614(n)-A348325(A054924(7*n+2))`
-/

namespace A149612.P11649712284804564888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149614 n - A348325 (A054924 (7 * n + 2)).toNat

end

end A149612.P11649712284804564888

/-!
# A149614: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149614, there is no canonical definition to state claims against.
-/

/-! ## A149614.P5555195987616418766

`A359327(A127715(n))+A149612(n)`
-/

namespace A149614.P5555195987616418766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359327 (A127715 n).toNat + A149612 n

end

end A149614.P5555195987616418766

/-! ## A149614.P12003897029082280239

`A149612(n)+A037806(A266211(n+1))`
-/

namespace A149614.P12003897029082280239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149612 n + A037806 (A266211 (n + 1)).toNat

end

end A149614.P12003897029082280239

/-! ## A149614.P13021857777854939939

`A149612(n)+A104488(A247416(n+1))`
-/

namespace A149614.P13021857777854939939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149612 n + A104488 (A247416 (n + 1)).toNat

end

end A149614.P13021857777854939939

/-!
# A149615: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149615, there is no canonical definition to state claims against.
-/

/-! ## A149615.P8535259334495057087

`A004277(A149621(n))-A149628(n)`
-/

namespace A149615.P8535259334495057087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149621 n).toNat - A149628 n

end

end A149615.P8535259334495057087

/-! ## A149615.P2528270030693364263

`A098465(n)+A002265(A014445(n))`
-/

namespace A149615.P2528270030693364263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098465 n + A002265 (A014445 n).toNat

end

end A149615.P2528270030693364263

/-! ## A149615.P15411054586170708819

`A133221(n)+A048865(A164581(n))`
-/

namespace A149615.P15411054586170708819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133221 n + A048865 (A164581 n).toNat

end

end A149615.P15411054586170708819

/-!
# A149616: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149616, there is no canonical definition to state claims against.
-/

/-! ## A149616.P11838059062485698624

`or(A005848(A030039(n)), A149614(n))`
-/

namespace A149616.P11838059062485698624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005848 (A030039 n).toNat) (A149614 n)

end

end A149616.P11838059062485698624

/-! ## A149616.P15307214975525480608

`or(A102705(A001045(n)), A149614(n))`
-/

namespace A149616.P15307214975525480608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102705 (A001045 n).toNat) (A149614 n)

end

end A149616.P15307214975525480608

/-!
# A149617: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149617, there is no canonical definition to state claims against.
-/

/-! ## A149617.P3796354466734943210

`∏{p}[A149618(n)², #]`
-/

namespace A149617.P3796354466734943210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149618 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149617.P3796354466734943210

/-! ## A149617.P18092554338033318068

`A149618(A001096(n))`
-/

namespace A149617.P18092554338033318068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149618 (A001096 n).toNat

end

end A149617.P18092554338033318068

/-!
# A149619: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149619, there is no canonical definition to state claims against.
-/

/-! ## A149619.P10290020217242646454

`A259178(A149532(n))`
-/

namespace A149619.P10290020217242646454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (A149532 n).toNat

end

end A149619.P10290020217242646454

/-! ## A149619.P6406216308994283176

`A064460(A001571(n))+1`
-/

namespace A149619.P6406216308994283176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064460 (A001571 n).toNat + 1

end

end A149619.P6406216308994283176

/-!
# A149620: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149620, there is no canonical definition to state claims against.
-/

/-! ## A149620.P14387369969473884884

`A149611(n)+A004525(A149626(n)-A149611(n))`
-/

namespace A149620.P14387369969473884884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149611 n + A004525 (A149626 n - A149611 n).toNat

end

end A149620.P14387369969473884884

/-! ## A149620.P6044839567603014005

`A149611(n)+A004526(A149626(n)-A149611(n))`
-/

namespace A149620.P6044839567603014005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149611 n + A004526 (A149626 n - A149611 n).toNat

end

end A149620.P6044839567603014005

/-! ## A149620.P16673926480766743955

`A004525(A149626(n)+A149611(n))`
-/

namespace A149620.P16673926480766743955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149626 n + A149611 n).toNat

end

end A149620.P16673926480766743955

/-! ## A149620.P8388911409699394591

`A004526(A149626(n)+A149611(n))`
-/

namespace A149620.P8388911409699394591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149626 n + A149611 n).toNat

end

end A149620.P8388911409699394591

/-!
# A149621: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149621, there is no canonical definition to state claims against.
-/

/-! ## A149621.P10202590473322770208

`A004525(A149628(n)+A149615(n))`
-/

namespace A149621.P10202590473322770208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149628 n + A149615 n).toNat

end

end A149621.P10202590473322770208

/-! ## A149621.P16787079356814216316

`A026741(A149628(n)+A149615(n))`
-/

namespace A149621.P16787079356814216316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A149628 n + A149615 n).toNat

end

end A149621.P16787079356814216316

/-! ## A149621.P367000957497433609

`A032742(A149628(n)+A149615(n))`
-/

namespace A149621.P367000957497433609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A149628 n + A149615 n).toNat

end

end A149621.P367000957497433609

/-! ## A149621.P10155365956508153879

`A065033(A149628(n)+A149615(n))`
-/

namespace A149621.P10155365956508153879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149628 n + A149615 n).toNat

end

end A149621.P10155365956508153879

/-!
# A149622: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149622, there is no canonical definition to state claims against.
-/

/-! ## A149622.P7681925042945978025

`A271866(A083885(n))`
-/

namespace A149622.P7681925042945978025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271866 (A083885 n).toNat

end

end A149622.P7681925042945978025

/-! ## A149622.P7828284032303862474

`A130090(A266695(n))-2`
-/

namespace A149622.P7828284032303862474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130090 (A266695 n).toNat - 2

end

end A149622.P7828284032303862474

/-!
# A149623: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149623, there is no canonical definition to state claims against.
-/

/-! ## A149623.P9542810001318648923

`A107821(A149674(n))`
-/

namespace A149623.P9542810001318648923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (A149674 n).toNat

end

end A149623.P9542810001318648923

/-! ## A149623.P6880653304059334261

`A353848(A000292(n))+A324611(n)`
-/

namespace A149623.P6880653304059334261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A000292 n).toNat + A324611 n

end

end A149623.P6880653304059334261

/-!
# A149624: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149624, there is no canonical definition to state claims against.
-/

/-! ## A149624.P16899358637179929101

`A329629(A148571(n))`
-/

namespace A149624.P16899358637179929101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (A148571 n).toNat

end

end A149624.P16899358637179929101

/-! ## A149624.P12403188652694864860

`A212321(4*A275605(n))`
-/

namespace A149624.P12403188652694864860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212321 (4 * A275605 n).toNat

end

end A149624.P12403188652694864860

/-!
# A149625: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149625, there is no canonical definition to state claims against.
-/

/-! ## A149625.P8638744292397766662

`A130446(A149624(n))`
-/

namespace A149625.P8638744292397766662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A149624 n).toNat

end

end A149625.P8638744292397766662

/-! ## A149625.P9430725849766274927

`A337674(A337693(n))-A337682(3*n+4)`
-/

namespace A149625.P9430725849766274927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (A337693 n).toNat - A337682 (3 * n + 4)

end

end A149625.P9430725849766274927

/-!
# A149626: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149626, there is no canonical definition to state claims against.
-/

/-! ## A149626.P5973139243556702758

`A004277(A149620(n))-A149611(n)`
-/

namespace A149626.P5973139243556702758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149620 n).toNat - A149611 n

end

end A149626.P5973139243556702758

/-! ## A149626.P4226596740605719266

`or(A319784(comp[2*n+3]), A323793(n))`
-/

namespace A149626.P4226596740605719266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A319784 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A323793 n)

end

end A149626.P4226596740605719266

/-! ## A149626.P9874678224302903322

`A149696(n)-A134022(A028403(n+1))`
-/

namespace A149626.P9874678224302903322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149696 n - A134022 (A028403 (n + 1)).toNat

end

end A149626.P9874678224302903322

/-!
# A149627: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149627, there is no canonical definition to state claims against.
-/

/-! ## A149627.P2600248664484804605

`A149629(n)-A165111(A058804(n))`
-/

namespace A149627.P2600248664484804605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149629 n - A165111 (A058804 n).toNat

end

end A149627.P2600248664484804605

/-! ## A149627.P16713552214702405205

`or(A072619(A026525(n)), A352524(n))`
-/

namespace A149627.P16713552214702405205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072619 (A026525 n).toNat) (A352524 n)

end

end A149627.P16713552214702405205

/-! ## A149627.P17013218954257165663

`A002265(5*A149417(n))-A165111(A058804(n))`
-/

namespace A149627.P17013218954257165663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (5 * A149417 n).toNat - A165111 (A058804 n).toNat

end

end A149627.P17013218954257165663

/-!
# A149628: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149628, there is no canonical definition to state claims against.
-/

/-! ## A149628.P99949697511238492

`A004277(A149621(n))-A149615(n)`
-/

namespace A149628.P99949697511238492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149621 n).toNat - A149615 n

end

end A149628.P99949697511238492

/-! ## A149628.P6645637309359627333

`or(A149620(n), A210531(A258206(2*n+3)))`
-/

namespace A149628.P6645637309359627333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149620 n) (A210531 (A258206 (2 * n + 3)).toNat)

end

end A149628.P6645637309359627333

/-!
# A149629: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149629, there is no canonical definition to state claims against.
-/

/-! ## A149629.P3172224821113455565

`A376953(A149311(n))`
-/

namespace A149629.P3172224821113455565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A149311 n).toNat

end

end A149629.P3172224821113455565

/-! ## A149629.P6065314489500186047

`A002265(5*A149417(n))`
-/

namespace A149629.P6065314489500186047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (5 * A149417 n).toNat

end

end A149629.P6065314489500186047

/-! ## A149629.P6473825249990532250

`A002265(lcm(5, A149417(n)))`
-/

namespace A149629.P6473825249990532250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 5 (A149417 n))

end

end A149629.P6473825249990532250

/-!
# A149630: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149630, there is no canonical definition to state claims against.
-/

/-! ## A149630.P13217351916063637251

`A059806(A149631(n))`
-/

namespace A149630.P13217351916063637251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A149631 n).toNat

end

end A149630.P13217351916063637251

/-! ## A149630.P14143260619980664427

`A149631(A073788(n))`
-/

namespace A149630.P14143260619980664427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149631 (A073788 n).toNat

end

end A149630.P14143260619980664427

/-! ## A149630.P18319909397152125245

`A149631(A171596(n))`
-/

namespace A149630.P18319909397152125245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149631 (A171596 n).toNat

end

end A149630.P18319909397152125245

/-!
# A149632: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149632, there is no canonical definition to state claims against.
-/

/-! ## A149632.P16068261301264741696

`A370647(A148614(n))`
-/

namespace A149632.P16068261301264741696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370647 (A148614 n).toNat

end

end A149632.P16068261301264741696

/-! ## A149632.P10426152131891297307

`A162226(A216359(n+1))`
-/

namespace A149632.P10426152131891297307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A216359 (n + 1)).toNat

end

end A149632.P10426152131891297307

/-!
# A149633: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149633, there is no canonical definition to state claims against.
-/

/-! ## A149633.P1221645011432532797

`or(A005848(A030039(n)), A149575(n))`
-/

namespace A149633.P1221645011432532797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005848 (A030039 n).toNat) (A149575 n)

end

end A149633.P1221645011432532797

/-! ## A149633.P7075198920215460967

`A260124(A148721(n))`
-/

namespace A149633.P7075198920215460967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A148721 n).toNat

end

end A149633.P7075198920215460967

/-!
# A149634: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149634, there is no canonical definition to state claims against.
-/

/-! ## A149634.P1569472518661197827

`A063195(A148571(n)*A275272(n+1))`
-/

namespace A149634.P1569472518661197827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A148571 n * A275272 (n + 1)).toNat

end

end A149634.P1569472518661197827

/-! ## A149634.P14163635919628587577

`A063195(lcm(A148571(n), A275272(n+1)))`
-/

namespace A149634.P14163635919628587577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (Int.lcm (A148571 n) (A275272 (n + 1)))

end

end A149634.P14163635919628587577

/-!
# A149635: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149635, there is no canonical definition to state claims against.
-/

/-! ## A149635.P3846935564570075422

`A000026(A149636(n))`
-/

namespace A149635.P3846935564570075422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149636 n).toNat

end

end A149635.P3846935564570075422

/-! ## A149635.P6469004186186453710

`A149636(A024647(n))`
-/

namespace A149635.P6469004186186453710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149636 (A024647 n).toNat

end

end A149635.P6469004186186453710

/-! ## A149635.P5306697015790249283

`A149636(A024648(n))`
-/

namespace A149635.P5306697015790249283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149636 (A024648 n).toNat

end

end A149635.P5306697015790249283

/-! ## A149635.P2545106650880706843

`A149636(A024649(n))`
-/

namespace A149635.P2545106650880706843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149636 (A024649 n).toNat

end

end A149635.P2545106650880706843

/-!
# A149636: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149636, there is no canonical definition to state claims against.
-/

/-! ## A149636.P5123057540824956542

`or(A105570(A149632(n)), A149635(n))`
-/

namespace A149636.P5123057540824956542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105570 (A149632 n).toNat) (A149635 n)

end

end A149636.P5123057540824956542

/-!
# A149637: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149637, there is no canonical definition to state claims against.
-/

/-! ## A149637.P7185659419178496113

`A000026(A149638(n))`
-/

namespace A149637.P7185659419178496113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149638 n).toNat

end

end A149637.P7185659419178496113

/-! ## A149637.P1271716013373767731

`A149638(A073789(n))`
-/

namespace A149637.P1271716013373767731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149638 (A073789 n).toNat

end

end A149637.P1271716013373767731

/-! ## A149637.P9992887146768239855

`A149638(A171644(n))`
-/

namespace A149637.P9992887146768239855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149638 (A171644 n).toNat

end

end A149637.P9992887146768239855

/-! ## A149637.P2669852663989497642

`A149638(A004869(n+1))`
-/

namespace A149637.P2669852663989497642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149638 (A004869 (n + 1)).toNat

end

end A149637.P2669852663989497642

/-!
# A149639: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149639, there is no canonical definition to state claims against.
-/

/-! ## A149639.P3083224992412184984

`3*A115928(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A149639.P3083224992412184984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  3 * A115928 (a (n - 1)).toNat

end

end A149639.P3083224992412184984

/-! ## A149639.P15554644926350304664

`A254011(abs((-2)^n+1)*∑[lcm(2, 1-(-2)^n)])`
-/

namespace A149639.P15554644926350304664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (|(-2) ^ n + 1| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A149639.P15554644926350304664

/-!
# A149640: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149640, there is no canonical definition to state claims against.
-/

/-! ## A149640.P14424645601662540801

`A107821(A151276(n))`
-/

namespace A149640.P14424645601662540801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (A151276 n).toNat

end

end A149640.P14424645601662540801

/-! ## A149640.P11727838440249194258

`A107821(∑[A109499(n)])`
-/

namespace A149640.P11727838440249194258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149640.P11727838440249194258

/-!
# A149641: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149641, there is no canonical definition to state claims against.
-/

/-! ## A149641.P10221079986280256446

`A244780(A148580(n))`
-/

namespace A149641.P10221079986280256446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244780 (A148580 n).toNat

end

end A149641.P10221079986280256446

/-! ## A149641.P16521137960455124095

`A081753(A283323(n)²)`
-/

namespace A149641.P16521137960455124095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A283323 n ^ 2).toNat

end

end A149641.P16521137960455124095

/-!
# A149642: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149642, there is no canonical definition to state claims against.
-/

/-! ## A149642.P9970385061448432622

`or(A053186(A289797(n)), A218216(n))`
-/

namespace A149642.P9970385061448432622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053186 (A289797 n).toNat) (A218216 n)

end

end A149642.P9970385061448432622

/-! ## A149642.P1989335791507195180

`A131883(2^(n-1)*∑[n²]+2)-1`
-/

namespace A149642.P1989335791507195180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 2)).toNat - 1

end

end A149642.P1989335791507195180

/-!
# A149643: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149643, there is no canonical definition to state claims against.
-/

/-! ## A149643.P586627879708511176

`A149644(n)-A185236((2-n)²)`
-/

namespace A149643.P586627879708511176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149644 n - A185236 ((2 - (n : ℤ)) ^ 2).toNat

end

end A149643.P586627879708511176

/-! ## A149643.P215945694721563484

`A287770(lcm(A141597(n), A149420(n)))`
-/

namespace A149643.P215945694721563484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (Int.lcm (A141597 n) (A149420 n))

end

end A149643.P215945694721563484

/-! ## A149643.P13268458810123564004

`A287770(A149420(lcm(n, A177974(n))))`
-/

namespace A149643.P13268458810123564004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (A149420 (Int.lcm (n : ℤ) (A177974 n))).toNat

end

end A149643.P13268458810123564004

/-!
# A149644: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149644, there is no canonical definition to state claims against.
-/

/-! ## A149644.P4010266688589318191

`or(1, A120750(A149645(n)))`
-/

namespace A149644.P4010266688589318191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120750 (A149645 n).toNat)

end

end A149644.P4010266688589318191

/-! ## A149644.P1607582958867959800

`A185236(A038503(n))+A149643(n)`
-/

namespace A149644.P1607582958867959800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 (A038503 n).toNat + A149643 n

end

end A149644.P1607582958867959800

/-! ## A149644.P12155989054223255227

`A149645(n)-A007949(A290356(n))`
-/

namespace A149644.P12155989054223255227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149645 n - A007949 (A290356 n).toNat

end

end A149644.P12155989054223255227

/-!
# A149645: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149645, there is no canonical definition to state claims against.
-/

/-! ## A149645.P14068103767749314512

`A149644(n)+A007949(A290356(n))`
-/

namespace A149645.P14068103767749314512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149644 n + A007949 (A290356 n).toNat

end

end A149645.P14068103767749314512

/-! ## A149645.P4158442605143166763

`A149644(n)+A010893(A336103(n))`
-/

namespace A149645.P4158442605143166763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149644 n + A010893 ((A336103 n).toNat + 13)

end

end A149645.P4158442605143166763

/-! ## A149645.P16489419763344745601

`A320535(A149642(n))+A149644(n)`
-/

namespace A149645.P16489419763344745601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320535 (A149642 n).toNat + A149644 n

end

end A149645.P16489419763344745601

/-!
# A149646: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149646, there is no canonical definition to state claims against.
-/

/-! ## A149646.P352046562959776339

`A185236((2-n)²)+A149645(n)`
-/

namespace A149646.P352046562959776339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 ((2 - (n : ℤ)) ^ 2).toNat + A149645 n

end

end A149646.P352046562959776339

/-! ## A149646.P5994179936779080510

`A220400(A185236(3*n))+A149645(n)`
-/

namespace A149646.P5994179936779080510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A185236 (3 * n)).toNat + A149645 n

end

end A149646.P5994179936779080510

/-!
# A149647: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149647, there is no canonical definition to state claims against.
-/

/-! ## A149647.P2361011375326406238

`A004525(A328281(n)+A155495(n))`
-/

namespace A149647.P2361011375326406238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A328281 n + A155495 n).toNat

end

end A149647.P2361011375326406238

/-! ## A149647.P17920957882574667592

`A004525(or(A005773(n), A328281(n)))`
-/

namespace A149647.P17920957882574667592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (A005773 n) (A328281 n)).toNat

end

end A149647.P17920957882574667592

/-! ## A149647.P3255178578700903137

`or(A004525(A328281(n)), A141690(n))`
-/

namespace A149647.P3255178578700903137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A328281 n).toNat) (A141690 n)

end

end A149647.P3255178578700903137

/-!
# A149648: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149648, there is no canonical definition to state claims against.
-/

/-! ## A149648.P17859051597382957841

`A004525(A149652(n)+A149640(n))`
-/

namespace A149648.P17859051597382957841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149652 n + A149640 n).toNat

end

end A149648.P17859051597382957841

/-! ## A149648.P12496376064143071051

`A025480(A149652(n)+A149640(n))`
-/

namespace A149648.P12496376064143071051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149652 n + A149640 n).toNat

end

end A149648.P12496376064143071051

/-! ## A149648.P10242901431561285579

`A065033(A149652(n)+A149640(n))`
-/

namespace A149648.P10242901431561285579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149652 n + A149640 n).toNat

end

end A149648.P10242901431561285579

/-!
# A149649: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149649, there is no canonical definition to state claims against.
-/

/-! ## A149649.P4040114950474776677

`or(1, A068307(∑{digits}[n, #!*C(10, #)]))`
-/

namespace A149649.P4040114950474776677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A068307 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x * Nat.choose 10 x).sum)

end

end A149649.P4040114950474776677

/-! ## A149649.P630211671967595651

`A154503(A148130(n))`
-/

namespace A149649.P630211671967595651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154503 (A148130 n).toNat

end

end A149649.P630211671967595651

/-!
# A149650: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149650, there is no canonical definition to state claims against.
-/

/-! ## A149650.P4343000149492145102

`A226457(A149708(n))`
-/

namespace A149650.P4343000149492145102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226457 (A149708 n).toNat

end

end A149650.P4343000149492145102

/-! ## A149650.P13916645749893634108

`or(1, A247835(A086615(n)))`
-/

namespace A149650.P13916645749893634108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247835 (A086615 n).toNat)

end

end A149650.P13916645749893634108

/-!
# A149651: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149651, there is no canonical definition to state claims against.
-/

/-! ## A149651.P13261908927252940004

`A248566(A149204(n))`
-/

namespace A149651.P13261908927252940004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A149204 n).toNat

end

end A149651.P13261908927252940004

/-! ## A149651.P1541775114727182796

`A330097(A113989(n))-2*n`
-/

namespace A149651.P1541775114727182796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330097 (A113989 n).toNat - (2 * n : ℤ)

end

end A149651.P1541775114727182796

/-!
# A149652: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149652, there is no canonical definition to state claims against.
-/

/-! ## A149652.P7806645853872974573

`A248566(A149208(n))`
-/

namespace A149652.P7806645853872974573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A149208 n).toNat

end

end A149652.P7806645853872974573

/-! ## A149652.P4805925911168570848

`A323793(n)+A004198(A337041(n))`
-/

namespace A149652.P4805925911168570848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323793 n + A004198 (A337041 n).toNat

end

end A149652.P4805925911168570848

/-!
# A149653: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149653, there is no canonical definition to state claims against.
-/

/-! ## A149653.P17116878223653292775

`A221140(A241723(n)+1)`
-/

namespace A149653.P17116878223653292775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221140 (A241723 (n + 15) + 1).toNat

end

end A149653.P17116878223653292775

/-! ## A149653.P4911614050755538662

`A211977(A063834(n)+2)`
-/

namespace A149653.P4911614050755538662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211977 (A063834 n + 2).toNat

end

end A149653.P4911614050755538662

/-!
# A149654: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149654, there is no canonical definition to state claims against.
-/

/-! ## A149654.P446356935144642235

`A004525(A005578(n)*A026383(n))`
-/

namespace A149654.P446356935144642235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A005578 n * A026383 n).toNat

end

end A149654.P446356935144642235

/-! ## A149654.P15719754162344567681

`A028234(A005578(n)*A026383(n))`
-/

namespace A149654.P15719754162344567681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A005578 n * A026383 n).toNat

end

end A149654.P15719754162344567681

/-! ## A149654.P1481443585446490500

`A106609(A005578(n)*A026383(n))`
-/

namespace A149654.P1481443585446490500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A005578 n * A026383 n).toNat

end

end A149654.P1481443585446490500

/-!
# A149655: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149655, there is no canonical definition to state claims against.
-/

/-! ## A149655.P7729384223841512172

`A186028(A048449(n))`
-/

namespace A149655.P7729384223841512172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186028 (A048449 n).toNat

end

end A149655.P7729384223841512172

/-! ## A149655.P9781340804724144848

`A186028(or(4, A034961(n+1)))`
-/

namespace A149655.P9781340804724144848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186028 (Int.lor 4 (A034961 (n + 1))).toNat

end

end A149655.P9781340804724144848

/-!
# A149656: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, -1), (1, 1, 1)}.

The programs for A149656, there is no canonical definition to state claims against.
-/

/-! ## A149656.P17698841194084131287

`A358047(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A149656.P17698841194084131287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A358047 (a (n - 1)).toNat

end

end A149656.P17698841194084131287

/-! ## A149656.P1479491619207765557

`A129140(A148604(n))`
-/

namespace A149656.P1479491619207765557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129140 (A148604 n).toNat

end

end A149656.P1479491619207765557

/-!
# A149657: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149657, there is no canonical definition to state claims against.
-/

/-! ## A149657.P18036261285925207091

`A176301(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A149657.P18036261285925207091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A176301 (a (n - 1)).toNat + 2

end

end A149657.P18036261285925207091

/-! ## A149657.P3832571242491741774

`A149658(A001096(n))`
-/

namespace A149657.P3832571242491741774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149658 (A001096 n).toNat

end

end A149657.P3832571242491741774

/-!
# A149658: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149658, there is no canonical definition to state claims against.
-/

/-! ## A149658.P9895102941194654437

`A000026(A149659(n))`
-/

namespace A149658.P9895102941194654437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149659 n).toNat

end

end A149658.P9895102941194654437

/-! ## A149658.P1523735353730462159

`A149659(A073789(n))`
-/

namespace A149658.P1523735353730462159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149659 (A073789 n).toNat

end

end A149658.P1523735353730462159

/-! ## A149658.P4428902145990270126

`A149659(A171644(n))`
-/

namespace A149658.P4428902145990270126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149659 (A171644 n).toNat

end

end A149658.P4428902145990270126

/-! ## A149658.P438469602122854301

`A149659(A004869(n+1))`
-/

namespace A149658.P438469602122854301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149659 (A004869 (n + 1)).toNat

end

end A149658.P438469602122854301

/-!
# A149660: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149660, there is no canonical definition to state claims against.
-/

/-! ## A149660.P734214894964064655

`A000026(A149661(n))`
-/

namespace A149660.P734214894964064655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149661 n).toNat

end

end A149660.P734214894964064655

/-! ## A149660.P6480538813600053125

`A149661(A073789(n))`
-/

namespace A149660.P6480538813600053125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149661 (A073789 n).toNat

end

end A149660.P6480538813600053125

/-! ## A149660.P14213427769427299683

`A149661(A171644(n))`
-/

namespace A149660.P14213427769427299683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149661 (A171644 n).toNat

end

end A149660.P14213427769427299683

/-! ## A149660.P14073765316762407110

`A149661(A004869(n+1))`
-/

namespace A149660.P14073765316762407110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149661 (A004869 (n + 1)).toNat

end

end A149660.P14073765316762407110

/-!
# A149662: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149662, there is no canonical definition to state claims against.
-/

/-! ## A149662.P15704944384052825252

`A320535(A149627(n))+A149659(n)`
-/

namespace A149662.P15704944384052825252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320535 (A149627 n).toNat + A149659 n

end

end A149662.P15704944384052825252

/-! ## A149662.P16649767920462842322

`A320535(A149627(n))+A149660(n)`
-/

namespace A149662.P16649767920462842322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320535 (A149627 n).toNat + A149660 n

end

end A149662.P16649767920462842322

/-! ## A149662.P11833162566084064546

`A320535(A149627(n))+A149661(n)`
-/

namespace A149662.P11833162566084064546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320535 (A149627 n).toNat + A149661 n

end

end A149662.P11833162566084064546

/-!
# A149663: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 1, 1)}.

The programs for A149663, there is no canonical definition to state claims against.
-/

/-! ## A149663.P874646841326168186

`∑[A081594((2-2^n)²)]`
-/

namespace A149663.P874646841326168186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 ((2 - (2 ^ n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149663.P874646841326168186

/-! ## A149663.P11186215991935609578

`A106250(5*A230588(n+1))`
-/

namespace A149663.P11186215991935609578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106250 (5 * A230588 (n + 1)).toNat

end

end A149663.P11186215991935609578

/-! ## A149663.P1229441277646554107

`A008611(6*A230588(n+1))`
-/

namespace A149663.P1229441277646554107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * A230588 (n + 1)).toNat

end

end A149663.P1229441277646554107

/-!
# A149664: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149664, there is no canonical definition to state claims against.
-/

/-! ## A149664.P16110748720808272700

`or(A003963(A084137(n)), A149662(n))`
-/

namespace A149664.P16110748720808272700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003963 (A084137 n).toNat) (A149662 n)

end

end A149664.P16110748720808272700

/-! ## A149664.P1463330339108610363

`or(A149662(n), A325538(A149668(n)))`
-/

namespace A149664.P1463330339108610363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149662 n) (A325538 (A149668 n).toNat)

end

end A149664.P1463330339108610363

/-!
# A149665: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149665, there is no canonical definition to state claims against.
-/

/-! ## A149665.P4534274256077731201

`A008621(4^n-and(2, n+2)^n)`
-/

namespace A149665.P4534274256077731201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 ^ n - Nat.land 2 (n + 2) ^ n)

end

end A149665.P4534274256077731201

/-! ## A149665.P4552862971347272573

`A008611(2*A150401(n))`
-/

namespace A149665.P4552862971347272573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A150401 n).toNat

end

end A149665.P4552862971347272573

/-! ## A149665.P2949478661818407203

`and(A149666(A073788(n)), A149668(n))`
-/

namespace A149665.P2949478661818407203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A149666 (A073788 n).toNat) (A149668 n)

end

end A149665.P2949478661818407203

/-!
# A149666: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149666, there is no canonical definition to state claims against.
-/

/-! ## A149666.P15448462590978012062

`A294891(A149663(n+2))+A149665(n)`
-/

namespace A149666.P15448462590978012062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (A149663 (n + 2)).toNat + A149665 n

end

end A149666.P15448462590978012062

/-!
# A149667: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149667, there is no canonical definition to state claims against.
-/

/-! ## A149667.P10263947952596246319

`or(A000093(A208227(n)), A149663(n))`
-/

namespace A149667.P10263947952596246319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000093 (A208227 n).toNat) (A149663 n)

end

end A149667.P10263947952596246319

/-! ## A149667.P1058665573605000557

`A351172(floor(sqrt(n^n)))`
-/

namespace A149667.P1058665573605000557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351172 (Nat.sqrt (n ^ n))

end

end A149667.P1058665573605000557

/-!
# A149668: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149668, there is no canonical definition to state claims against.
-/

/-! ## A149668.P1577520426437993622

`A088743(A356942(n))`
-/

namespace A149668.P1577520426437993622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088743 (A356942 n).toNat

end

end A149668.P1577520426437993622

/-! ## A149668.P8802411597526402736

`A186219(A199874(n)^((n+1)/∏{p}[n+1, gcd(n+1, #²)]))`
-/

namespace A149668.P8802411597526402736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (SequenceMachineLib.roundAway ((A199874 n : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ))).toNat

end

end A149668.P8802411597526402736

/-! ## A149668.P14661372323221353106

`A356942(n)+A001221(A144009(n))`
-/

namespace A149668.P14661372323221353106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356942 n + A001221 (A144009 n).toNat

end

end A149668.P14661372323221353106

/-!
# A149669: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149669, there is no canonical definition to state claims against.
-/

/-! ## A149669.P4861710366915647296

`or(1, A008611(A149448(n+1)))`
-/

namespace A149669.P4861710366915647296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008611 (A149448 (n + 1)).toNat)

end

end A149669.P4861710366915647296

/-! ## A149669.P5792766861999280936

`A090915(A149681(n))`
-/

namespace A149669.P5792766861999280936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A149681 n).toNat

end

end A149669.P5792766861999280936

/-!
# A149670: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149670, there is no canonical definition to state claims against.
-/

/-! ## A149670.P7261335089679427288

`A149671(A073788(n))`
-/

namespace A149670.P7261335089679427288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149671 (A073788 n).toNat

end

end A149670.P7261335089679427288

/-! ## A149670.P1680637470511634170

`A149671(A171596(n))`
-/

namespace A149670.P1680637470511634170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149671 (A171596 n).toNat

end

end A149670.P1680637470511634170

/-! ## A149670.P10791873175937969007

`A238593(A149671(n))`
-/

namespace A149670.P10791873175937969007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238593 (A149671 n).toNat

end

end A149670.P10791873175937969007

/-!
# A149672: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149672, there is no canonical definition to state claims against.
-/

/-! ## A149672.P14235839540405851507

`A247833(A149593(n))`
-/

namespace A149672.P14235839540405851507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A149593 n).toNat

end

end A149672.P14235839540405851507

/-! ## A149672.P8446178013485147762

`A154099(A023873(n))`
-/

namespace A149672.P8446178013485147762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A023873 n).toNat

end

end A149672.P8446178013485147762

/-!
# A149673: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149673, there is no canonical definition to state claims against.
-/

/-! ## A149673.P7183867993411633062

`A049820(or(3, A150022(n)))`
-/

namespace A149673.P7183867993411633062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (Int.lor 3 (A150022 n)).toNat

end

end A149673.P7183867993411633062

/-! ## A149673.P13300214296172431188

`A260124(A148782(n))`
-/

namespace A149673.P13300214296172431188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A148782 n).toNat

end

end A149673.P13300214296172431188

/-!
# A149674: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149674, there is no canonical definition to state claims against.
-/

/-! ## A149674.P14685272772305498949

`and(A149675(n), A222253(A149675(n)))`
-/

namespace A149674.P14685272772305498949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A149675 n) (A222253 (A149675 n).toNat)

end

end A149674.P14685272772305498949

/-! ## A149674.P3370154766445868649

`A149675(A073788(n))`
-/

namespace A149674.P3370154766445868649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149675 (A073788 n).toNat

end

end A149674.P3370154766445868649

/-! ## A149674.P16046642143698894275

`A093783(A149675(n))`
-/

namespace A149674.P16046642143698894275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (A149675 n).toNat

end

end A149674.P16046642143698894275

/-!
# A149675: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149675, there is no canonical definition to state claims against.
-/

/-! ## A149675.P12506682942515861506

`or(A003557(A149678(n)), A149674(n))`
-/

namespace A149675.P12506682942515861506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003557 (A149678 n).toNat) (A149674 n)

end

end A149675.P12506682942515861506

/-! ## A149675.P17293152257793751570

`or(A003557(A149679(n)), A149674(n))`
-/

namespace A149675.P17293152257793751570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003557 (A149679 n).toNat) (A149674 n)

end

end A149675.P17293152257793751570

/-! ## A149675.P3664001697412934991

`or(A007318(A110860(n+1)), A149674(n))`
-/

namespace A149675.P3664001697412934991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A110860 (n + 1)).toNat) (A149674 n)

end

end A149675.P3664001697412934991

/-!
# A149676: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149676, there is no canonical definition to state claims against.
-/

/-! ## A149676.P5434358958736849139

`A060145(A059279(n+1))`
-/

namespace A149676.P5434358958736849139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A059279 (n + 1)).toNat

end

end A149676.P5434358958736849139

/-! ## A149676.P2837692003927285555

`A105670(A150460(n))`
-/

namespace A149676.P2837692003927285555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A150460 n).toNat

end

end A149676.P2837692003927285555

/-!
# A149677: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149677, there is no canonical definition to state claims against.
-/

/-! ## A149677.P9114589296871397498

`A001031(6^n)-n`
-/

namespace A149677.P9114589296871397498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (6 ^ n) - (n : ℤ)

end

end A149677.P9114589296871397498

/-! ## A149677.P2363583004458216877

`A045917(6^n)-(n-1)`
-/

namespace A149677.P2363583004458216877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (6 ^ n) - ((n : ℤ) - 1)

end

end A149677.P2363583004458216877

/-!
# A149678: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149678, there is no canonical definition to state claims against.
-/

/-! ## A149678.P10346232889840704938

`A004151(A149679(n))`
-/

namespace A149678.P10346232889840704938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A149679 n).toNat

end

end A149678.P10346232889840704938

/-! ## A149678.P7226929013103452650

`A149679(A073789(n))`
-/

namespace A149678.P7226929013103452650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149679 (A073789 n).toNat

end

end A149678.P7226929013103452650

/-! ## A149678.P5833755959270858554

`A149679(A171644(n))`
-/

namespace A149678.P5833755959270858554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149679 (A171644 n).toNat

end

end A149678.P5833755959270858554

/-! ## A149678.P8646656021124640865

`A149679(A004869(n+1))`
-/

namespace A149678.P8646656021124640865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149679 (A004869 (n + 1)).toNat

end

end A149678.P8646656021124640865

/-!
# A149679: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149679, there is no canonical definition to state claims against.
-/

/-! ## A149679.P2502171756622179630

`or(A007293(A075125(n+1)), A149678(n))`
-/

namespace A149679.P2502171756622179630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007293 (A075125 (n + 1)).toNat) (A149678 n)

end

end A149679.P2502171756622179630

/-!
# A149680: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149680, there is no canonical definition to state claims against.
-/

/-! ## A149680.P1822827299241810854

`or(1, A326913(2^n))`
-/

namespace A149680.P1822827299241810854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326913 (2 ^ n))

end

end A149680.P1822827299241810854

/-! ## A149680.P13694884071492801737

`A175944(A062207(n))`
-/

namespace A149680.P13694884071492801737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A062207 n).toNat

end

end A149680.P13694884071492801737

/-!
# A149681: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149681, there is no canonical definition to state claims against.
-/

/-! ## A149681.P16920058610496793526

`A149682(n)-A191928(A000129(n))`
-/

namespace A149681.P16920058610496793526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149682 n - A191928 (A000129 n).toNat

end

end A149681.P16920058610496793526

/-! ## A149681.P3541285947205490079

`∏{e}[11^n, A149682(#)]`
-/

namespace A149681.P3541285947205490079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A149682 (Nat.factorization (f1 n) p)

end

end A149681.P3541285947205490079

/-!
# A149682: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149682, there is no canonical definition to state claims against.
-/

/-! ## A149682.P15090110915472577243

`or(A007293(A285261(n+1)), A149681(n))`
-/

namespace A149682.P15090110915472577243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007293 (A285261 (n + 1)).toNat) (A149681 n)

end

end A149682.P15090110915472577243

/-! ## A149682.P3802607460303842685

`A191928(A000129(n))+A149681(n)`
-/

namespace A149682.P3802607460303842685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191928 (A000129 n).toNat + A149681 n

end

end A149682.P3802607460303842685

/-! ## A149682.P18024953970937796774

`or(A149681(n), A179519(A149686(n)))`
-/

namespace A149682.P18024953970937796774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149681 n) (A179519 (A149686 n).toNat)

end

end A149682.P18024953970937796774

/-!
# A149684: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149684, there is no canonical definition to state claims against.
-/

/-! ## A149684.P3096655590376228519

`or(A211164(2*n)², A304717(A304719(n)))`
-/

namespace A149684.P3096655590376228519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A211164 (2 * n) ^ 2) (A304717 (A304719 n).toNat)

end

end A149684.P3096655590376228519

/-! ## A149684.P1039683864112013590

`A159477(A007161(n))`
-/

namespace A149684.P1039683864112013590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A007161 n).toNat

end

end A149684.P1039683864112013590

/-!
# A149685: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149685, there is no canonical definition to state claims against.
-/

/-! ## A149685.P17466388079198255709

`∏{p}[A149686(n)², #]`
-/

namespace A149685.P17466388079198255709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149686 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149685.P17466388079198255709

/-! ## A149685.P6523488096628431169

`∏{p}[A149687(n)², #]`
-/

namespace A149685.P6523488096628431169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149687 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149685.P6523488096628431169

/-!
# A149687: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149687, there is no canonical definition to state claims against.
-/

/-! ## A149687.P3736392581481553037

`A180601(A138178(n))+A149686(n)`
-/

namespace A149687.P3736392581481553037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180601 (A138178 n).toNat + A149686 n

end

end A149687.P3736392581481553037

/-! ## A149687.P12440920739780317990

`A007599(A150736(n)+A091926(n+1))`
-/

namespace A149687.P12440920739780317990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A150736 n + A091926 (n + 1)).toNat

end

end A149687.P12440920739780317990

/-! ## A149687.P15560277434505095331

`A007599(A221290(n+1)+A150736(n))`
-/

namespace A149687.P15560277434505095331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A221290 (n + 1) + A150736 n).toNat

end

end A149687.P15560277434505095331

/-!
# A149688: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149688, there is no canonical definition to state claims against.
-/

/-! ## A149688.P13006814055081986212

`A149689(n)%p?[2^n-1]`
-/

namespace A149688.P13006814055081986212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149689 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149688.P13006814055081986212

/-! ## A149688.P10428420595152338647

`A059806(A149689(n))`
-/

namespace A149688.P10428420595152338647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A149689 n).toNat

end

end A149688.P10428420595152338647

/-! ## A149688.P8759548797134651091

`A149689(A073788(n))`
-/

namespace A149688.P8759548797134651091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149689 (A073788 n).toNat

end

end A149688.P8759548797134651091

/-!
# A149689: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149689, there is no canonical definition to state claims against.
-/

/-! ## A149689.P4633067793565989688

`or(A063647(A149679(n)), A149688(n))`
-/

namespace A149689.P4633067793565989688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063647 (A149679 n).toNat) (A149688 n)

end

end A149689.P4633067793565989688

/-!
# A149690: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149690, there is no canonical definition to state claims against.
-/

/-! ## A149690.P14049135837452379947

`A050367(A149691(n))`
-/

namespace A149690.P14049135837452379947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A149691 n).toNat

end

end A149690.P14049135837452379947

/-! ## A149690.P6991440059075731691

`A149691(A073788(n))`
-/

namespace A149690.P6991440059075731691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149691 (A073788 n).toNat

end

end A149690.P6991440059075731691

/-! ## A149690.P7357332161771343669

`A149691(A171596(n))`
-/

namespace A149690.P7357332161771343669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149691 (A171596 n).toNat

end

end A149690.P7357332161771343669

/-!
# A149691: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149691, there is no canonical definition to state claims against.
-/

/-! ## A149691.P10089484831596561263

`or(A033183(A106228(n)), A149690(n))`
-/

namespace A149691.P10089484831596561263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033183 (A106228 n).toNat) (A149690 n)

end

end A149691.P10089484831596561263

/-! ## A149691.P8292682917856277714

`or(A112995(A036625(n)), A149690(n))`
-/

namespace A149691.P8292682917856277714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112995 (A036625 n).toNat) (A149690 n)

end

end A149691.P8292682917856277714

/-! ## A149691.P6785733533339554355

`or(A143266(A027379(n)), A149690(n))`
-/

namespace A149691.P6785733533339554355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143266 (A027379 n).toNat) (A149690 n)

end

end A149691.P6785733533339554355

/-! ## A149691.P4089870807960720659

`or(A061397(A149671(n)), A149690(n))`
-/

namespace A149691.P4089870807960720659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061397 (A149671 n).toNat) (A149690 n)

end

end A149691.P4089870807960720659

/-!
# A149692: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149692, there is no canonical definition to state claims against.
-/

/-! ## A149692.P13444937999049570300

`A149693(n)%p?[2^n-1]`
-/

namespace A149692.P13444937999049570300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149693 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149692.P13444937999049570300

/-! ## A149692.P14550820444240320730

`A149693(A073788(n))`
-/

namespace A149692.P14550820444240320730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149693 (A073788 n).toNat

end

end A149692.P14550820444240320730

/-! ## A149692.P5514188320006989258

`A154439(A149693(n))`
-/

namespace A149692.P5514188320006989258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A149693 n).toNat

end

end A149692.P5514188320006989258

/-!
# A149694: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149694, there is no canonical definition to state claims against.
-/

/-! ## A149694.P2582654485087762480

`or(A005374(A150469(n)), A034887(n))`
-/

namespace A149694.P2582654485087762480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005374 (A150469 n).toNat) (A034887 n)

end

end A149694.P2582654485087762480

/-! ## A149694.P12525741844652054643

`or(A005374(A150469(n)), A057357(n))`
-/

namespace A149694.P12525741844652054643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005374 (A150469 n).toNat) (A057357 n)

end

end A149694.P12525741844652054643

/-! ## A149694.P10099928388799372129

`or(A005374(A150469(n)), A124737(n))`
-/

namespace A149694.P10099928388799372129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005374 (A150469 n).toNat) (A124737 n)

end

end A149694.P10099928388799372129

/-! ## A149694.P15175757904741500369

`A005374(A150469(n)+A124737(n)²)`
-/

namespace A149694.P15175757904741500369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A150469 n + A124737 n ^ 2).toNat

end

end A149694.P15175757904741500369

/-!
# A149695: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149695, there is no canonical definition to state claims against.
-/

/-! ## A149695.P8579124928528458547

`A110655(A149686(comp[6*n+2]))`
-/

namespace A149695.P8579124928528458547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A149686 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A149695.P8579124928528458547

/-! ## A149695.P2134495623153699978

`or(A035942(A143547(n)), A149694(n))`
-/

namespace A149695.P2134495623153699978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035942 (A143547 n).toNat) (A149694 n)

end

end A149695.P2134495623153699978

/-!
# A149696: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, -1), (1, 1, 1)}.

The programs for A149696, there is no canonical definition to state claims against.
-/

/-! ## A149696.P14659620474989550373

`A149626(n)+A134022(A028403(n+1))`
-/

namespace A149696.P14659620474989550373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149626 n + A134022 (A028403 (n + 1)).toNat

end

end A149696.P14659620474989550373

/-! ## A149696.P16647891596972233799

`A342001(A004936(n+1))+A149626(n)`
-/

namespace A149696.P16647891596972233799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A004936 (n + 1)).toNat + A149626 n

end

end A149696.P16647891596972233799

/-!
# A149697: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149697, there is no canonical definition to state claims against.
-/

/-! ## A149697.P5149731094173389801

`A149698(n)-A180601(A151488(n))`
-/

namespace A149697.P5149731094173389801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149698 n - A180601 (A151488 n).toNat

end

end A149697.P5149731094173389801

/-! ## A149697.P4727070219041035539

`A090915(A149664(n))`
-/

namespace A149697.P4727070219041035539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A149664 n).toNat

end

end A149697.P4727070219041035539

/-!
# A149698: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149698, there is no canonical definition to state claims against.
-/

/-! ## A149698.P14300070834199983892

`A180601(A151488(n))+A149697(n)`
-/

namespace A149698.P14300070834199983892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180601 (A151488 n).toNat + A149697 n

end

end A149698.P14300070834199983892

/-! ## A149698.P16350538315315337585

`or(A149697(n), A180601(A149686(n)))`
-/

namespace A149698.P16350538315315337585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149697 n) (A180601 (A149686 n).toNat)

end

end A149698.P16350538315315337585

/-!
# A149699: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149699, there is no canonical definition to state claims against.
-/

/-! ## A149699.P10064017054261540791

`A124741(A150115(n))`
-/

namespace A149699.P10064017054261540791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A150115 n).toNat

end

end A149699.P10064017054261540791

/-! ## A149699.P6171348116787229318

`A134237(A198865(n))`
-/

namespace A149699.P6171348116787229318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134237 (A198865 n).toNat

end

end A149699.P6171348116787229318

