import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A328800: Expansion of chi(-x) * chi(x^3) in powers of x where chi() is a Ramanujan theta function.

The programs for A328800, there is no canonical definition to state claims against.
-/

/-! ## A328800.P9589175685018023375

`A033999(n)*A328802(n)`
-/

namespace A328800.P9589175685018023375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A328802 n

end

end A328800.P9589175685018023375

/-! ## A328800.P13320132987615332282

`A087960(n)*A328802(n)`
-/

namespace A328800.P13320132987615332282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A328802 n

end

end A328800.P13320132987615332282

/-! ## A328800.P16548176329105120580

`A094267(n)*A328802(n)`
-/

namespace A328800.P16548176329105120580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A328802 n

end

end A328800.P16548176329105120580

/-! ## A328800.P6054905199959623411

`A219977(n)*A328802(n)`
-/

namespace A328800.P6054905199959623411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A328802 n

end

end A328800.P6054905199959623411

/-! ## A328800.P1297622799241330473

`Δ[A135481(n)]*A328802(n)`
-/

namespace A328800.P1297622799241330473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A328802 n

end

end A328800.P1297622799241330473

/-! ## A328800.P12522804856715370236

`A071935(n+1)*A328802(n)`
-/

namespace A328800.P12522804856715370236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A328802 n

end

end A328800.P12522804856715370236

/-! ## A328800.P6797949883527243016

`A309873(n+1)*A328802(n)`
-/

namespace A328800.P6797949883527243016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) * A328802 n

end

end A328800.P6797949883527243016

/-! ## A328800.P6106182475299518381

`A008683(xor(n, n+1))*A328802(n)`
-/

namespace A328800.P6106182475299518381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.xor n (n + 1)) * A328802 n

end

end A328800.P6106182475299518381

/-! ## A328800.P11486644790530296323

`A008683(A001511(n+1))*A328802(n)`
-/

namespace A328800.P11486644790530296323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001511 (n + 1)).toNat * A328802 n

end

end A328800.P11486644790530296323

/-! ## A328800.P10589967423457621642

`A008683(A006519(n+1))*A328802(n)`
-/

namespace A328800.P10589967423457621642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006519 (n + 1)).toNat * A328802 n

end

end A328800.P10589967423457621642

/-! ## A328800.P6857097770916033713

`ratio[A057077(n)]*A328802(n)`
-/

namespace A328800.P6857097770916033713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A328802 n : ℚ)

end

end A328800.P6857097770916033713

/-! ## A328800.P12252385663099381046

`A057077(n+1)*A328802(n)`
-/

namespace A328800.P12252385663099381046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A328802 n

end

end A328800.P12252385663099381046

/-! ## A328800.P14189313364982137959

`A328802(n)/A033999(n+2)`
-/

namespace A328800.P14189313364982137959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328802 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A328800.P14189313364982137959

/-!
# A328801: Least k such that there exists a square of side length sqrt(A001481(n)) with vertices in a k X k square array of points.

The programs for A328801, there is no canonical definition to state claims against.
-/

/-! ## A328801.P811528878548347938

`A328803(n+2)+1`
-/

namespace A328801.P811528878548347938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 2) + 1

end

end A328801.P811528878548347938

/-! ## A328801.P1535977303213178282

`A334200(A053579(n+1))+A025443(A005179(n+1))`
-/

namespace A328801.P1535977303213178282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334200 (A053579 (n + 1)).toNat + A025443 (A005179 (n + 1)).toNat

end

end A328801.P1535977303213178282

/-! ## A328801.P10213666018940614872

`A366989(A378133(n+1))+1`
-/

namespace A328801.P10213666018940614872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366989 (A378133 (n + 1)).toNat + 1

end

end A328801.P10213666018940614872

/-! ## A328801.P18244624971929752055

`A157684(n+4)+A025142(A296122(n))`
-/

namespace A328801.P18244624971929752055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (n + 4) + A025142 (A296122 n).toNat

end

end A328801.P18244624971929752055

/-! ## A328801.P8903785071410585607

`A081604(lcm(A000070(n+3), A026009(n)))`
-/

namespace A328801.P8903785071410585607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.lcm (A000070 (n + 3)) (A026009 n))

end

end A328801.P8903785071410585607

/-!
# A328802: Expansion of chi(x) * chi(-x^3) in powers of x where chi() is a Ramanujan theta function.

The programs for A328802, there is no canonical definition to state claims against.
-/

/-! ## A328802.P11805384418571083174

`abs(A328800(n))`
-/

namespace A328802.P11805384418571083174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328800 n|

end

end A328802.P11805384418571083174

/-! ## A328802.P6471730216851392150

`A033999(n)*A328800(n)`
-/

namespace A328802.P6471730216851392150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A328800 n

end

end A328802.P6471730216851392150

/-! ## A328802.P8193028903599936003

`A087960(n)*A328800(n)`
-/

namespace A328802.P8193028903599936003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A328800 n

end

end A328802.P8193028903599936003

/-! ## A328802.P17524563891867682468

`A094267(n)*A328800(n)`
-/

namespace A328802.P17524563891867682468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A328800 n

end

end A328802.P17524563891867682468

/-! ## A328802.P9054724759138702

`A219977(n)*A328800(n)`
-/

namespace A328802.P9054724759138702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A328800 n

end

end A328802.P9054724759138702

/-! ## A328802.P13724974452503814536

`gcd(A000038(n), A328800(n))`
-/

namespace A328802.P13724974452503814536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328800 n)

end

end A328802.P13724974452503814536

/-! ## A328802.P6497534370998642170

`lcm(A001492(n), A328800(n))`
-/

namespace A328802.P6497534370998642170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A328800 n)

end

end A328802.P6497534370998642170

/-! ## A328802.P13328998914875104876

`A071935(n+1)*A328800(n)`
-/

namespace A328802.P13328998914875104876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A328800 n

end

end A328802.P13328998914875104876

/-! ## A328802.P16931149093976576722

`A309873(n+1)*A328800(n)`
-/

namespace A328802.P16931149093976576722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) * A328800 n

end

end A328802.P16931149093976576722

/-! ## A328802.P15071995837450604522

`A008683(xor(n, n+1))*A328800(n)`
-/

namespace A328802.P15071995837450604522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.xor n (n + 1)) * A328800 n

end

end A328802.P15071995837450604522

/-! ## A328802.P7921805800026247286

`sqrt(A328800(n)^A169695(3*(n+1)))`
-/

namespace A328802.P7921805800026247286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A328800 n : ℚ) ^ (A169695 (3 * (n + 1)) : ℤ) : ℝ)

end

end A328802.P7921805800026247286

/-! ## A328802.P13988111506597999133

`ratio[A057077(n)]*A328800(n)`
-/

namespace A328802.P13988111506597999133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A328800 n : ℚ)

end

end A328802.P13988111506597999133

/-! ## A328802.P3148000249686789079

`A057077(n+1)*A328800(n)`
-/

namespace A328802.P3148000249686789079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A328800 n

end

end A328802.P3148000249686789079

/-! ## A328802.P2638359351835507706

`A328800(n)/A057077(2*n)`
-/

namespace A328802.P2638359351835507706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328800 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A328802.P2638359351835507706

/-! ## A328802.P9012954989014219584

`A057077(A005408(n))*A057077(n)*A328800(n)`
-/

namespace A328802.P9012954989014219584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A005408 n).toNat * A057077 n * A328800 n

end

end A328802.P9012954989014219584

/-! ## A328802.P10032954374900758499

`∑{d}[A328800(n), A000010(#)]`
-/

namespace A328802.P10032954374900758499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A328802.P10032954374900758499

/-! ## A328802.P3584764935812792930

`A018851(A328800(n)²)`
-/

namespace A328802.P3584764935812792930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A328800 n ^ 2).toNat

end

end A328802.P3584764935812792930

/-! ## A328802.P11121184394168017753

`A000194(A328800(n)²)`
-/

namespace A328802.P11121184394168017753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A328800 n ^ 2).toNat

end

end A328802.P11121184394168017753

/-! ## A328802.P11874018229839675278

`A000196(A328800(n)²)`
-/

namespace A328802.P11874018229839675278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A328800 n ^ 2).toNat

end

end A328802.P11874018229839675278

/-!
# A328803: The minimum value of j + k where j and k are nonnegative integers with j^2 + k^2 = A001481(n).

The programs for A328803, there is no canonical definition to state claims against.
-/

/-! ## A328803.P17276936197372726437

`A229140(n+1)+A385236(n+1)`
-/

namespace A328803.P17276936197372726437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229140 (n + 1) + A385236 (n + 1)

end

end A328803.P17276936197372726437

/-! ## A328803.P7725639355681308396

`A262689(A001481(n+1))+A229140(n+1)`
-/

namespace A328803.P7725639355681308396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A001481 (n + 1)).toNat + A229140 (n + 1)

end

end A328803.P7725639355681308396

/-! ## A328803.P6757558897596751720

`A262689(eq[0, A070176(n)])+A229140(n+1)`
-/

namespace A328803.P6757558897596751720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A229140 (n + 1)

end

end A328803.P6757558897596751720

/-! ## A328803.P14350343975185126178

`A262689(lt[0, A000161(n)])+A229140(n+1)`
-/

namespace A328803.P14350343975185126178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + A229140 (n + 1)

end

end A328803.P14350343975185126178

/-! ## A328803.P8220032206833319410

`A385236(n+1)+A064875(A001481(n+1))`
-/

namespace A328803.P8220032206833319410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385236 (n + 1) + A064875 (A001481 (n + 1)).toNat

end

end A328803.P8220032206833319410

/-! ## A328803.P4058810506646978271

`eq[0, A070176(n)]-A064877(A125110(n+1)^(1/3))`
-/

namespace A328803.P4058810506646978271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A064877 (SequenceMachineLib.roundAway ((A125110 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A328803.P4058810506646978271

/-! ## A328803.P6332610386073599491

`eq[0, A375202(n)]-A064877(A125110(n+1)^(1/3))`
-/

namespace A328803.P6332610386073599491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A064877 (SequenceMachineLib.roundAway ((A125110 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A328803.P6332610386073599491

/-! ## A328803.P5184938240628456146

`lt[0, A000925(n)]-A064877(A125110(n+1)^(1/3))`
-/

namespace A328803.P5184938240628456146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A064877 (SequenceMachineLib.roundAway ((A125110 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A328803.P5184938240628456146

/-! ## A328803.P7585628760521462580

`A125110(n+1)^(1/3)-A064877(∪[A000415(n+1), n²])`
-/

namespace A328803.P7585628760521462580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125110 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) - (A064877 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n) : ℝ)

end

end A328803.P7585628760521462580

/-!
# A328804: The maximum value of j + k where j and k are positive integers with j^2 + k^2 = A001481(n).

The programs for A328804, there is no canonical definition to state claims against.
-/

/-! ## A328804.P14591519289397198450

`A262689(2*A001481(n+1))`
-/

namespace A328804.P14591519289397198450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * A001481 (n + 1)).toNat

end

end A328804.P14591519289397198450

/-! ## A328804.P4494444636184697692

`A262689(2*(A166687(n+1)-1))`
-/

namespace A328804.P4494444636184697692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * (A166687 (n + 1) - 1)).toNat

end

end A328804.P4494444636184697692

/-! ## A328804.P12708801153447071598

`A262689(A128106(n+1)-A000007(n))`
-/

namespace A328804.P12708801153447071598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A128106 (n + 1) - A000007 n).toNat

end

end A328804.P12708801153447071598

/-! ## A328804.P6788437277259383965

`A262689(A057427(n)*A128106(n+1))`
-/

namespace A328804.P6788437277259383965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A057427 n * A128106 (n + 1)).toNat

end

end A328804.P6788437277259383965

/-! ## A328804.P808831565453579800

`A262689(A128106(n+1))%A000070(n)`
-/

namespace A328804.P808831565453579800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262689 (A128106 (n + 1)).toNat) (A000070 n)

end

end A328804.P808831565453579800

/-! ## A328804.P3337135457909598674

`A262689(A128106(n+1)%A010011(n))`
-/

namespace A328804.P3337135457909598674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.tmod (A128106 (n + 1)) (A010011 n)).toNat

end

end A328804.P3337135457909598674

/-! ## A328804.P6445947283052488909

`A262689(A001481(n+1)+A001481(n+1))`
-/

namespace A328804.P6445947283052488909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A001481 (n + 1) + A001481 (n + 1)).toNat

end

end A328804.P6445947283052488909

/-! ## A328804.P182948418684676778

`A262689(A128106(n+1)+A057427(n)-1)`
-/

namespace A328804.P182948418684676778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A128106 (n + 1) + (A057427 n - 1)).toNat

end

end A328804.P182948418684676778

/-! ## A328804.P9368090749244409898

`A262689(A166687(n+1)+A166687(n+1)-2)`
-/

namespace A328804.P9368090749244409898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A166687 (n + 1) + (A166687 (n + 1) - 2)).toNat

end

end A328804.P9368090749244409898

/-! ## A328804.P135610828022818046

`A133388(A128106(n+1)+A000038(n))`
-/

namespace A328804.P135610828022818046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A128106 (n + 1) + A000038 n).toNat

end

end A328804.P135610828022818046

/-! ## A328804.P1331144068160212262

`A133388(A128106(n+1))%A057655(n)`
-/

namespace A328804.P1331144068160212262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133388 (A128106 (n + 1)).toNat) (A057655 n)

end

end A328804.P1331144068160212262

/-! ## A328804.P14692232250657192128

`A262689(lt[0, A104794(n)])`
-/

namespace A328804.P14692232250657192128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328804.P14692232250657192128

/-! ## A328804.P18394951697070866384

`A064876(2*A001481(n+1))`
-/

namespace A328804.P18394951697070866384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (2 * A001481 (n + 1)).toNat

end

end A328804.P18394951697070866384

/-! ## A328804.P10112364740597025378

`A262689(record[A153733(A001481(n+1))])`
-/

namespace A328804.P10112364740597025378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A001481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328804.P10112364740597025378

/-! ## A328804.P3485355042977947510

`A064876(A001481(n+1)+A001481(n+1))`
-/

namespace A328804.P3485355042977947510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A001481 (n + 1) + A001481 (n + 1)).toNat

end

end A328804.P3485355042977947510

/-!
# A328806: Row lengths of A276427: largest k such that a partition of n has k-1 distinct parts i of multiplicity i.

The programs for A328806, there is no canonical definition to state claims against.
-/

/-! ## A328806.P10781389500544101026

`A394247(n)+1`
-/

namespace A328806.P10781389500544101026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 n + 1

end

end A328806.P10781389500544101026

/-! ## A328806.P13183333764066223700

`A074279(n+1-2*A237451(n+1))`
-/

namespace A328806.P13183333764066223700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 ((n + 1 : ℤ) - 2 * A237451 (n + 1)).toNat

end

end A328806.P13183333764066223700

/-! ## A328806.P11664395124659602185

`A074279(n+1-(A237451(n+1)+A237451(n+1)))`
-/

namespace A328806.P11664395124659602185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 ((n + 1 : ℤ) - (A237451 (n + 1) + A237451 (n + 1))).toNat

end

end A328806.P11664395124659602185

/-! ## A328806.P9462205579078733318

`A000005(2^A394247(n))`
-/

namespace A328806.P9462205579078733318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A394247 n : ℤ))).toNat

end

end A328806.P9462205579078733318

/-! ## A328806.P10602772350810907601

`A262190(A098513(∑[A063609(n)]))`
-/

namespace A328806.P10602772350810907601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A098513 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A328806.P10602772350810907601

/-!
# A328807: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) is Sum_{i=0..n} binomial(n,i)*Sum_{j=0..i} binomial(i,j)^k.

The programs for A328807, there is no canonical definition to state claims against.
-/

/-! ## A328807.P8839238410471071808

`A112402(A159314(n))+2*A112367(n)`
-/

namespace A328807.P8839238410471071808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112402 (A159314 n).toNat + 2 * A112367 n

end

end A328807.P8839238410471071808

/-! ## A328807.P15650136292296173354

`A208910(n+1)-A057498(A208908(n+1))`
-/

namespace A328807.P15650136292296173354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) - A057498 (A208908 (n + 1)).toNat

end

end A328807.P15650136292296173354

/-!
# A328808: Constant term in the expansion of (3 + x + y + z + 1/x + 1/y + 1/z + x*y + y*z + z*x + 1/(x*y) + 1/(y*z) + 1/(z*x) + x*y*z + 1/(x*y*z))^n.

The programs for A328808, there is no canonical definition to state claims against.
-/

/-! ## A328808.P10779919003581017705

`A328807(A052905(n+2))`
-/

namespace A328808.P10779919003581017705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (A052905 (n + 2)).toNat

end

end A328808.P10779919003581017705

/-! ## A328808.P7228708251778412315

`A328807(eq[4, A025581(n)])`
-/

namespace A328808.P7228708251778412315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328808.P7228708251778412315

/-! ## A328808.P14062826362318177630

`A328807(eq[5, A193739(n)])`
-/

namespace A328808.P14062826362318177630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328808.P14062826362318177630

/-! ## A328808.P7035235239402329798

`A328807(eq[9, A099375(n)])`
-/

namespace A328808.P7035235239402329798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328808.P7035235239402329798

/-! ## A328808.P12386852596442239498

`A328807(Δ[A264443(n)]-1)`
-/

namespace A328808.P12386852596442239498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (f1 (n + 1) - f1 n - 1).toNat

end

end A328808.P12386852596442239498

/-!
# A328809: Constant term in the expansion of (1 + (1 + w) * (1 + x) * (1 + y) * (1 + z) + (1 + 1/w) * (1 + 1/x) * (1 + 1/y) * (1 + 1/z))^n.

The programs for A328809, there is no canonical definition to state claims against.
-/

/-! ## A328809.P14227572159262481365

`A328807(A055999(n+3))`
-/

namespace A328809.P14227572159262481365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (A055999 (n + 3)).toNat

end

end A328809.P14227572159262481365

/-! ## A328809.P10576700179828591108

`A328807(A056119(n)+15)`
-/

namespace A328809.P10576700179828591108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (A056119 n + 15).toNat

end

end A328809.P10576700179828591108

/-! ## A328809.P12266078185377880246

`A328807(eq[5, A025581(n)])`
-/

namespace A328809.P12266078185377880246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328809.P12266078185377880246

/-! ## A328809.P18203334493817495106

`A328807(eq[6, A193739(n)])`
-/

namespace A328809.P18203334493817495106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328809.P18203334493817495106

/-! ## A328809.P16030949589537061820

`A328807(eq[11, A099375(n)])`
-/

namespace A328809.P16030949589537061820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328809.P16030949589537061820

/-!
# A328810: a(n) = Sum_{i=0..n} binomial(n,i)*Sum_{j=0..i} binomial(i,j)^n.

The programs for A328810, there is no canonical definition to state claims against.
-/

/-! ## A328810.P9160134931399080990

`A328807(∑[4*n])`
-/

namespace A328810.P9160134931399080990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328810.P9160134931399080990

/-! ## A328810.P6960627928125913038

`or(1, A328807(A046092(n)))`
-/

namespace A328810.P6960627928125913038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A328807 (A046092 n).toNat)

end

end A328810.P6960627928125913038

/-! ## A328810.P4812918686055021084

`record[A328807(A240134(n+1))]`
-/

namespace A328810.P4812918686055021084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (A240134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328810.P4812918686055021084

/-! ## A328810.P9707187631668016777

`record[A328807(gcd(n, A003987(n)))]`
-/

namespace A328810.P9707187631668016777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328807 (Int.gcd (n : ℤ) (A003987 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328810.P9707187631668016777

/-! ## A328810.P14439303862858859241

`record[and(A185917(n+1), A328807(n))]`
-/

namespace A328810.P14439303862858859241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A328807 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328810.P14439303862858859241

/-!
# A328811: a(n) = Sum_{i=0..n} (-1)^(n-i)*binomial(n,i)*Sum_{j=0..i} binomial(i,j)^n.

The programs for A328811, there is no canonical definition to state claims against.
-/

/-! ## A328811.P9866995693638742091

`A328747(∑[4*n])`
-/

namespace A328811.P9866995693638742091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328811.P9866995693638742091

/-! ## A328811.P12961404745315948567

`or(1, A328747(A106232(n+1)))`
-/

namespace A328811.P12961404745315948567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A328747 (A106232 (n + 1)).toNat)

end

end A328811.P12961404745315948567

/-! ## A328811.P12428454374443191523

`gcd(A000038(n), A328747(A106232(n+1)))`
-/

namespace A328811.P12428454374443191523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328747 (A106232 (n + 1)).toNat)

end

end A328811.P12428454374443191523

/-! ## A328811.P1410522430918404127

`A014963(A038255(n))*A328747(A106232(n+1))`
-/

namespace A328811.P1410522430918404127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038255 n).toNat * A328747 (A106232 (n + 1)).toNat

end

end A328811.P1410522430918404127

/-! ## A328811.P9620995296467017099

`A001222(A038700(n+1))*A328747(A106232(n+1))`
-/

namespace A328811.P9620995296467017099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038700 (n + 1)).toNat * A328747 (A106232 (n + 1)).toNat

end

end A328811.P9620995296467017099

/-!
# A328812: Constant term in the expansion of (Product_{k=1..n} (1 + x_k) + Product_{k=1..n} (1 + 1/x_k))^n.

The programs for A328812, there is no canonical definition to state claims against.
-/

/-! ## A328812.P17235459852373475134

`A309010(A056220(n+1))`
-/

namespace A328812.P17235459852373475134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A056220 (n + 1)).toNat

end

end A328812.P17235459852373475134

/-! ## A328812.P391678082110871316

`A309010(A004273((n+1)²))`
-/

namespace A328812.P391678082110871316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A004273 ((n + 1) ^ 2)).toNat

end

end A328812.P391678082110871316

/-! ## A328812.P6102168375748206317

`A309010(A001844(n)+2*n)`
-/

namespace A328812.P6102168375748206317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A001844 n + (2 * n : ℤ)).toNat

end

end A328812.P6102168375748206317

/-! ## A328812.P16709629237557637907

`A309010(A001844(n)+n+n)`
-/

namespace A328812.P16709629237557637907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A328812.P16709629237557637907

/-! ## A328812.P6205787778468981510

`A309010(A000217(2*n+1)+n)`
-/

namespace A328812.P6205787778468981510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A328812.P6205787778468981510

/-!
# A328813: Constant term in the expansion of (-1 + Product_{k=1..n} (1 + x_k) + Product_{k=1..n} (1 + 1/x_k))^n.

The programs for A328813, there is no canonical definition to state claims against.
-/

/-! ## A328813.P2852701812677672416

`A328747(A056220(n+1))`
-/

namespace A328813.P2852701812677672416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (A056220 (n + 1)).toNat

end

end A328813.P2852701812677672416

/-! ## A328813.P9449392424612247054

`A328747(eq[2, A126988(n+1)])`
-/

namespace A328813.P9449392424612247054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328813.P9449392424612247054

/-! ## A328813.P9218438057578070337

`A328747(A046092(n)+A005408(n))`
-/

namespace A328813.P9218438057578070337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (A046092 n + A005408 n).toNat

end

end A328813.P9218438057578070337

/-!
# A328814: Constant term in the expansion of (-2 + Product_{k=1..n} (1 + x_k) + Product_{k=1..n} (1 + 1/x_k))^n.

The programs for A328814, there is no canonical definition to state claims against.
-/

/-! ## A328814.P13888571134717647426

`A328748(2*n*(n+2)+1)`
-/

namespace A328814.P13888571134717647426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (2 * (n * (n + 2)) + 1)

end

end A328814.P13888571134717647426

/-!
# A328816: Number of semi-magic (only short lines are magic) knight's tours on a 4 X 2n board.

The programs for A328816, there is no canonical definition to state claims against.
-/

/-! ## A328816.P5213688322826323752

`A309273(2*(n+1))`
-/

namespace A328816.P5213688322826323752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309273 (2 * (n + 1))

end

end A328816.P5213688322826323752

/-! ## A328816.P9120176231255431896

`lcm(2, A309273(A103517(n)))`
-/

namespace A328816.P9120176231255431896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A309273 (A103517 n).toNat)

end

end A328816.P9120176231255431896

/-! ## A328816.P9500121687943952285

`A309273(record[2-xor(1, -n)])%A062970(n)`
-/

namespace A328816.P9500121687943952285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A062970 n)

end

end A328816.P9500121687943952285

/-! ## A328816.P12758356897998513197

`A309273(A103517(n))%A022053(n)`
-/

namespace A328816.P12758356897998513197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309273 (A103517 n).toNat) (A022053 n)

end

end A328816.P12758356897998513197

/-! ## A328816.P10211863281661303835

`A007318(∑[n])*A309273(A103517(n))`
-/

namespace A328816.P10211863281661303835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A309273 (A103517 n).toNat

end

end A328816.P10211863281661303835

/-!
# A328818: 2 * x-coordinate of the points of a counterclockwise spiral on an hexagonal grid.

The programs for A328818, the canonical program `A328818.P2352908255522347692` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328818 has offset 0).

The definition of A328818 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307013, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328818.P2352908255522347692

`A307011(n)+A307013(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A328818

/-- `A307011(n)+A307013(n)` -/
def P2352908255522347692.Spec : Prop :=
  ∀ n, P2352908255522347692.a n = A328818 n

theorem P2352908255522347692.correct : P2352908255522347692.Spec := by
  intro n
  simp only [A328818]

end A328818

/-! ## A328818.P13998165759992887546

`A307012(n)+2*A307011(n)`
-/

namespace A328818.P13998165759992887546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 n + 2 * A307011 n

end

end A328818.P13998165759992887546

namespace A328818

/-- `A307012(n)+2*A307011(n)` -/
def P13998165759992887546.Spec : Prop :=
  ∀ n, P13998165759992887546.a n = A328818 n

theorem P13998165759992887546.correct : P13998165759992887546.Spec := by
  intro n
  simp only [A328818, Nat.add_sub_cancel, A328818.P13998165759992887546.a, A328818.P2352908255522347692.a, A307011, A307011.P16481018969621470149.a, A307012, A307012.P6050295120128097672.f1, A307012.P6050295120128097672.a, A307013, A307013.P16025431409212704238.a, A036496, A036496.P11965980265745924204.f1, A036496.P11965980265745924204.a, A128834, A128834.P16779687439637953687.a, A184010, A184010.P2278318878043054188.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A328818

/-! ## A328818.P2783559531280379875

`2*A307013(n)-A307012(n)`
-/

namespace A328818.P2783559531280379875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307013 n - A307012 n

end

end A328818.P2783559531280379875

namespace A328818

/-- `2*A307013(n)-A307012(n)` -/
def P2783559531280379875.Spec : Prop :=
  ∀ n, P2783559531280379875.a n = A328818 n

theorem P2783559531280379875.correct : P2783559531280379875.Spec := by
  intro n
  simp only [A328818, Nat.add_sub_cancel, A328818.P2783559531280379875.a, A328818.P2352908255522347692.a, A307011, A307011.P16481018969621470149.a, A307012, A307012.P6050295120128097672.f1, A307012.P6050295120128097672.a, A307013, A307013.P16025431409212704238.a, A036496, A036496.P11965980265745924204.f1, A036496.P11965980265745924204.a, A128834, A128834.P16779687439637953687.a, A184010, A184010.P2278318878043054188.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A328818

/-! ## A328818.P13687694020227779682

`A307013(n)+A307012(A184010(n+1))`
-/

namespace A328818.P13687694020227779682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 n + A307012 (A184010 (n + 1)).toNat

end

end A328818.P13687694020227779682

namespace A328818

/-- `A307013(n)+A307012(A184010(n+1))` -/
def P13687694020227779682.Spec : Prop :=
  ∀ n, P13687694020227779682.a n = A328818 n

theorem P13687694020227779682.correct : P13687694020227779682.Spec := by
  intro n
  simp only [A328818, Nat.add_sub_cancel, A328818.P13687694020227779682.a, A328818.P2352908255522347692.a, A184010, A184010.P2278318878043054188.a, A307011, A307011.P16481018969621470149.a, A307012, A307012.P6050295120128097672.f1, A307012.P6050295120128097672.a, A307013, A307013.P16025431409212704238.a, A036496, A036496.P11965980265745924204.f1, A036496.P11965980265745924204.a, A128834, A128834.P16779687439637953687.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A328818

/-! ## A328818.P17346412594591769773

`A307012(n)+2*A307012(A184010(n+1))`
-/

namespace A328818.P17346412594591769773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 n + 2 * A307012 (A184010 (n + 1)).toNat

end

end A328818.P17346412594591769773

namespace A328818

/-- `A307012(n)+2*A307012(A184010(n+1))` -/
def P17346412594591769773.Spec : Prop :=
  ∀ n, P17346412594591769773.a n = A328818 n

theorem P17346412594591769773.correct : P17346412594591769773.Spec := by
  intro n
  simp only [A328818, Nat.add_sub_cancel, A328818.P17346412594591769773.a, A328818.P2352908255522347692.a, A184010, A184010.P2278318878043054188.a, A307011, A307011.P16481018969621470149.a, A307012, A307012.P6050295120128097672.f1, A307012.P6050295120128097672.a, A307013, A307013.P16025431409212704238.a, A036496, A036496.P11965980265745924204.f1, A036496.P11965980265745924204.a, A128834, A128834.P16779687439637953687.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A328818

/-! ## A328818.P14639464510096474966

`A307011(n)-A345978(n)`
-/

namespace A328818.P14639464510096474966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n - A345978 n

end

end A328818.P14639464510096474966

namespace A328818

/-- `A307011(n)-A345978(n)` -/
def P14639464510096474966.Spec : Prop :=
  ∀ n, P14639464510096474966.a n = A328818 n

theorem P14639464510096474966.correct : P14639464510096474966.Spec := by
  intro n
  simp only [A328818, Nat.add_sub_cancel, A328818.P14639464510096474966.a, A328818.P2352908255522347692.a, A307011, A307011.P16481018969621470149.a, A307013, A307013.P16025431409212704238.a, A345978, A345978.P5377370654684222569.a, A184010, A184010.P2278318878043054188.a, A307012, A307012.P6050295120128097672.f1, A307012.P6050295120128097672.a, A036496, A036496.P11965980265745924204.f1, A036496.P11965980265745924204.a, A128834, A128834.P16779687439637953687.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A328818

/-! ## A328818.P9716490375236488778

`A307013(n)-(A345978(n)+A307012(n))`
-/

namespace A328818.P9716490375236488778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 n - (A345978 n + A307012 n)

end

end A328818.P9716490375236488778

namespace A328818

/-- `A307013(n)-(A345978(n)+A307012(n))` -/
def P9716490375236488778.Spec : Prop :=
  ∀ n, P9716490375236488778.a n = A328818 n

theorem P9716490375236488778.correct : P9716490375236488778.Spec := by
  intro n
  simp only [A328818, Nat.add_sub_cancel, A328818.P9716490375236488778.a, A328818.P2352908255522347692.a, A307011, A307011.P16481018969621470149.a, A307012, A307012.P6050295120128097672.f1, A307012.P6050295120128097672.a, A307013, A307013.P16025431409212704238.a, A345978, A345978.P5377370654684222569.a, A036496, A036496.P11965980265745924204.f1, A036496.P11965980265745924204.a, A128834, A128834.P16779687439637953687.a, A184010, A184010.P2278318878043054188.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A328818

/-! ## A328818.P16819879219240310489

`A307011(n)+A307011(A345978(n)+A049450(n))`
-/

namespace A328818.P16819879219240310489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n + A307011 (A345978 n + A049450 n).toNat

end

end A328818.P16819879219240310489

namespace A328818

/-- `A307011(n)+A307011(A345978(n)+A049450(n))` -/
def P16819879219240310489.Spec : Prop :=
  ∀ n, P16819879219240310489.a n = A328818 n

end A328818

/-! ## A328818.P4845192667917226965

`A307011(n)-A307011(A045944(n)-A307013(n))`
-/

namespace A328818.P4845192667917226965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n - A307011 (A045944 n - A307013 n).toNat

end

end A328818.P4845192667917226965

namespace A328818

/-- `A307011(n)-A307011(A045944(n)-A307013(n))` -/
def P4845192667917226965.Spec : Prop :=
  ∀ n, P4845192667917226965.a n = A328818 n

end A328818

/-!
# A328819: Third digit after decimal point of square root of n.

The programs for A328819, the canonical program `A328819.P15183558570782667744` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328819 has offset 1).

The definition of A328819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328819.P15183558570782667744

`A111862(50*2*(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328819

/-- `A111862(50*2*(n+1))` -/
def P15183558570782667744.Spec : Prop :=
  ∀ n, P15183558570782667744.a n = A328819 (n + 1)

theorem P15183558570782667744.correct : P15183558570782667744.Spec := by
  intro n
  simp only [A328819, Nat.add_sub_cancel]

end A328819

/-! ## A328819.P12736572275007020628

`dr(A111862(A044332(n+1)))`
-/

namespace A328819.P12736572275007020628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A111862 (A044332 (n + 1)).toNat)

end

end A328819.P12736572275007020628

namespace A328819

/-- `dr(A111862(A044332(n+1)))` -/
def P12736572275007020628.Spec : Prop :=
  ∀ n, (P12736572275007020628.a n : ℤ) = A328819 (n + 1)

end A328819

/-! ## A328819.P1229108033476939981

`A111862(A044332(n+1))/A054977(n)`
-/

namespace A328819.P1229108033476939981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A328819.P1229108033476939981

namespace A328819

/-- `A111862(A044332(n+1))/A054977(n)` -/
def P1229108033476939981.Spec : Prop :=
  ∀ n, P1229108033476939981.a n = (A328819 (n + 1) : ℚ)

end A328819

/-! ## A328819.P737635781316263702

`A111862(A044332(n+1))+A000007(n+1)`
-/

namespace A328819.P737635781316263702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (A044332 (n + 1)).toNat + A000007 (n + 1)

end

end A328819.P737635781316263702

namespace A328819

/-- `A111862(A044332(n+1))+A000007(n+1)` -/
def P737635781316263702.Spec : Prop :=
  ∀ n, P737635781316263702.a n = A328819 (n + 1)

end A328819

/-! ## A328819.P13794778383549066043

`A111862(A044332(n+1))+A000122(or(2, n))`
-/

namespace A328819.P13794778383549066043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (A044332 (n + 1)).toNat + A000122 (Nat.lor 2 n)

end

end A328819.P13794778383549066043

namespace A328819

/-- `A111862(A044332(n+1))+A000122(or(2, n))` -/
def P13794778383549066043.Spec : Prop :=
  ∀ n, P13794778383549066043.a n = A328819 (n + 1)

end A328819

/-! ## A328819.P11254269273227205193

`A111862(A044332(n+1))/A007318(C(2, n))`
-/

namespace A328819.P11254269273227205193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A328819.P11254269273227205193

namespace A328819

/-- `A111862(A044332(n+1))/A007318(C(2, n))` -/
def P11254269273227205193.Spec : Prop :=
  ∀ n, P11254269273227205193.a n = (A328819 (n + 1) : ℚ)

end A328819

/-! ## A328819.P11298985962482255141

`A111862(A044332(n+1))+C(n, A038226(n))`
-/

namespace A328819.P11298985962482255141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (A044332 (n + 1)).toNat + (Nat.choose n (A038226 n).toNat : ℤ)

end

end A328819.P11298985962482255141

namespace A328819

/-- `A111862(A044332(n+1))+C(n, A038226(n))` -/
def P11298985962482255141.Spec : Prop :=
  ∀ n, P11298985962482255141.a n = A328819 (n + 1)

end A328819

/-! ## A328819.P17336829785838256084

`A111862(A044332(n+1))/A000040(n+2)%2`
-/

namespace A328819.P17336829785838256084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A328819.P17336829785838256084

namespace A328819

/-- `A111862(A044332(n+1))/A000040(n+2)%2` -/
def P17336829785838256084.Spec : Prop :=
  ∀ n, P17336829785838256084.a n = (A328819 (n + 1) : ℚ)

end A328819

/-! ## A328819.P11867925357918188864

`A111862(A044332(n+1))/A000041(C(2, n+2))`
-/

namespace A328819.P11867925357918188864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A328819.P11867925357918188864

namespace A328819

/-- `A111862(A044332(n+1))/A000041(C(2, n+2))` -/
def P11867925357918188864.Spec : Prop :=
  ∀ n, P11867925357918188864.a n = (A328819 (n + 1) : ℚ)

end A328819

/-! ## A328819.P10448027633503089433

`A111862(A044332(n+1))/A000032(gcd(n, n+1))`
-/

namespace A328819.P10448027633503089433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) / (A000032 (Nat.gcd n (n + 1)) : ℚ)

end

end A328819.P10448027633503089433

namespace A328819

/-- `A111862(A044332(n+1))/A000032(gcd(n, n+1))` -/
def P10448027633503089433.Spec : Prop :=
  ∀ n, P10448027633503089433.a n = (A328819 (n + 1) : ℚ)

end A328819

/-! ## A328819.P5635275852562247940

`A111862(A044332(n+1))^A000010(((-1)^n)²)`
-/

namespace A328819.P5635275852562247940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) ^ (A000010 (((-1) ^ n) ^ 2).toNat : ℤ)

end

end A328819.P5635275852562247940

namespace A328819

/-- `A111862(A044332(n+1))^A000010(((-1)^n)²)` -/
def P5635275852562247940.Spec : Prop :=
  ∀ n, P5635275852562247940.a n = (A328819 (n + 1) : ℚ)

end A328819

/-! ## A328819.P8517672036184966905

`A111862(A044332(n+1))/A008683(gcd(n+2, n-1))²`
-/

namespace A328819.P8517672036184966905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) / (A008683 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)) ^ 2 : ℚ)

end

end A328819.P8517672036184966905

namespace A328819

/-- `A111862(A044332(n+1))/A008683(gcd(n+2, n-1))²` -/
def P8517672036184966905.Spec : Prop :=
  ∀ n, P8517672036184966905.a n = (A328819 (n + 1) : ℚ)

end A328819

/-! ## A328819.P2021628450339662553

`A111862(A044332(n+1))/A001222(A001359(n+1))`
-/

namespace A328819.P2021628450339662553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111862 (A044332 (n + 1)).toNat : ℚ) / (A001222 (A001359 (n + 1)).toNat : ℚ)

end

end A328819.P2021628450339662553

namespace A328819

/-- `A111862(A044332(n+1))/A001222(A001359(n+1))` -/
def P2021628450339662553.Spec : Prop :=
  ∀ n, P2021628450339662553.a n = (A328819 (n + 1) : ℚ)

end A328819

/-!
# A328820: Fourth digit after decimal point of square root of n.

The programs for A328820, the canonical program `A328820.P14066992328077609403` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328820 has offset 1).

The definition of A328820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328820.P14066992328077609403

`A328819(xor(1, 10*10*(n+1)+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328820

/-- `A328819(xor(1, 10*10*(n+1)+1))` -/
def P14066992328077609403.Spec : Prop :=
  ∀ n, P14066992328077609403.a n = A328820 (n + 1)

theorem P14066992328077609403.correct : P14066992328077609403.Spec := by
  intro n
  simp only [A328820, Nat.add_sub_cancel]

end A328820

/-! ## A328820.P12043367764816307300

`A328819(A044332(n+1))`
-/

namespace A328820.P12043367764816307300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328819 (A044332 (n + 1)).toNat

end

end A328820.P12043367764816307300

namespace A328820

/-- `A328819(A044332(n+1))` -/
def P12043367764816307300.Spec : Prop :=
  ∀ n, P12043367764816307300.a n = A328820 (n + 1)

end A328820

/-! ## A328820.P18090999533023412900

`A328819(A008602(5*(n+1)))`
-/

namespace A328820.P18090999533023412900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328819 (A008602 (5 * (n + 1))).toNat

end

end A328820.P18090999533023412900

namespace A328820

/-- `A328819(A008602(5*(n+1)))` -/
def P18090999533023412900.Spec : Prop :=
  ∀ n, P18090999533023412900.a n = A328820 (n + 1)

end A328820

/-! ## A328820.P16307519008183417695

`A328819(A008592(10*(n+1)))`
-/

namespace A328820.P16307519008183417695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328819 (A008592 (10 * (n + 1))).toNat

end

end A328820.P16307519008183417695

namespace A328820

/-- `A328819(A008592(10*(n+1)))` -/
def P16307519008183417695.Spec : Prop :=
  ∀ n, P16307519008183417695.a n = A328820 (n + 1)

end A328820

/-! ## A328820.P12373816586942407773

`A328819(A102439(2*n+1)-A102439(n))`
-/

namespace A328820.P12373816586942407773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328819 (A102439 (2 * n + 1) - A102439 n).toNat

end

end A328820.P12373816586942407773

namespace A328820

/-- `A328819(A102439(2*n+1)-A102439(n))` -/
def P12373816586942407773.Spec : Prop :=
  ∀ n, P12373816586942407773.a n = A328820 (n + 1)

end A328820

/-!
# A328821: Triangular array read by rows. Let P be the poset of all even sized subsets of [2n] ordered by inclusion. T(n,k) is the number of intervals in P with length k, 0<=k<=n, n>=0.

The programs for A328821, there is no canonical definition to state claims against.
-/

/-! ## A328821.P1167915993006969952

`A198792(record[xor(1, n)+round(sqrt(n+1))²])`
-/

namespace A328821.P1167915993006969952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328821.P1167915993006969952

/-! ## A328821.P13458552010212974770

`A198792(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A328821.P13458552010212974770
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A328821.P13458552010212974770

/-! ## A328821.P10788601783149531890

`A080928(eq[0, A155998(n)])`
-/

namespace A328821.P10788601783149531890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328821.P10788601783149531890

/-! ## A328821.P7012198398353126068

`A080928(lt[A155998(n), 1])`
-/

namespace A328821.P7012198398353126068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080928 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328821.P7012198398353126068

/-! ## A328821.P14482771656380816864

`A119468(A185868(n+1)-1)`
-/

namespace A328821.P14482771656380816864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 (A185868 (n + 1) - 1).toNat

end

end A328821.P14482771656380816864

/-!
# A328822: Primes of the form p=3*q+3*r+q*r where q and r are distinct primes and 2*p-3*q, 2*p-3*r and 2*p-q*r are also prime.

The programs for A328822, there is no canonical definition to state claims against.
-/

/-! ## A328822.P593496085810709827

`p?[A328805(n+1)]`
-/

namespace A328822.P593496085810709827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328822.P593496085810709827

/-! ## A328822.P8160013884389580172

`∩[A328805(n+1), A369250(n+1)]`
-/

namespace A328822.P8160013884389580172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P8160013884389580172

/-! ## A328822.P7370641288636844897

`∩[A087054(n+1), A328805(n+1)]`
-/

namespace A328822.P7370641288636844897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P7370641288636844897

/-! ## A328822.P11682009178228895188

`∩[A002145(n+1), A328805(n+1)]`
-/

namespace A328822.P11682009178228895188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P11682009178228895188

/-! ## A328822.P15103340740722350347

`∩[A045326(n+1), A328805(n+1)]`
-/

namespace A328822.P15103340740722350347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P15103340740722350347

/-! ## A328822.P12237109163848647784

`∩[A085760(n+1), A328805(n+1)]`
-/

namespace A328822.P12237109163848647784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P12237109163848647784

/-! ## A328822.P5917643563736301579

`∩[A015919(n+1), A328805(n+1)]`
-/

namespace A328822.P5917643563736301579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P5917643563736301579

/-! ## A328822.P12402510997017467632

`∩[A197504(n+1), A328805(n+1)]`
-/

namespace A328822.P12402510997017467632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P12402510997017467632

/-! ## A328822.P3200806529886992705

`∩[A328805(n+1), A332555(n+1)]`
-/

namespace A328822.P3200806529886992705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P3200806529886992705

/-! ## A328822.P16888223283148337315

`∩[A285015(n+1), A328805(n+1)]`
-/

namespace A328822.P16888223283148337315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P16888223283148337315

/-! ## A328822.P5002889214871468968

`∩[A328805(n+1), A385221(n+1)]`
-/

namespace A328822.P5002889214871468968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P5002889214871468968

/-! ## A328822.P18122938990148910819

`∩[A049098(n+1), A328805(n+1)]`
-/

namespace A328822.P18122938990148910819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P18122938990148910819

/-! ## A328822.P14144423812682055287

`∩[A140409(n+1), A328805(n+1)]`
-/

namespace A328822.P14144423812682055287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P14144423812682055287

/-! ## A328822.P11633055580682378894

`∩[A040116(n+1), A328805(n+1)]`
-/

namespace A328822.P11633055580682378894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P11633055580682378894

/-! ## A328822.P3987205773984856046

`∩[A045323(n+1), A328805(n+1)]`
-/

namespace A328822.P3987205773984856046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P3987205773984856046

/-! ## A328822.P7163302208419612763

`∩[A045419(n+1), A328805(n+1)]`
-/

namespace A328822.P7163302208419612763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P7163302208419612763

/-! ## A328822.P13441451527944325383

`∩[A042987(n+1), A328805(n+1)]`
-/

namespace A328822.P13441451527944325383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P13441451527944325383

/-! ## A328822.P2448171487292206520

`∩[A045395(n+1), A328805(n+1)]`
-/

namespace A328822.P2448171487292206520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P2448171487292206520

/-! ## A328822.P6464664001379418238

`∩[A167135(n+1), A328805(n+1)]`
-/

namespace A328822.P6464664001379418238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P6464664001379418238

/-! ## A328822.P7339603624342701776

`∩[A216277(n+1), A328805(n+1)]`
-/

namespace A328822.P7339603624342701776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328822.P7339603624342701776

/-!
# A328823: a(n) is the least prime factor of A000096(n) = n*(n+3)/2.

The programs for A328823, there is no canonical definition to state claims against.
-/

/-! ## A328823.P2352823497206689450

`A020639((n+1)*(n+4)/2)`
-/

namespace A328823.P2352823497206689450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((n + 1) * (n + 4) : ℚ) / 2)).toNat

end

end A328823.P2352823497206689450

/-! ## A328823.P16689751125962784345

`A000027(A020639(∑[2-(n-2*n)]))`
-/

namespace A328823.P16689751125962784345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A328823.P16689751125962784345

/-! ## A328823.P13443564279339732932

`A020639(A034856(n+1)+1)%(n+5)`
-/

namespace A328823.P13443564279339732932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A034856 (n + 1) + 1).toNat) (n + 5 : ℤ)

end

end A328823.P13443564279339732932

/-! ## A328823.P10251180219308560532

`A020639(A000096(n+1))%A108099(n)`
-/

namespace A328823.P10251180219308560532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A000096 (n + 1)).toNat) (A108099 n)

end

end A328823.P10251180219308560532

/-! ## A328823.P14248143429274528888

`gcd(A020639(A347553(n+4)), A000038(n))`
-/

namespace A328823.P14248143429274528888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A347553 (n + 4)).toNat) (A000038 n)

end

end A328823.P14248143429274528888

/-! ## A328823.P7709276402217263803

`and((-1)^A000040(n+2), A020639(A000096(n+1)))`
-/

namespace A328823.P7709276402217263803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ))) (A020639 (A000096 (n + 1)).toNat)

end

end A328823.P7709276402217263803

/-! ## A328823.P11352025572141150237

`A057237(∑[n+2])+1`
-/

namespace A328823.P11352025572141150237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A328823.P11352025572141150237

/-! ## A328823.P2216459993145803392

`A151800(A057237(∑[n+2]))`
-/

namespace A328823.P2216459993145803392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A057237 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328823.P2216459993145803392

/-! ## A328823.P10114827331963551161

`A006530(A074828(∑[n+2]))`
-/

namespace A328823.P10114827331963551161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328823.P10114827331963551161

/-! ## A328823.P9845938155137450474

`A006530(A174857(∑[n+2]))`
-/

namespace A328823.P9845938155137450474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A174857 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328823.P9845938155137450474

/-! ## A328823.P3776562509578959274

`A102457(C(n+3, 2))`
-/

namespace A328823.P3776562509578959274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (Nat.choose (n + 3) 2)

end

end A328823.P3776562509578959274

/-! ## A328823.P1445589184642050904

`A102457(∑[n+2]+1)`
-/

namespace A328823.P1445589184642050904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A328823.P1445589184642050904

/-! ## A328823.P5504712982886614739

`sqrt(A088377(∑[n+2]))`
-/

namespace A328823.P5504712982886614739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A328823.P5504712982886614739

/-!
# A328824: Numerators of A113405(-n) (see the comment for details).

The programs for A328824, the canonical program `A328824.P11691968950299003154` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328824 has offset 0).

The definition of A328824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328824.P11691968950299003154

`a(n-1)-8*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328824

/-- `a(n-1)-8*a(n-3)+8*a(n-4)` -/
def P11691968950299003154.Spec : Prop :=
  ∀ n, P11691968950299003154.a n = A328824 n

theorem P11691968950299003154.correct : P11691968950299003154.Spec := by
  intro n
  simp only [A328824]

end A328824

/-! ## A328824.P3316952716330592163

`1-8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A328824.P3316952716330592163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  1 - 8 * a (n - 3)

end

end A328824.P3316952716330592163

namespace A328824

/-- `1-8*a(n-3)` -/
def P3316952716330592163.Spec : Prop :=
  ∀ n, P3316952716330592163.a n = A328824 n

end A328824

/-! ## A328824.P6051414110795177014

`∑[A088138(∑[n%3])]`
-/

namespace A328824.P6051414110795177014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P6051414110795177014

namespace A328824

/-- `∑[A088138(∑[n%3])]` -/
def P6051414110795177014.Spec : Prop :=
  ∀ n, P6051414110795177014.a n = A328824 n

end A328824

/-! ## A328824.P15558737180661196378

`∑[∑[n]%3*A123344(n)]`
-/

namespace A328824.P15558737180661196378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ) * A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P15558737180661196378

namespace A328824

/-- `∑[∑[n]%3*A123344(n)]` -/
def P15558737180661196378.Spec : Prop :=
  ∀ n, P15558737180661196378.a n = A328824 n

end A328824

/-! ## A328824.P2161951899060127274

`A157241(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A328824.P2161951899060127274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A157241 n - (a (n - 1) + a (n - 1))

end

end A328824.P2161951899060127274

namespace A328824

/-- `A157241(n)-(a(n-1)+a(n-1))` -/
def P2161951899060127274.Spec : Prop :=
  ∀ n, P2161951899060127274.a n = A328824 n

end A328824

/-! ## A328824.P1251290369986589737

`∑[A088138(abs(A110665(n)))]`
-/

namespace A328824.P1251290369986589737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 |A110665 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P1251290369986589737

namespace A328824

/-- `∑[A088138(abs(A110665(n)))]` -/
def P1251290369986589737.Spec : Prop :=
  ∀ n, P1251290369986589737.a n = A328824 n

end A328824

/-! ## A328824.P1804178392146011352

`∑[A088138(∑[A010872(n)])]`
-/

namespace A328824.P1804178392146011352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P1804178392146011352

namespace A328824

/-- `∑[A088138(∑[A010872(n)])]` -/
def P1804178392146011352.Spec : Prop :=
  ∀ n, P1804178392146011352.a n = A328824 n

end A328824

/-! ## A328824.P6594354626830575071

`∑[A088138(lcm(n, A010892(n)))]`
-/

namespace A328824.P6594354626830575071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (Int.lcm (n : ℤ) (A010892 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P6594354626830575071

namespace A328824

/-- `∑[A088138(lcm(n, A010892(n)))]` -/
def P6594354626830575071.Spec : Prop :=
  ∀ n, P6594354626830575071.a n = A328824 n

end A328824

/-! ## A328824.P1219311181927728102

`∑[A088138(n*A010892(n)²)]`
-/

namespace A328824.P1219311181927728102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 ((n : ℤ) * A010892 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P1219311181927728102

namespace A328824

/-- `∑[A088138(n*A010892(n)²)]` -/
def P1219311181927728102.Spec : Prop :=
  ∀ n, P1219311181927728102.a n = A328824 n

end A328824

/-! ## A328824.P3212647505272126303

`∑[(A061800(n)-(n+1))^A061800(n)]`
-/

namespace A328824.P3212647505272126303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061800 n - (n + 1 : ℤ) : ℚ) ^ (A061800 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P3212647505272126303

namespace A328824

/-- `∑[(A061800(n)-(n+1))^A061800(n)]` -/
def P3212647505272126303.Spec : Prop :=
  ∀ n, P3212647505272126303.a n = (A328824 n : ℚ)

end A328824

/-! ## A328824.P15723009564111766720

`∑[A010892(n)*A088138(n)*A010892(n)]`
-/

namespace A328824.P15723009564111766720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A088138 n * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P15723009564111766720

namespace A328824

/-- `∑[A010892(n)*A088138(n)*A010892(n)]` -/
def P15723009564111766720.Spec : Prop :=
  ∀ n, P15723009564111766720.a n = A328824 n

end A328824

/-! ## A328824.P9621588819543044762

`∑[ogf(x/(1+8x^3))]`
-/

namespace A328824.P9621588819543044762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 0, 0, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P9621588819543044762

namespace A328824

/-- `∑[ogf(x/(1+8x^3))]` -/
def P9621588819543044762.Spec : Prop :=
  ∀ n, P9621588819543044762.a n = A328824 n

end A328824

/-! ## A328824.P6081538116152820720

`ogf(x/(1-x+8x^3-8x^4))`
-/

namespace A328824.P6081538116152820720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, 0, 8, -8] n

end

end A328824.P6081538116152820720

namespace A328824

/-- `ogf(x/(1-x+8x^3-8x^4))` -/
def P6081538116152820720.Spec : Prop :=
  ∀ n, P6081538116152820720.a n = A328824 n

end A328824

/-! ## A328824.P1492762212857709520

`∑[(1-A321102(n+2)!)*A117575(2*n)]`
-/

namespace A328824.P1492762212857709520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.factorial (A321102 (n + 2)).toNat : ℤ)) * A117575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328824.P1492762212857709520

namespace A328824

/-- `∑[(1-A321102(n+2)!)*A117575(2*n)]` -/
def P1492762212857709520.Spec : Prop :=
  ∀ n, P1492762212857709520.a n = A328824 n

end A328824

/-! ## A328824.P17737906803264980877

`A139818(n)-A000079(n)*A113405(n)`
-/

namespace A328824.P17737906803264980877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 n - A000079 n * A113405 n

end

end A328824.P17737906803264980877

namespace A328824

/-- `A139818(n)-A000079(n)*A113405(n)` -/
def P17737906803264980877.Spec : Prop :=
  ∀ n, P17737906803264980877.a n = A328824 n

end A328824

/-!
# A328825: Negative discriminants with form class group isomorphic to C_3 (negated).

The programs for A328825, there is no canonical definition to state claims against.
-/

/-! ## A328825.P11934487204348702784

`A350395(eq[3, A014600(n)])`
-/

namespace A328825.P11934487204348702784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328825.P11934487204348702784

/-!
# A328826: Triangle read by rows: binomial(n,k)*(2*n-k)!, n>=0, 0<=k<=n.

The programs for A328826, the canonical program `A328826.P10278590742729290245` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328826 has offset 0).

The definition of A328826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328826.P10278590742729290245

`C(row(n), col(n))*(2*row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328826

/-- `C(row(n), col(n))*(2*row(n)-col(n))!` -/
def P10278590742729290245.Spec : Prop :=
  ∀ n, (P10278590742729290245.a n : ℤ) = A328826 n

theorem P10278590742729290245.correct : P10278590742729290245.Spec := by
  intro n
  simp only [A328826]

end A328826

/-! ## A328826.P16823496928968393260

`∑[char[∑[n+1]]]!*A119274(n)`
-/

namespace A328826.P16823496928968393260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A119274 n

end

end A328826.P16823496928968393260

namespace A328826

/-- `∑[char[∑[n+1]]]!*A119274(n)` -/
def P16823496928968393260.Spec : Prop :=
  ∀ n, P16823496928968393260.a n = A328826 n

end A328826

/-! ## A328826.P16403810673388746436

`(eq[1, floor(2*sqrt(n))%2]-(2*n+3))!*A007318(n)`
-/

namespace A328826.P16403810673388746436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n + 3 : ℤ)).toNat : ℤ) * A007318 n

end

end A328826.P16403810673388746436

namespace A328826

/-- `(eq[1, floor(2*sqrt(n))%2]-(2*n+3))!*A007318(n)` -/
def P16403810673388746436.Spec : Prop :=
  ∀ n, P16403810673388746436.a n = A328826 n

end A328826

/-! ## A328826.P16490001448780312492

`A328922(n)+A328921(n)`
-/

namespace A328826.P16490001448780312492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328922 n + A328921 n

end

end A328826.P16490001448780312492

namespace A328826

/-- `A328922(n)+A328921(n)` -/
def P16490001448780312492.Spec : Prop :=
  ∀ n, P16490001448780312492.a n = A328826 n

end A328826

/-! ## A328826.P5688455403278279579

`A294317(n)!*A007318(n)`
-/

namespace A328826.P5688455403278279579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A294317 n).toNat : ℤ) * A007318 n

end

end A328826.P5688455403278279579

namespace A328826

/-- `A294317(n)!*A007318(n)` -/
def P5688455403278279579.Spec : Prop :=
  ∀ n, P5688455403278279579.a n = A328826 n

theorem P5688455403278279579.correct : P5688455403278279579.Spec := by
  intro n
  simp only [A328826, Nat.add_sub_cancel, A328826.P5688455403278279579.a, A328826.P10278590742729290245.a, A007318, A007318.P11755526479805562006.a, A294317, A294317.P6597418737474744620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328826

/-!
# A328827: a(n) is the largest prime factor of n + n*(n+1)/2 = n*(n+3)/2.

The programs for A328827, the canonical program `A328827.P8229375499967702781` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328827 has offset 1).

The definition of A328827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328827.P8229375499967702781

`A006530((n+1)*(n+4))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A328827

/-- `A006530((n+1)*(n+4))` -/
def P8229375499967702781.Spec : Prop :=
  ∀ n, P8229375499967702781.a n = A328827 (n + 1)

theorem P8229375499967702781.correct : P8229375499967702781.Spec := by
  intro n
  simp only [A328827, Nat.add_sub_cancel]

end A328827

/-! ## A328827.P9907957767615357491

`A000040(A061395(∑[n+2]))`
-/

namespace A328827.P9907957767615357491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328827.P9907957767615357491

namespace A328827

/-- `A000040(A061395(∑[n+2]))` -/
def P9907957767615357491.Spec : Prop :=
  ∀ n, P9907957767615357491.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P15778237400417738743

`A006530(A000096(n+1))+A000007(n+3)`
-/

namespace A328827.P15778237400417738743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000096 (n + 1)).toNat + A000007 (n + 3)

end

end A328827.P15778237400417738743

namespace A328827

/-- `A006530(A000096(n+1))+A000007(n+3)` -/
def P15778237400417738743.Spec : Prop :=
  ∀ n, P15778237400417738743.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P17563829435541297801

`A006530(A000096(n+1))%A004277(n+3)`
-/

namespace A328827.P17563829435541297801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A000096 (n + 1)).toNat) (A004277 (n + 3))

end

end A328827.P17563829435541297801

namespace A328827

/-- `A006530(A000096(n+1))%A004277(n+3)` -/
def P17563829435541297801.Spec : Prop :=
  ∀ n, P17563829435541297801.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P173314930082673240

`A020639(A345941(∑[n+2]))`
-/

namespace A328827.P173314930082673240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328827.P173314930082673240

namespace A328827

/-- `A020639(A345941(∑[n+2]))` -/
def P173314930082673240.Spec : Prop :=
  ∀ n, P173314930082673240.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P9267631440945487831

`A111089(A125650(n+1))`
-/

namespace A328827.P9267631440945487831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A125650 (n + 1)).toNat

end

end A328827.P9267631440945487831

namespace A328827

/-- `A111089(A125650(n+1))` -/
def P9267631440945487831.Spec : Prop :=
  ∀ n, P9267631440945487831.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P1724031056288391894

`A111089(A160050(n+2))`
-/

namespace A328827.P1724031056288391894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A160050 (n + 2)).toNat

end

end A328827.P1724031056288391894

namespace A328827

/-- `A111089(A160050(n+2))` -/
def P1724031056288391894.Spec : Prop :=
  ∀ n, P1724031056288391894.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P18297905018639304617

`A111089(∑[n+2])`
-/

namespace A328827.P18297905018639304617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328827.P18297905018639304617

namespace A328827

/-- `A111089(∑[n+2])` -/
def P18297905018639304617.Spec : Prop :=
  ∀ n, P18297905018639304617.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P15534875803134546646

`A284695(∑[n+2])`
-/

namespace A328827.P15534875803134546646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328827.P15534875803134546646

namespace A328827

/-- `A284695(∑[n+2])` -/
def P15534875803134546646.Spec : Prop :=
  ∀ n, P15534875803134546646.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P3313559026179891978

`A002034(A007947(∑[n+2]))`
-/

namespace A328827.P3313559026179891978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A007947 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328827.P3313559026179891978

namespace A328827

/-- `A002034(A007947(∑[n+2]))` -/
def P3313559026179891978.Spec : Prop :=
  ∀ n, P3313559026179891978.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P6073714661900364869

`A020639(A053585(∑[n+2]))`
-/

namespace A328827.P6073714661900364869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328827.P6073714661900364869

namespace A328827

/-- `A020639(A053585(∑[n+2]))` -/
def P6073714661900364869.Spec : Prop :=
  ∀ n, P6073714661900364869.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P1988852913797762250

`A020639(A298268(∑[n+2]))`
-/

namespace A328827.P1988852913797762250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298268 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328827.P1988852913797762250

namespace A328827

/-- `A020639(A298268(∑[n+2]))` -/
def P1988852913797762250.Spec : Prop :=
  ∀ n, P1988852913797762250.a n = A328827 (n + 1)

end A328827

/-! ## A328827.P9189186813188044777

`A020639(A323129(∑[n+2]))`
-/

namespace A328827.P9189186813188044777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A323129 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328827.P9189186813188044777

namespace A328827

/-- `A020639(A323129(∑[n+2]))` -/
def P9189186813188044777.Spec : Prop :=
  ∀ n, P9189186813188044777.a n = A328827 (n + 1)

end A328827

/-!
# A328828: Index of the least significant digit larger than one in the primorial base expansion of n, 0 if no such digit exists.

The programs for A328828, there is no canonical definition to state claims against.
-/

/-! ## A328828.P7964850198731826278

`A000720(A381032(n))`
-/

namespace A328828.P7964850198731826278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A381032 n).toNat

end

end A328828.P7964850198731826278

/-! ## A328828.P1942441995498767809

`A055396(A328572(n))`
-/

namespace A328828.P1942441995498767809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A328572 n).toNat

end

end A328828.P1942441995498767809

/-! ## A328828.P8264004494250204629

`A277885(A276086(n))`
-/

namespace A328828.P8264004494250204629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A276086 n).toNat

end

end A328828.P8264004494250204629

/-! ## A328828.P11317740763079174634

`A277885(A381032(n)²)`
-/

namespace A328828.P11317740763079174634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A381032 n ^ 2).toNat

end

end A328828.P11317740763079174634

/-! ## A328828.P11322092552025720277

`A277885(A381032(n)*A381032(n))`
-/

namespace A328828.P11322092552025720277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A381032 n * A381032 n).toNat

end

end A328828.P11322092552025720277

/-! ## A328828.P1575680629420777487

`A055396(gcd(A327860(n), A328571(n)))`
-/

namespace A328828.P1575680629420777487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.gcd (A327860 n) (A328571 n))

end

end A328828.P1575680629420777487

/-! ## A328828.P12189991223404660294

`A338101(gcd(A328571(n)², A342016(n)))`
-/

namespace A328828.P12189991223404660294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338101 (Int.gcd (A328571 n ^ 2) (A342016 n))

end

end A328828.P12189991223404660294

/-! ## A328828.P13423695734718048223

`A260738(∏{p}[A328572(n), #])`
-/

namespace A328828.P13423695734718048223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328828.P13423695734718048223

/-! ## A328828.P17459713155063535467

`A277697(∏{p}[A328572(n), #])`
-/

namespace A328828.P17459713155063535467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328828.P17459713155063535467

/-! ## A328828.P3456084159910497724

`A277707(∏{p}[A328572(n), #])`
-/

namespace A328828.P3456084159910497724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328828.P3456084159910497724

/-! ## A328828.P8300219339414107286

`A286469(∏{p}[A328572(n), #])`
-/

namespace A328828.P8300219339414107286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328828.P8300219339414107286

/-! ## A328828.P10523201830111545024

`53%A020639(∏{p}[A328572(n), #])`
-/

namespace A328828.P10523201830111545024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 53 (A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p))

end

end A328828.P10523201830111545024

/-! ## A328828.P3396426072681900158

`A000720(A020639(∏{p}[A328572(n), #]))`
-/

namespace A328828.P3396426072681900158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A328828.P3396426072681900158

/-! ## A328828.P13613265577208106808

`A057526(A020639(A328572(n))²)`
-/

namespace A328828.P13613265577208106808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A020639 (A328572 n).toNat ^ 2).toNat

end

end A328828.P13613265577208106808

/-! ## A328828.P14083797041592263939

`A061395(A020639(A328572(n))²)`
-/

namespace A328828.P14083797041592263939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A328572 n).toNat ^ 2).toNat

end

end A328828.P14083797041592263939

/-! ## A328828.P4138079593138840964

`A241664(A020639(A328572(n))²)`
-/

namespace A328828.P4138079593138840964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241664 (A020639 (A328572 n).toNat ^ 2).toNat

end

end A328828.P4138079593138840964

/-! ## A328828.P6631217977185554759

`A289508(A020639(A328572(n))²)`
-/

namespace A328828.P6631217977185554759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A020639 (A328572 n).toNat ^ 2).toNat

end

end A328828.P6631217977185554759

/-! ## A328828.P3024851284269688993

`A001221(A020639(A328572(n))!)`
-/

namespace A328828.P3024851284269688993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A020639 (A328572 n).toNat).toNat)

end

end A328828.P3024851284269688993

/-!
# A328829: Index of the least significant digit > 1 in the primorial base expansion of A276086(n), 0 if no such digit exists.

The programs for A328829, there is no canonical definition to state claims against.
-/

/-! ## A328829.P257295915628038153

`A328828(A276086(n))`
-/

namespace A328829.P257295915628038153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A276086 n).toNat

end

end A328829.P257295915628038153

/-! ## A328829.P12860927262334888217

`A328828(A351225(n)+n)`
-/

namespace A328829.P12860927262334888217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A351225 n + (n : ℤ)).toNat

end

end A328829.P12860927262334888217

/-! ## A328829.P888999821474140001

`A055396(A381032(A276086(n))²)`
-/

namespace A328829.P888999821474140001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A381032 (A276086 n).toNat ^ 2).toNat

end

end A328829.P888999821474140001

/-! ## A328829.P15329084775331966288

`A328828(A328580(n)+A328476(n))`
-/

namespace A328829.P15329084775331966288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A328580 n + A328476 n).toNat

end

end A328829.P15329084775331966288

/-! ## A328829.P16087655145036302467

`A328828(A328844(n)+A328843(n))`
-/

namespace A328829.P16087655145036302467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A328844 n + A328843 n).toNat

end

end A328829.P16087655145036302467

/-! ## A328829.P13771416230769959222

`A328828(A327860(n)-A342016(n))`
-/

namespace A328829.P13771416230769959222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A327860 n - A342016 n).toNat

end

end A328829.P13771416230769959222

/-! ## A328829.P3741292418053727131

`A328828(A328475(n)*A328580(n))`
-/

namespace A328829.P3741292418053727131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A328475 n * A328580 n).toNat

end

end A328829.P3741292418053727131

/-! ## A328829.P12917610092937862053

`A328828(A328571(n)*A328572(n))`
-/

namespace A328829.P12917610092937862053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A328571 n * A328572 n).toNat

end

end A328829.P12917610092937862053

/-! ## A328829.P5411234663568256659

`A328828(A327858(n)*A351231(n))`
-/

namespace A328829.P5411234663568256659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A327858 n * A351231 n).toNat

end

end A328829.P5411234663568256659

/-!
# A328830: The second prime shadow of n: a(1) = 1; for n > 1, a(n) = a(A003557(n)) * prime(A056169(n)) when A056169(n) > 0, otherwise a(n) = a(A003557(n)).

The programs for A328830, the canonical program `A328830.P11782765662620703409` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328830 has offset 1).

The definition of A328830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328830.P11782765662620703409

`A181819(A181819(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A328830

/-- `A181819(A181819(n+1))` -/
def P11782765662620703409.Spec : Prop :=
  ∀ n, P11782765662620703409.a n = A328830 (n + 1)

theorem P11782765662620703409.correct : P11782765662620703409.Spec := by
  intro n
  simp only [A328830, Nat.add_sub_cancel]

end A328830

/-! ## A328830.P16608043948693847264

`∏{e}[∏{e}[n+1, A000040(#)], A000040(#)]`
-/

namespace A328830.P16608043948693847264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A328830.P16608043948693847264

namespace A328830

/-- `∏{e}[∏{e}[n+1, A000040(#)], A000040(#)]` -/
def P16608043948693847264.Spec : Prop :=
  ∀ n, P16608043948693847264.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P5281537846920166671

`∏{e}[∏{e}[n+1, A058853(#)], A086566(#)]`
-/

namespace A328830.P5281537846920166671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A058853 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A086566 (Nat.factorization (f1 n).natAbs p)

end

end A328830.P5281537846920166671

namespace A328830

/-- `∏{e}[∏{e}[n+1, A058853(#)], A086566(#)]` -/
def P5281537846920166671.Spec : Prop :=
  ∀ n, P5281537846920166671.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P16350845649604849247

`∏{e}[∏{e}[n+1, A058853(#)], A095285(#)]`
-/

namespace A328830.P16350845649604849247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A058853 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095285 (Nat.factorization (f1 n).natAbs p)

end

end A328830.P16350845649604849247

namespace A328830

/-- `∏{e}[∏{e}[n+1, A058853(#)], A095285(#)]` -/
def P16350845649604849247.Spec : Prop :=
  ∀ n, P16350845649604849247.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P15847001938679247172

`∏{e}[∏{e}[n+1, A219697(#)], A058853(#)]`
-/

namespace A328830.P15847001938679247172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A219697 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A058853 (Nat.factorization (f1 n).natAbs p)

end

end A328830.P15847001938679247172

namespace A328830

/-- `∏{e}[∏{e}[n+1, A219697(#)], A058853(#)]` -/
def P15847001938679247172.Spec : Prop :=
  ∀ n, P15847001938679247172.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P10591144249170645022

`∏{e}[∏{e}[n+1, A008578(#+1)], A008578(#+1)]`
-/

namespace A328830.P10591144249170645022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A008578 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p + 1)

end

end A328830.P10591144249170645022

namespace A328830

/-- `∏{e}[∏{e}[n+1, A008578(#+1)], A008578(#+1)]` -/
def P10591144249170645022.Spec : Prop :=
  ∀ n, P10591144249170645022.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P8427456059945440404

`∏{e}[∏{e}[n+1, A015919(#+1)], A015919(#+1)]`
-/

namespace A328830.P8427456059945440404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A015919 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A015919 (Nat.factorization (f1 n).natAbs p + 1)

end

end A328830.P8427456059945440404

namespace A328830

/-- `∏{e}[∏{e}[n+1, A015919(#+1)], A015919(#+1)]` -/
def P8427456059945440404.Spec : Prop :=
  ∀ n, P8427456059945440404.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P1317306125855032071

`A122111(A238745(A122111(A238745(n+1))))`
-/

namespace A328830.P1317306125855032071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A238745 (A122111 (A238745 (n + 1)).toNat).toNat).toNat

end

end A328830.P1317306125855032071

namespace A328830

/-- `A122111(A238745(A122111(A238745(n+1))))` -/
def P1317306125855032071.Spec : Prop :=
  ∀ n, P1317306125855032071.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P16647646443472547977

`∏{e}[A304203(∏{e}[A304203(n+1), #]), #]`
-/

namespace A328830.P16647646443472547977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328830.P16647646443472547977

namespace A328830

/-- `∏{e}[A304203(∏{e}[A304203(n+1), #]), #]` -/
def P16647646443472547977.Spec : Prop :=
  ∀ n, (P16647646443472547977.a n : ℤ) = A328830 (n + 1)

end A328830

/-! ## A328830.P13290883396919544380

`A101296(A295879((n+1)²))`
-/

namespace A328830.P13290883396919544380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A295879 ((n + 1) ^ 2)).toNat

end

end A328830.P13290883396919544380

namespace A328830

/-- `A101296(A295879((n+1)²))` -/
def P13290883396919544380.Spec : Prop :=
  ∀ n, P13290883396919544380.a n = A328830 (n + 1)

end A328830

/-! ## A328830.P12101829940148390016

`A353510(∑[n+3]+1)`
-/

namespace A328830.P12101829940148390016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A328830.P12101829940148390016

namespace A328830

/-- `A353510(∑[n+3]+1)` -/
def P12101829940148390016.Spec : Prop :=
  ∀ n, P12101829940148390016.a n = A328830 (n + 1)

end A328830

/-!
# A328831: Number of distinct prime factors p such that p^p is a divisor of n-th number > 0 that is a sum of distinct primorial numbers, A276156(n).

The programs for A328831, there is no canonical definition to state claims against.
-/

/-! ## A328831.P4967194228222307601

`A129251(A276156(n+1))`
-/

namespace A328831.P4967194228222307601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A276156 (n + 1)).toNat

end

end A328831.P4967194228222307601

/-! ## A328831.P11034017112934267622

`A129251(eq[1, A328114(n)])`
-/

namespace A328831.P11034017112934267622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328831.P11034017112934267622

/-! ## A328831.P7561854546199785080

`val(A360392(2*n+3), A006049(A141056(n)))`
-/

namespace A328831.P7561854546199785080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360392 (2 * n + 3)).toNat (A006049 (A141056 n).toNat).toNat

end

end A328831.P7561854546199785080

/-! ## A328831.P9693579630272513671

`A083896(C(A045572(2*(n+1)), A083913(n+4)))`
-/

namespace A328831.P9693579630272513671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (Nat.choose (A045572 (2 * (n + 1))).toNat (A083913 (n + 4)).toNat)

end

end A328831.P9693579630272513671

/-! ## A328831.P1739755073527098588

`A235127(A396883(n+1))`
-/

namespace A328831.P1739755073527098588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A396883 (n + 1)).toNat

end

end A328831.P1739755073527098588

/-!
# A328832: Numbers that are sums of distinct primorial numbers, A002110, and do not have a factor of the form p^p.

The programs for A328832, there is no canonical definition to state claims against.
-/

/-! ## A328832.P5910952653660310302

`A276156(lt[A328831(n+1), 1]+1)`
-/

namespace A328832.P5910952653660310302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328831 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A328832.P5910952653660310302

/-! ## A328832.P7940551333860041983

`filter[A276156(n), A359550(#)]`
-/

namespace A328832.P7940551333860041983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A328832.P7940551333860041983

/-! ## A328832.P16663881585981203475

`eq[A328581(n), A359550(n)]`
-/

namespace A328832.P16663881585981203475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328832.P16663881585981203475

/-! ## A328832.P5104778146766286440

`eq[A328582(n), A359550(n)]`
-/

namespace A328832.P5104778146766286440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328832.P5104778146766286440

/-! ## A328832.P16590741966644284837

`eq[A359550(n), A381032(n)]`
-/

namespace A328832.P16590741966644284837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328832.P16590741966644284837

/-!
# A328833: A276085 applied to the intersection of A048103 (p^p-free numbers) and A276156 (sums of distinct primorials).

The programs for A328833, there is no canonical definition to state claims against.
-/

/-! ## A328833.P1156258450941229010

`A276085(A328832(n+1))`
-/

namespace A328833.P1156258450941229010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A328832 (n + 1)).toNat

end

end A328833.P1156258450941229010

/-! ## A328833.P18048174832163747740

`A276085(∩[A048103(n+1), A276156(n)])`
-/

namespace A328833.P18048174832163747740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A328833.P18048174832163747740

/-!
# A328834: Square root of the prime factor form (A276086) of the primorial base expansion, computed for such numbers for which it is a square.

The programs for A328834, there is no canonical definition to state claims against.
-/

/-! ## A328834.P5677717796989140829

`A276086(A328770(n+1))`
-/

namespace A328834.P5677717796989140829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328770 (n + 1)).toNat

end

end A328834.P5677717796989140829

/-! ## A328834.P14535606197955095505

`A000196(A276086(A328849(n+1)))`
-/

namespace A328834.P14535606197955095505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276086 (A328849 (n + 1)).toNat).toNat

end

end A328834.P14535606197955095505

/-! ## A328834.P3823879754070234246

`A276086(A328849(n+1)/2)`
-/

namespace A328834.P3823879754070234246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A328849 (n + 1) : ℚ) / 2)).toNat

end

end A328834.P3823879754070234246

/-! ## A328834.P15004957162242989076

`A328475(A328849(n+1)/2)`
-/

namespace A328834.P15004957162242989076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 (SequenceMachineLib.roundAway ((A328849 (n + 1) : ℚ) / 2)).toNat

end

end A328834.P15004957162242989076

/-! ## A328834.P16479673883347224113

`A003961(A275733(n))*A003961(A351577(n))`
-/

namespace A328834.P16479673883347224113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A275733 n).toNat * A003961 (A351577 n).toNat

end

end A328834.P16479673883347224113

/-! ## A328834.P14752989009814744483

`A276076(A153880(n)%A178071(2*(n+2)))`
-/

namespace A328834.P14752989009814744483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (Int.tmod (A153880 n) (A178071 (2 * (n + 2)))).toNat

end

end A328834.P14752989009814744483

/-!
# A328835: Prime shadow of primorial base exp-function: a(n) = A181819(A276086(n)).

The programs for A328835, there is no canonical definition to state claims against.
-/

/-! ## A328835.P2938802714825747008

`A181819(A278226(n))`
-/

namespace A328835.P2938802714825747008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A278226 n).toNat

end

end A328835.P2938802714825747008

/-! ## A328835.P3350558542001941935

`A181819(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328835.P3350558542001941935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A276086 n).toNat

end

end A328835.P3350558542001941935

/-! ## A328835.P3059031128966064834

`∏{e}[A278226(n), A000040(#)]`
-/

namespace A328835.P3059031128966064834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P3059031128966064834

/-! ## A328835.P1528262086654351615

`∏{e}[A278226(n), A005728(#)]`
-/

namespace A328835.P1528262086654351615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005728 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P1528262086654351615

/-! ## A328835.P15518683361534347586

`∏{e}[A278226(n), A020639(A030514(#))]`
-/

namespace A328835.P15518683361534347586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (A030514 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328835.P15518683361534347586

/-! ## A328835.P9883972370742614364

`A275735(eq[A276090(n)², A276090(n)])`
-/

namespace A328835.P9883972370742614364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276090 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328835.P9883972370742614364

/-! ## A328835.P2392964277890759695

`A246029(A277022(n))`
-/

namespace A328835.P2392964277890759695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A277022 n).toNat

end

end A328835.P2392964277890759695

/-! ## A328835.P13189603625624783607

`∏{e}[A276086(n), A000040(#)]`
-/

namespace A328835.P13189603625624783607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P13189603625624783607

/-! ## A328835.P3908092678976497778

`∏{e}[A276086(n), A000043(#)]`
-/

namespace A328835.P3908092678976497778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000043 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P3908092678976497778

/-! ## A328835.P16685316391169766043

`∏{e}[A276086(n), A003459(#)]`
-/

namespace A328835.P16685316391169766043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003459 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P16685316391169766043

/-! ## A328835.P5651326551298618879

`∏{e}[A276086(n), A007605(#)]`
-/

namespace A328835.P5651326551298618879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007605 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P5651326551298618879

/-! ## A328835.P12347006292255025017

`∏{e}[A276086(n), A026424(#)]`
-/

namespace A328835.P12347006292255025017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026424 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P12347006292255025017

/-! ## A328835.P17278226734859734954

`∏{e}[A276086(n), A028864(#)]`
-/

namespace A328835.P17278226734859734954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028864 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P17278226734859734954

/-! ## A328835.P7473530377249221205

`∏{e}[A276086(n), A040990(#)]`
-/

namespace A328835.P7473530377249221205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A040990 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P7473530377249221205

/-! ## A328835.P14755948044050302957

`∏{e}[A276086(n), A058853(#)]`
-/

namespace A328835.P14755948044050302957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A058853 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P14755948044050302957

/-! ## A328835.P3526888768881576380

`∏{e}[A276086(n), A086566(#)]`
-/

namespace A328835.P3526888768881576380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A086566 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P3526888768881576380

/-! ## A328835.P8149385432927174091

`∏{e}[A276086(n), A114420(#)]`
-/

namespace A328835.P8149385432927174091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A114420 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P8149385432927174091

/-! ## A328835.P6610807937831354305

`∏{e}[A276086(n), A266347(#)]`
-/

namespace A328835.P6610807937831354305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A266347 (Nat.factorization (f1 n).natAbs p)

end

end A328835.P6610807937831354305

/-! ## A328835.P11661480926783287003

`∏{e}[A276086(n), A000041(#+1)]`
-/

namespace A328835.P11661480926783287003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p + 1)

end

end A328835.P11661480926783287003

/-!
# A328836: Numbers k such that A276086(k) is a sum of distinct primorial numbers.

The programs for A328836, there is no canonical definition to state claims against.
-/

/-! ## A328836.P12083397704156780696

`eq[0, A328829(n)]`
-/

namespace A328836.P12083397704156780696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328836.P12083397704156780696

/-! ## A328836.P6553723011757286337

`eq[0, A328844(n)]`
-/

namespace A328836.P6553723011757286337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328836.P6553723011757286337

/-! ## A328836.P16715920437647003828

`eq[1, A328389(n)]`
-/

namespace A328836.P16715920437647003828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328836.P16715920437647003828

/-! ## A328836.P17640891569497328338

`eq[1, A328397(n)]`
-/

namespace A328836.P17640891569497328338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328836.P17640891569497328338

/-! ## A328836.P11988940430867311966

`lt[A328389(n), acot(A353528(n+1))]`
-/

namespace A328836.P11988940430867311966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A353528 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A328836.P11988940430867311966

/-!
# A328837: Numbers k for which A328403(k) = A276086(A276086(A276086(k))) is squarefree.

The programs for A328837, there is no canonical definition to state claims against.
-/

/-! ## A328837.P11462169918912119576

`filter[A328836(n+1), A085357(#)]`
-/

namespace A328837.P11462169918912119576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A328837.P11462169918912119576

/-!
# A328838: Numbers such that in the primorial base expansion of their squares only even digits appear.

The programs for A328838, there is no canonical definition to state claims against.
-/

/-! ## A328838.P2102463434330813902

`A000196(A328850(n+1))`
-/

namespace A328838.P2102463434330813902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A328850 (n + 1)).toNat

end

end A328838.P2102463434330813902

/-! ## A328838.P9768568180777229362

`A328850(n+1)^(A054977(n)/2)`
-/

namespace A328838.P9768568180777229362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328850 (n + 1) : ℝ) ^ ((A054977 n : ℚ) / 2 : ℝ)

end

end A328838.P9768568180777229362

/-! ## A328838.P619247770715897940

`(A328850(n+1)^(1/A040002(n)))²`
-/

namespace A328838.P619247770715897940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A328850 (n + 1) : ℝ) ^ (1 / (A040002 n : ℚ) : ℝ)) ^ 2

end

end A328838.P619247770715897940

/-! ## A328838.P9688667156769661820

`A328850(n+1)^(1/2%A017365(n))`
-/

namespace A328838.P9688667156769661820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328850 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017365 n) : ℚ) : ℝ)

end

end A328838.P9688667156769661820

/-! ## A328838.P2334183223314002092

`A328850(n+1)^(A008480(A000015(n+1))/2)`
-/

namespace A328838.P2334183223314002092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328850 (n + 1) : ℝ) ^ ((A008480 (A000015 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A328838.P2334183223314002092

/-! ## A328838.P16856718582729863326

`A328850(n+1)^(A139553(n)/A005843(A139553(n)))`
-/

namespace A328838.P16856718582729863326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328850 (n + 1) : ℝ) ^ ((A139553 n : ℚ) / (A005843 (A139553 n).toNat : ℚ) : ℝ)

end

end A328838.P16856718582729863326

/-!
# A328839: Smallest prime not dividing n times smallest prime not dividing A276087(n).

The programs for A328839, there is no canonical definition to state claims against.
-/

/-! ## A328839.P1277526487089087654

`A053669(n+1)*A328579(n+1)`
-/

namespace A328839.P1277526487089087654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) * A328579 (n + 1)

end

end A328839.P1277526487089087654

/-! ## A328839.P3640015475760007922

`(A071222(n)+1)*A328579(n+1)`
-/

namespace A328839.P3640015475760007922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071222 n + 1) * A328579 (n + 1)

end

end A328839.P3640015475760007922

/-! ## A328839.P3829307869345997848

`A000040(A328578(n+1))*A053669(n+1)`
-/

namespace A328839.P3829307869345997848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A328578 (n + 1)).toNat * A053669 (n + 1)

end

end A328839.P3829307869345997848

/-! ## A328839.P11954677834433970684

`A020639(A276086(n+1))*A328579(n+1)`
-/

namespace A328839.P11954677834433970684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276086 (n + 1)).toNat * A328579 (n + 1)

end

end A328839.P11954677834433970684

/-! ## A328839.P16143014363656511902

`A053669(n+1)*A326810(A276086(n+1))`
-/

namespace A328839.P16143014363656511902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) * A326810 (A276086 (n + 1)).toNat

end

end A328839.P16143014363656511902

/-!
# A328840: Numbers with no digit 1 in their primorial base expansion (A049345).

The programs for A328840, there is no canonical definition to state claims against.
-/

/-! ## A328840.P17893367634499447705

`eq[0, A328614(n)]`
-/

namespace A328840.P17893367634499447705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328840.P17893367634499447705

/-! ## A328840.P17125102644942908172

`eq[1, A329028(n)]`
-/

namespace A328840.P17125102644942908172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328840.P17125102644942908172

/-! ## A328840.P3308789469349958682

`eq[1, A328835(n)%2]`
-/

namespace A328840.P3308789469349958682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328835 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328840.P3308789469349958682

/-! ## A328840.P11604551525800637722

`2*lt[A328614(2*n), 1]`
-/

namespace A328840.P11604551525800637722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328840.P11604551525800637722

/-! ## A328840.P3432529708553303362

`eq[2, A285783(and(1, -A328835(n)))]`
-/

namespace A328840.P3432529708553303362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285783 (Int.land 1 (-A328835 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328840.P3432529708553303362

/-! ## A328840.P1303984526865322087

`2*lt[A329028(2*n), A329028(2*n+1)]`
-/

namespace A328840.P1303984526865322087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328840.P1303984526865322087

/-! ## A328840.P10166138895755899791

`lt[A329028(n), A001222(A328839(n+1))]`
-/

namespace A328840.P10166138895755899791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328839 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328840.P10166138895755899791

/-! ## A328840.P15154307570560151679

`eq[n, A353512(n)]`
-/

namespace A328840.P15154307570560151679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328840.P15154307570560151679

/-! ## A328840.P10243008528531275167

`eq[A267263(n), A328615(n)]`
-/

namespace A328840.P10243008528531275167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328840.P10243008528531275167

/-! ## A328840.P12984136000149683388

`eq[n, n*A329027(A028310(n))]`
-/

namespace A328840.P12984136000149683388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A329027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328840.P12984136000149683388

/-! ## A328840.P11443808398743155442

`lt[A328839(A328835(n)), 5]`
-/

namespace A328840.P11443808398743155442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328839 (A328835 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328840.P11443808398743155442

/-! ## A328840.P14850879853636822445

`lt[A339012(A328835(n)+1), 1]`
-/

namespace A328840.P14850879853636822445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (A328835 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328840.P14850879853636822445

/-! ## A328840.P13336913501346545397

`lt[1, A055396(A328835(n)+2)]`
-/

namespace A328840.P13336913501346545397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A328835 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328840.P13336913501346545397

/-! ## A328840.P216867923342542760

`eq[2, A010141(2*A328835(n))]`
-/

namespace A328840.P216867923342542760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (2 * A328835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328840.P216867923342542760

/-! ## A328840.P6380223910371911462

`lt[A339012(n), A339012(A328835(n))]`
-/

namespace A328840.P6380223910371911462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (A328835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328840.P6380223910371911462

/-!
# A328841: Substitute ones for all nonzero digits in primorial base expansion of n, then convert back to decimal.

The programs for A328841, there is no canonical definition to state claims against.
-/

/-! ## A328841.P3462095008985947939

`n-A328842(n)`
-/

namespace A328841.P3462095008985947939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A328842 n

end

end A328841.P3462095008985947939

/-!
# A328842: Decrement each nonzero digit by one in primorial base representation of n, then convert back to decimal.

The programs for A328842, there is no canonical definition to state claims against.
-/

/-! ## A328842.P10384136373523695531

`n-A328841(n)`
-/

namespace A328842.P10384136373523695531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A328841 n

end

end A328842.P10384136373523695531

/-! ## A328842.P7274635435759672948

`abs(A328841(n)+A001489(n))`
-/

namespace A328842.P7274635435759672948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328841 n + A001489 n|

end

end A328842.P7274635435759672948

/-! ## A328842.P4543534258479170710

`n-∑{p}[A328571(n), A276085(#)]`
-/

namespace A328842.P4543534258479170710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276085 p

end

end A328842.P4543534258479170710

/-! ## A328842.P17018361171277799327

`A061601(A328841(n)+A061601(n))`
-/

namespace A328842.P17018361171277799327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A328841 n + A061601 n).toNat

end

end A328842.P17018361171277799327

/-! ## A328842.P13829686164901705505

`lcm(A328841(n)+A001489(n), A000034(n))`
-/

namespace A328842.P13829686164901705505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A328841 n + A001489 n) (A000034 n)

end

end A328842.P13829686164901705505

/-! ## A328842.P6877044982626347337

`record[A131738(n)]%(A328841(n)+1+n)`
-/

namespace A328842.P6877044982626347337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A328841 n + 1 + (n : ℤ))

end

end A328842.P6877044982626347337

/-! ## A328842.P7552652743920273035

`n-A276085(A328571(n))`
-/

namespace A328842.P7552652743920273035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (A328571 n).toNat

end

end A328842.P7552652743920273035

/-! ## A328842.P17309803029711375424

`n-A276085(A276086(n)/A328572(n))`
-/

namespace A328842.P17309803029711375424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A328842.P17309803029711375424

/-! ## A328842.P14931337536458566547

`n-A343046(A000124(n+1))`
-/

namespace A328842.P14931337536458566547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343046 (A000124 (n + 1)).toNat

end

end A328842.P14931337536458566547

/-! ## A328842.P7215153660731301997

`n-A343046(A034856(n+1))`
-/

namespace A328842.P7215153660731301997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343046 (A034856 (n + 1)).toNat

end

end A328842.P7215153660731301997

/-! ## A328842.P495512678092940497

`A372576(A328572(n))`
-/

namespace A328842.P495512678092940497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A328572 n).toNat

end

end A328842.P495512678092940497

/-! ## A328842.P945148918081904100

`n-∑{p}[A276086(n), A276085(#)]`
-/

namespace A328842.P945148918081904100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276085 p

end

end A328842.P945148918081904100

/-!
# A328843: a(n) = A328841(A276086(n)).

The programs for A328843, there is no canonical definition to state claims against.
-/

/-! ## A328843.P4761115951015843372

`A276086(n)-A328844(n)`
-/

namespace A328843.P4761115951015843372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A328844 n

end

end A328843.P4761115951015843372

/-! ## A328843.P4196272904461902794

`A328841(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328843.P4196272904461902794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328841 (A276086 n).toNat

end

end A328843.P4196272904461902794

/-! ## A328843.P302377308273739561

`A351225(n)+n-A328844(n)`
-/

namespace A328843.P302377308273739561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + ((n : ℤ) - A328844 n)

end

end A328843.P302377308273739561

/-! ## A328843.P5505300293493061488

`A324198(n)*A351251(n)-A328844(n)`
-/

namespace A328843.P5505300293493061488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n * A351251 n - A328844 n

end

end A328843.P5505300293493061488

/-! ## A328843.P8090033939864010382

`A346101(A289234(n))-A328844(n)`
-/

namespace A328843.P8090033939864010382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat - A328844 n

end

end A328843.P8090033939864010382

/-! ## A328843.P9361006259508226287

`A328627(A328625(n))-A328844(n)`
-/

namespace A328843.P9361006259508226287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 n).toNat - A328844 n

end

end A328843.P9361006259508226287

/-! ## A328843.P11081719640695752241

`A328624(A328626(n))-A328844(n)`
-/

namespace A328843.P11081719640695752241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 n).toNat - A328844 n

end

end A328843.P11081719640695752241

/-! ## A328843.P2093115366828838615

`A054842(A049345(n))-A328844(n)`
-/

namespace A328843.P2093115366828838615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A049345 n).toNat - A328844 n

end

end A328843.P2093115366828838615

/-! ## A328843.P10607609782161311568

`A324350(A046092(n))-A328844(n)`
-/

namespace A328843.P10607609782161311568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324350 (A046092 n).toNat - A328844 n

end

end A328843.P10607609782161311568

/-! ## A328843.P11112487290601460862

`∑{p}[A328571(A276086(n)), A276085(#)]`
-/

namespace A328843.P11112487290601460862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A276086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276085 p

end

end A328843.P11112487290601460862

/-!
# A328844: a(n) = A328842(A276086(n)).

The programs for A328844, there is no canonical definition to state claims against.
-/

/-! ## A328844.P5892079668205576232

`A276086(n)-A328843(n)`
-/

namespace A328844.P5892079668205576232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A328843 n

end

end A328844.P5892079668205576232

/-! ## A328844.P16276926669184660037

`A328842(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328844.P16276926669184660037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 (A276086 n).toNat

end

end A328844.P16276926669184660037

/-! ## A328844.P14808615214791245409

`A351225(n)+n-A328843(n)`
-/

namespace A328844.P14808615214791245409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + ((n : ℤ) - A328843 n)

end

end A328844.P14808615214791245409

/-! ## A328844.P2049579230026855092

`A346101(A289234(n))-A328843(n)`
-/

namespace A328844.P2049579230026855092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat - A328843 n

end

end A328844.P2049579230026855092

/-! ## A328844.P15957614418380809086

`A328476(n)+A328580(n)-A328843(n)`
-/

namespace A328844.P15957614418380809086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328476 n + (A328580 n - A328843 n)

end

end A328844.P15957614418380809086

/-! ## A328844.P4734100484076303511

`A328627(A328625(n))-A328843(n)`
-/

namespace A328844.P4734100484076303511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 n).toNat - A328843 n

end

end A328844.P4734100484076303511

/-! ## A328844.P11207960702441459642

`A328624(A328626(n))-A328843(n)`
-/

namespace A328844.P11207960702441459642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 n).toNat - A328843 n

end

end A328844.P11207960702441459642

/-! ## A328844.P6736769912094158964

`A054842(A049345(n))-A328843(n)`
-/

namespace A328844.P6736769912094158964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A049345 n).toNat - A328843 n

end

end A328844.P6736769912094158964

/-! ## A328844.P3010484518434498447

`A324350(A046092(n))-A328843(n)`
-/

namespace A328844.P3010484518434498447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324350 (A046092 n).toNat - A328843 n

end

end A328844.P3010484518434498447

/-! ## A328844.P11513080609992857804

`A328842(A328580(n)+A328476(n))`
-/

namespace A328844.P11513080609992857804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 (A328580 n + A328476 n).toNat

end

end A328844.P11513080609992857804

/-!
# A328845: The first Fibonacci based variant of arithmetic derivative: a(p) = A000045(p) for prime p, a(u*v) = a(u)*v + u*a(v), with a(0) = a(1) = 0.

The programs for A328845, there is no canonical definition to state claims against.
-/

/-! ## A328845.P2247975861125155160

`A374125(A001222(2^n))`
-/

namespace A328845.P2247975861125155160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374125 (A001222 (2 ^ n)).toNat

end

end A328845.P2247975861125155160

/-! ## A328845.P1521943712451896516

`A374125(abs(A359774(2^n)-n))`
-/

namespace A328845.P1521943712451896516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374125 |A359774 (2 ^ n) - (n : ℤ)|.toNat

end

end A328845.P1521943712451896516

/-! ## A328845.P13804360910009607633

`A374125(n)+A000007(A119266(n))`
-/

namespace A328845.P13804360910009607633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374125 n + A000007 (A119266 n).toNat

end

end A328845.P13804360910009607633

/-! ## A328845.P16627822331482659650

`A374125(n)+A341519(A000079(n))`
-/

namespace A328845.P16627822331482659650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374125 n + A341519 (A000079 n).toNat

end

end A328845.P16627822331482659650

/-! ## A328845.P3863942639412690849

`A374125(n)-A128064(A158238(n+1))`
-/

namespace A328845.P3863942639412690849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374125 n - A128064 (A158238 (n + 1)).toNat

end

end A328845.P3863942639412690849

/-!
# A328847: Number of terms in Zeckendorf expansion needed to write the first Fibonacci based variant of arithmetic derivative of n.

The programs for A328847, there is no canonical definition to state claims against.
-/

/-! ## A328847.P6989182825224428575

`A007895(A328845(n))`
-/

namespace A328847.P6989182825224428575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A328845 n).toNat

end

end A328847.P6989182825224428575

/-! ## A328847.P2012370691717243257

`∑{e}[A277006(A328845(n)), A000010(#)]`
-/

namespace A328847.P2012370691717243257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A328845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A328847.P2012370691717243257

/-! ## A328847.P6438748544940406544

`∑{e}[A277006(A328845(n)), A000201(#)]`
-/

namespace A328847.P6438748544940406544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A328845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000201 (Nat.factorization (f1 n).natAbs p)

end

end A328847.P6438748544940406544

/-! ## A328847.P5122573913313149069

`∑{e}[A277006(A328845(n)), A007436(#)]`
-/

namespace A328847.P5122573913313149069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A328845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007436 (Nat.factorization (f1 n).natAbs p)

end

end A328847.P5122573913313149069

/-! ## A328847.P15427596257326228423

`A331410(n+1)+A295297(A089574(n+1))`
-/

namespace A328847.P15427596257326228423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + A295297 (A089574 (n + 1)).toNat

end

end A328847.P15427596257326228423

/-!
# A328848: Number of terms in Zeckendorf expansion needed to write the second Fibonacci based variant of arithmetic derivative of n.

The programs for A328848, there is no canonical definition to state claims against.
-/

/-! ## A328848.P6171645512337457888

`A007895(A328846(n))`
-/

namespace A328848.P6171645512337457888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A328846 n).toNat

end

end A328848.P6171645512337457888

/-! ## A328848.P16207715291930923804

`A001221(A000041(A327965(n))*A327859(n))`
-/

namespace A328848.P16207715291930923804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000041 (A327965 n).toNat * A327859 n).toNat

end

end A328848.P16207715291930923804

/-! ## A328848.P16778306455980865052

`A001222(xor(A004013(n)², A000225(n)))`
-/

namespace A328848.P16778306455980865052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A004013 n ^ 2) (A000225 n)).toNat

end

end A328848.P16778306455980865052

/-! ## A328848.P5666314388765641043

`∑{e}[A244108(n)-A000005(2*n+1)+n, #]`
-/

namespace A328848.P5666314388765641043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244108 n - A000005 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328848.P5666314388765641043

/-!
# A328849: Numbers in whose primorial base expansion only even digits appear.

The programs for A328849, there is no canonical definition to state claims against.
-/

/-! ## A328849.P3389433559613986890

`2*A328770(n+1)`
-/

namespace A328849.P3389433559613986890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328770 (n + 1)

end

end A328849.P3389433559613986890

/-! ## A328849.P1695677263233415202

`A328770(or(n+1, char[2]))+A328770(n+1)`
-/

namespace A328849.P1695677263233415202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328770 (Nat.lor (n + 1) (if ∃ j, f1 j = n then 1 else 0)) + A328770 (n + 1)

end

end A328849.P1695677263233415202

/-! ## A328849.P5380829851759288939

`record[A328622(2*n)]`
-/

namespace A328849.P5380829851759288939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328849.P5380829851759288939

/-! ## A328849.P1621153417587981765

`A328622(record[A328622(n)-n])`
-/

namespace A328849.P1621153417587981765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328849.P1621153417587981765

/-! ## A328849.P7478455981793680248

`A328622(eq[2*n, A328622(n)])`
-/

namespace A328849.P7478455981793680248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328849.P7478455981793680248

/-! ## A328849.P16277332894276377795

`A328622(eq[n, A328622(n)/2])`
-/

namespace A328849.P16277332894276377795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328622 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A328849.P16277332894276377795

/-! ## A328849.P6524258713773467412

`A328622(eq[n, A328622(n)-n])`
-/

namespace A328849.P6524258713773467412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328849.P6524258713773467412

/-! ## A328849.P13196213049961728093

`A328770(n+1)+A005843(A328770(n+1)/2)`
-/

namespace A328849.P13196213049961728093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328770 (n + 1) + A005843 (SequenceMachineLib.roundAway ((A328770 (n + 1) : ℚ) / 2)).toNat

end

end A328849.P13196213049961728093

/-! ## A328849.P14723724984355805531

`A005843(A328770(n+1))`
-/

namespace A328849.P14723724984355805531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A328770 (n + 1)).toNat

end

end A328849.P14723724984355805531

/-! ## A328849.P12586519271728318377

`A004277(A328770(n+1)+1)-2`
-/

namespace A328849.P12586519271728318377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A328770 (n + 1) + 1).toNat - 2

end

end A328849.P12586519271728318377

/-! ## A328849.P13331555848192890129

`A005843(eq[A005843(n), A328622(n)])`
-/

namespace A328849.P13331555848192890129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328849.P13331555848192890129

/-! ## A328849.P3832038069073014487

`A014601(eq[A014601(n), A328622(n)])`
-/

namespace A328849.P3832038069073014487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328849.P3832038069073014487

/-! ## A328849.P7292139965787272806

`eq[1, A001511(A324655(n))]`
-/

namespace A328849.P7292139965787272806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A324655 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328849.P7292139965787272806

/-! ## A328849.P15538916542989515371

`eq[n, 2*A328623(n)]`
-/

namespace A328849.P15538916542989515371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328849.P15538916542989515371

/-! ## A328849.P15671848055429433076

`eq[A001281(n), A328623(n)]`
-/

namespace A328849.P15671848055429433076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328849.P15671848055429433076

/-! ## A328849.P14861349661386510634

`eq[A004524(n), A328623(n)]`
-/

namespace A328849.P14861349661386510634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328849.P14861349661386510634

/-! ## A328849.P7266804845862927889

`eq[A004526(n), A328623(n)]`
-/

namespace A328849.P7266804845862927889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328849.P7266804845862927889

/-! ## A328849.P12929514582738881277

`eq[A006370(n), A328623(n)]`
-/

namespace A328849.P12929514582738881277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328849.P12929514582738881277

/-! ## A328849.P17507403601294925405

`eq[A025480(n), A328623(n)]`
-/

namespace A328849.P17507403601294925405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328849.P17507403601294925405

/-! ## A328849.P9187643584271569043

`eq[A029578(n), A328623(n)]`
-/

namespace A328849.P9187643584271569043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328849.P9187643584271569043

/-!
# A328850: Squares in whose primorial base expansion only even digits appear.

The programs for A328850, there is no canonical definition to state claims against.
-/

/-! ## A328850.P960357376492079031

`A000290(A328838(n+1))`
-/

namespace A328850.P960357376492079031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A328838 (n + 1)).toNat

end

end A328850.P960357376492079031

/-! ## A328850.P4387247638845155578

`A328838(xor(1, xor(1, n+1)))^2`
-/

namespace A328850.P4387247638845155578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328838 (Nat.xor 1 (Nat.xor 1 (n + 1))) ^ 2

end

end A328850.P4387247638845155578

/-! ## A328850.P18360987560501742708

`A328838(2*(n+1)-(n+1))^2`
-/

namespace A328850.P18360987560501742708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328838 (2 * (n + 1) - (n + 1)) ^ 2

end

end A328850.P18360987560501742708

/-! ## A328850.P2012827318452954124

`record[A328838(A324346(n))²]`
-/

namespace A328850.P2012827318452954124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328838 (A324346 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328850.P2012827318452954124

/-! ## A328850.P5850595510560895967

`lcm(A328838(n+1)^2, A014695(n))`
-/

namespace A328850.P5850595510560895967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A328838 (n + 1) ^ 2) (A014695 n)

end

end A328850.P5850595510560895967

/-! ## A328850.P2069096256371640052

`record[A328838(A324346(n))]*A328838(n+1)`
-/

namespace A328850.P2069096256371640052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328838 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A328838 (n + 1)

end

end A328850.P2069096256371640052

/-! ## A328850.P1980670109681819483

`A328838(A000027(n+1))*A328838(n+1)`
-/

namespace A328850.P1980670109681819483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328838 (A000027 (n + 1)).toNat * A328838 (n + 1)

end

end A328850.P1980670109681819483

/-! ## A328850.P10608581510133661890

`A029578(A328838(n+1)+1)^A014963(A001316(n))`
-/

namespace A328850.P10608581510133661890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (A328838 (n + 1) + 1).toNat : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A328850.P10608581510133661890

/-! ## A328850.P13880409577611520001

`A002620(2*A328838(n+1))`
-/

namespace A328850.P13880409577611520001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A328838 (n + 1)).toNat

end

end A328850.P13880409577611520001

/-! ## A328850.P14554914398267425725

`A328838(A000196((n+1)²))²`
-/

namespace A328850.P14554914398267425725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328838 (A000196 ((n + 1) ^ 2)).toNat ^ 2

end

end A328850.P14554914398267425725

/-!
# A328851: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(k + 1).

The programs for A328851, there is no canonical definition to state claims against.
-/

/-! ## A328851.P14864598721355937982

`∑{d}[n+1, A301830(#)*A328853((n+1)/#)]`
-/

namespace A328851.P14864598721355937982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A328853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328851.P14864598721355937982

/-! ## A328851.P1062491586151883781

`∑{d}[n+1, A001055(#)*A050367((n+1)/#)]`
-/

namespace A328851.P1062491586151883781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A050367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328851.P1062491586151883781

/-!
# A328853: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(k - 1).

The programs for A328853, there is no canonical definition to state claims against.
-/

/-! ## A328853.P12784663897099495128

`∑{d}[n+1, A328851(#)*A339701((n+1)/#)]`
-/

namespace A328853.P12784663897099495128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328851 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328853.P12784663897099495128

/-! ## A328853.P4567903163489633365

`∑{d}[n+1, A050367(#)*A114592((n+1)/#)]`
-/

namespace A328853.P4567903163489633365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050367 d * A114592 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328853.P4567903163489633365

/-!
# A328854: Dirichlet g.f.: Product_{p prime} 1 / (1 - 2 * p^(-s))^2.

The programs for A328854, the canonical program `A328854.P3819257502522719717` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328854 has offset 1).

The definition of A328854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328854.P3819257502522719717

`2^A001222(n+1)*A000005(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328854

/-- `2^A001222(n+1)*A000005(n+1)` -/
def P3819257502522719717.Spec : Prop :=
  ∀ n, P3819257502522719717.a n = (A328854 (n + 1) : ℚ)

end A328854

/-! ## A328854.P9644538985999004909

`∏{e}[n+1, A001787(#+1)]`
-/

namespace A328854.P9644538985999004909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001787 (Nat.factorization (f1 n) p + 1)

end

end A328854.P9644538985999004909

namespace A328854

/-- `∏{e}[n+1, A001787(#+1)]` -/
def P9644538985999004909.Spec : Prop :=
  ∀ n, P9644538985999004909.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P13244201204477589265

`∏{e}[n+1, #+1]*A061142(n+1)`
-/

namespace A328854.P13244201204477589265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A061142 (n + 1)

end

end A328854.P13244201204477589265

namespace A328854

/-- `∏{e}[n+1, #+1]*A061142(n+1)` -/
def P13244201204477589265.Spec : Prop :=
  ∀ n, P13244201204477589265.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P8093788940856903545

`∏{e}[n+1, #+1]*A219676(∑{e}[n+1, #])`
-/

namespace A328854.P8093788940856903545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A219676 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A328854.P8093788940856903545

namespace A328854

/-- `∏{e}[n+1, #+1]*A219676(∑{e}[n+1, #])` -/
def P8093788940856903545.Spec : Prop :=
  ∀ n, P8093788940856903545.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P17056739321896792665

`Δ[A006218(n)]*A061142(n+1)`
-/

namespace A328854.P17056739321896792665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A061142 (n + 1)

end

end A328854.P17056739321896792665

namespace A328854

/-- `Δ[A006218(n)]*A061142(n+1)` -/
def P17056739321896792665.Spec : Prop :=
  ∀ n, P17056739321896792665.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P10905833581726969209

`A000005(n+1)*A061142(n+1)`
-/

namespace A328854.P10905833581726969209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A061142 (n + 1)

end

end A328854.P10905833581726969209

namespace A328854

/-- `A000005(n+1)*A061142(n+1)` -/
def P10905833581726969209.Spec : Prop :=
  ∀ n, P10905833581726969209.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P8761862387072585434

`A165872(n+1)*A329484(n+1)`
-/

namespace A328854.P8761862387072585434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1) * A329484 (n + 1)

end

end A328854.P8761862387072585434

namespace A328854

/-- `A165872(n+1)*A329484(n+1)` -/
def P8761862387072585434.Spec : Prop :=
  ∀ n, P8761862387072585434.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P4184781360202715857

`sqrt(A165825(n+1))*A000005(n+1)`
-/

namespace A328854.P4184781360202715857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A000005 (n + 1) : ℝ)

end

end A328854.P4184781360202715857

namespace A328854

/-- `sqrt(A165825(n+1))*A000005(n+1)` -/
def P4184781360202715857.Spec : Prop :=
  ∀ n, P4184781360202715857.a n = (A328854 (n + 1) : ℝ)

end A328854

/-! ## A328854.P16418286709772541572

`A000005(n+1)*A000079(∑{e}[n+1, #])`
-/

namespace A328854.P16418286709772541572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000079 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A328854.P16418286709772541572

namespace A328854

/-- `A000005(n+1)*A000079(∑{e}[n+1, #])` -/
def P16418286709772541572.Spec : Prop :=
  ∀ n, P16418286709772541572.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P4177652756344073416

`∑{d}[n+1, A061142(#)*A061142((n+1)/#)]`
-/

namespace A328854.P4177652756344073416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061142 d * A061142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328854.P4177652756344073416

namespace A328854

/-- `∑{d}[n+1, A061142(#)*A061142((n+1)/#)]` -/
def P4177652756344073416.Spec : Prop :=
  ∀ n, P4177652756344073416.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P5187967769597676782

`∑{d}[n+1, A162510(#)*A182139((n+1)/#)]`
-/

namespace A328854.P5187967769597676782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162510 d * A182139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328854.P5187967769597676782

namespace A328854

/-- `∑{d}[n+1, A162510(#)*A182139((n+1)/#)]` -/
def P5187967769597676782.Spec : Prop :=
  ∀ n, P5187967769597676782.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P16179766839941483218

`A000005(n+1)*A000079(A001222(n+1))`
-/

namespace A328854.P16179766839941483218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000079 (A001222 (n + 1)).toNat

end

end A328854.P16179766839941483218

namespace A328854

/-- `A000005(n+1)*A000079(A001222(n+1))` -/
def P16179766839941483218.Spec : Prop :=
  ∀ n, P16179766839941483218.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P13225243112607677460

`A000005(n+1)*A122111(A105560(n+1))`
-/

namespace A328854.P13225243112607677460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A122111 (A105560 (n + 1)).toNat

end

end A328854.P13225243112607677460

namespace A328854

/-- `A000005(n+1)*A122111(A105560(n+1))` -/
def P13225243112607677460.Spec : Prop :=
  ∀ n, P13225243112607677460.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P2068889085581205803

`A000005(n+1)*A011782(A001222(n+1)+1)`
-/

namespace A328854.P2068889085581205803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A011782 (A001222 (n + 1) + 1).toNat

end

end A328854.P2068889085581205803

namespace A328854

/-- `A000005(n+1)*A011782(A001222(n+1)+1)` -/
def P2068889085581205803.Spec : Prop :=
  ∀ n, P2068889085581205803.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P3807577451514934162

`A000005(n+1)*A050732(A001222(n+1)+1)`
-/

namespace A328854.P3807577451514934162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A050732 (A001222 (n + 1) + 1).toNat

end

end A328854.P3807577451514934162

namespace A328854

/-- `A000005(n+1)*A050732(A001222(n+1)+1)` -/
def P3807577451514934162.Spec : Prop :=
  ∀ n, P3807577451514934162.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P7075656973230404862

`A000005(n+1)/A166651(n+1)*A167330(n+1)`
-/

namespace A328854.P7075656973230404862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A166651 (n + 1) : ℚ) * (A167330 (n + 1) : ℚ)

end

end A328854.P7075656973230404862

namespace A328854

/-- `A000005(n+1)/A166651(n+1)*A167330(n+1)` -/
def P7075656973230404862.Spec : Prop :=
  ∀ n, P7075656973230404862.a n = (A328854 (n + 1) : ℚ)

end A328854

/-! ## A328854.P10040132302163296755

`sqrt(A165825(n+1))*∑{d}[n+1, A000040(#+1)%2]`
-/

namespace A328854.P10040132302163296755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * ((∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2 : ℤ) : ℝ)

end

end A328854.P10040132302163296755

namespace A328854

/-- `sqrt(A165825(n+1))*∑{d}[n+1, A000040(#+1)%2]` -/
def P10040132302163296755.Spec : Prop :=
  ∀ n, P10040132302163296755.a n = (A328854 (n + 1) : ℝ)

end A328854

/-! ## A328854.P11842965664314917187

`A000005(n+1)*A000005(A076734(n+1))`
-/

namespace A328854.P11842965664314917187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 (A076734 (n + 1)).toNat

end

end A328854.P11842965664314917187

namespace A328854

/-- `A000005(n+1)*A000005(A076734(n+1))` -/
def P11842965664314917187.Spec : Prop :=
  ∀ n, P11842965664314917187.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P15021238068855915851

`A000005(n+1)*A000005(A086568(n+1))`
-/

namespace A328854.P15021238068855915851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 (A086568 (n + 1)).toNat

end

end A328854.P15021238068855915851

namespace A328854

/-- `A000005(n+1)*A000005(A086568(n+1))` -/
def P15021238068855915851.Spec : Prop :=
  ∀ n, P15021238068855915851.a n = A328854 (n + 1)

end A328854

/-! ## A328854.P13449578149712346780

`A000005(n+1)*A000005(A332462(n+1))`
-/

namespace A328854.P13449578149712346780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 (A332462 (n + 1)).toNat

end

end A328854.P13449578149712346780

namespace A328854

/-- `A000005(n+1)*A000005(A332462(n+1))` -/
def P13449578149712346780.Spec : Prop :=
  ∀ n, P13449578149712346780.a n = A328854 (n + 1)

end A328854

/-!
# A328855: Number of factorizations of n into numbers with an odd number of distinct prime factors.

The programs for A328855, there is no canonical definition to state claims against.
-/

/-! ## A328855.P12728537355238373762

`floor(∑{p}[n+1, root(γ, #)])!*A000688(n+1)`
-/

namespace A328855.P12728537355238373762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋.toNat : ℤ) * A000688 (n + 1)

end

end A328855.P12728537355238373762

/-! ## A328855.P7132786098060532015

`A352556(A046523(n+1))`
-/

namespace A328855.P7132786098060532015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352556 (A046523 (n + 1)).toNat

end

end A328855.P7132786098060532015

/-! ## A328855.P4717898863488757669

`A352556(A071364(n+1))`
-/

namespace A328855.P4717898863488757669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352556 (A071364 (n + 1)).toNat

end

end A328855.P4717898863488757669

/-! ## A328855.P16212347587254033303

`A352550(A278254(n+1))`
-/

namespace A328855.P16212347587254033303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (A278254 (n + 1)).toNat

end

end A328855.P16212347587254033303

/-!
# A328856: Number of factorizations of n into distinct numbers with an odd number of distinct prime factors.

The programs for A328856, there is no canonical definition to state claims against.
-/

/-! ## A328856.P9999535712094023596

`A050361(n+1)*A335450(A335450(n+1))`
-/

namespace A328856.P9999535712094023596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1) * A335450 (A335450 (n + 1)).toNat

end

end A328856.P9999535712094023596

/-! ## A328856.P99552313241812067

`A336121(A336571(n+1))+1`
-/

namespace A328856.P99552313241812067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A336571 (n + 1)).toNat + 1

end

end A328856.P99552313241812067

/-! ## A328856.P6052702407829367888

`A108502(A336571(A336571(n+1)))`
-/

namespace A328856.P6052702407829367888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108502 (A336571 (A336571 (n + 1)).toNat).toNat

end

end A328856.P6052702407829367888

/-! ## A328856.P7345032406483293937

`A050361(n+1)*A351202(A179926(n+1))`
-/

namespace A328856.P7345032406483293937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1) * A351202 (A179926 (n + 1)).toNat

end

end A328856.P7345032406483293937

/-! ## A328856.P14374305255270986395

`A065033(A349326(n+1)%A302494(n+3))`
-/

namespace A328856.P14374305255270986395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.tmod (A349326 (n + 1)) (A302494 (n + 3))).toNat

end

end A328856.P14374305255270986395

/-! ## A328856.P2236140619956303047

`A321405(∑{e}[n+1, or(1, #-1)]%A340386(n+1))`
-/

namespace A328856.P2236140619956303047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 (Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), Int.lor 1 ((Nat.factorization (f1 n) p : ℤ) - 1)) (A340386 (n + 1))).toNat

end

end A328856.P2236140619956303047

/-! ## A328856.P7725329122646321471

`A065033(A349326(n+1))%A345912(n+1)`
-/

namespace A328856.P7725329122646321471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A349326 (n + 1)).toNat) (A345912 (n + 1))

end

end A328856.P7725329122646321471

/-! ## A328856.P8007751903436613523

`A046951(A327499((n+1)²)%A122040(n+1)*A348037(n+1))`
-/

namespace A328856.P8007751903436613523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Int.tmod (A327499 ((n + 1) ^ 2)) (A122040 (n + 1)) * A348037 (n + 1)).toNat

end

end A328856.P8007751903436613523

/-! ## A328856.P16894553498841443382

`A065033(A348248(2*n+3)*A349326(n+1))`
-/

namespace A328856.P16894553498841443382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A348248 (2 * n + 3) * A349326 (n + 1)).toNat

end

end A328856.P16894553498841443382

/-! ## A328856.P16111210191101552195

`A000009(A349326(n+1))%A349316(2*n+3)`
-/

namespace A328856.P16111210191101552195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A349326 (n + 1)).toNat) (A349316 (2 * n + 3))

end

end A328856.P16111210191101552195

/-!
# A328857: Numbers with a record number of divisors that have the same value of the Euler totient function (A000010).

The programs for A328857, there is no canonical definition to state claims against.
-/

/-! ## A328857.P395303520735017944

`filter[A373532(n+1), A373834(#)]`
-/

namespace A328857.P395303520735017944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A328857.P395303520735017944

/-! ## A328857.P11512056456827099765

`filter[A373532(n+1), A161996(#)]`
-/

namespace A328857.P11512056456827099765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A328857.P11512056456827099765

/-!
# A328859: Indices k of records of low value in the ratios A319696(k)/A000005(k) between the number of distinct values of the Euler totient function applied to the divisors of k and the number of divisors of k.

The programs for A328859, there is no canonical definition to state claims against.
-/

/-! ## A328859.P11000814390832002557

`2^n*A040266(3^n)`
-/

namespace A328859.P11000814390832002557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A040266 (3 ^ n)

end

end A328859.P11000814390832002557

/-! ## A328859.P10728517241337885944

`A004524(4*a(n-1))` with `a(0)=1, a(1)=2, a(2)=60`
-/

namespace A328859.P10728517241337885944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 60] fun n a =>
  A004524 (4 * a (n - 1)).toNat

end

end A328859.P10728517241337885944

/-! ## A328859.P5357691140838403400

`2^n*A038712(ceil(8*3^(n-2)))`
-/

namespace A328859.P5357691140838403400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A038712 ⌈8 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat

end

end A328859.P5357691140838403400

/-! ## A328859.P522011799822871220

`∏[A185879(A028387(n)²)]`
-/

namespace A328859.P522011799822871220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185879 (A028387 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A328859.P522011799822871220

/-! ## A328859.P17746067436212483514

`Δ[A196305(n)]%A072888(n+2)`
-/

namespace A328859.P17746067436212483514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A072888 (n + 2))

end

end A328859.P17746067436212483514

/-!
# A328862: Maximum of the smallest sum of increasing concatenations of a permutation of {1, ..., n}.

The programs for A328862, there is no canonical definition to state claims against.
-/

/-! ## A328862.P9290021953249960962

`A338692(A185365(n+1))%A185381(2*(n+2))`
-/

namespace A328862.P9290021953249960962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338692 (A185365 (n + 1)).toNat) (A185381 (2 * (n + 2)))

end

end A328862.P9290021953249960962

/-!
# A328863: Number of partitions of 2n that describe the degree sequence of exactly one labeled multigraph with no loops.

The programs for A328863, there is no canonical definition to state claims against.
-/

/-! ## A328863.P15139352413034712618

`A000041(n+1)+A069905(n+1)`
-/

namespace A328863.P15139352413034712618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + A069905 (n + 1)

end

end A328863.P15139352413034712618

/-! ## A328863.P9799850139713793876

`A000041(n+1)+∑[A008615(n)]`
-/

namespace A328863.P9799850139713793876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328863.P9799850139713793876

/-! ## A328863.P17499823112398183110

`A004250(n+1)+A001399(n+1)`
-/

namespace A328863.P17499823112398183110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (n + 1) + A001399 (n + 1)

end

end A328863.P17499823112398183110

/-! ## A328863.P6052977468259546711

`∑[A008615(n)]+A000065(n+1)+1`
-/

namespace A328863.P6052977468259546711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000065 (n + 1) + 1)

end

end A328863.P6052977468259546711

/-! ## A328863.P866936942715102187

`A005044(2*(n+1))+Δ[A000070(n)]`
-/

namespace A328863.P866936942715102187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A328863.P866936942715102187

/-! ## A328863.P3483199897424722165

`A005044(2*(n+1))+A000041(n+1)`
-/

namespace A328863.P3483199897424722165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * (n + 1)) + A000041 (n + 1)

end

end A328863.P3483199897424722165

/-!
# A328864: For any three-digit number k = hdu, f(k) = (h+d+u) + (h*d+d*u+u*h) + (h*d*u). This sequence consists of the numbers k for which the ratio k/f(k) is an integer.

The programs for A328864, there is no canonical definition to state claims against.
-/

/-! ## A328864.P15002698163986644417

`A343131(n+29)`
-/

namespace A328864.P15002698163986644417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343131 (n + 29)

end

end A328864.P15002698163986644417

/-!
# A328865: The first repeating term in the trajectory of n under iterations of A329623, or -1 if no such terms exists.

The programs for A328865, the canonical program `A328865.P7576153008617993152` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328865 has offset 1).

The definition of A328865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328865.P518304694679986305

`A334108(92*A000040(n+1))`
-/

namespace A328865.P518304694679986305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (92 * A000040 (n + 1)).toNat

end

end A328865.P518304694679986305

namespace A328865

/-- `A334108(92*A000040(n+1))` -/
def P518304694679986305.Spec : Prop :=
  ∀ n, P518304694679986305.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P11384744474493274368

`A122638(a(n-1))-A224447(A071044(n))` with `a(0)=1`
-/

namespace A328865.P11384744474493274368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122638 (a (n - 1)).toNat - A224447 (A071044 n).toNat

end

end A328865.P11384744474493274368

namespace A328865

/-- `A122638(a(n-1))-A224447(A071044(n))` -/
def P11384744474493274368.Spec : Prop :=
  ∀ n, P11384744474493274368.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P10895280082357344957

`A138366(a(n-1))+A102376(A102376(n))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A328865.P10895280082357344957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A138366 (a (n - 1)).toNat + A102376 (A102376 n).toNat

end

end A328865.P10895280082357344957

namespace A328865

/-- `A138366(a(n-1))+A102376(A102376(n))` -/
def P10895280082357344957.Spec : Prop :=
  ∀ n, P10895280082357344957.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P427072142931400000

`A258632(a(n-1)+1)+A224447(A071044(n))` with `a(0)=1`
-/

namespace A328865.P427072142931400000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258632 (a (n - 1) + 1).toNat + A224447 (A071044 n).toNat

end

end A328865.P427072142931400000

namespace A328865

/-- `A258632(a(n-1)+1)+A224447(A071044(n))` -/
def P427072142931400000.Spec : Prop :=
  ∀ n, P427072142931400000.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P12328364150487050172

`A087052(A323404(n+1))%10`
-/

namespace A328865.P12328364150487050172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087052 (A323404 (n + 1)).toNat) 10

end

end A328865.P12328364150487050172

namespace A328865

/-- `A087052(A323404(n+1))%10` -/
def P12328364150487050172.Spec : Prop :=
  ∀ n, P12328364150487050172.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P3243253200832515210

`A325135(A195819(p?[2*n+1]))`
-/

namespace A328865.P3243253200832515210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A195819 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A328865.P3243253200832515210

namespace A328865

/-- `A325135(A195819(p?[2*n+1]))` -/
def P3243253200832515210.Spec : Prop :=
  ∀ n, P3243253200832515210.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P10535140792569173429

`dr(record[A236363(A055471(n+1))])`
-/

namespace A328865.P10535140792569173429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236363 (A055471 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A328865.P10535140792569173429

namespace A328865

/-- `dr(record[A236363(A055471(n+1))])` -/
def P10535140792569173429.Spec : Prop :=
  ∀ n, (P10535140792569173429.a n : ℤ) = A328865 (n + 1)

end A328865

/-! ## A328865.P2207273548083139016

`A051885(∑[A087028(n+1)])%10`
-/

namespace A328865.P2207273548083139016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 10

end

end A328865.P2207273548083139016

namespace A328865

/-- `A051885(∑[A087028(n+1)])%10` -/
def P2207273548083139016.Spec : Prop :=
  ∀ n, P2207273548083139016.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P13695865386970389983

`floor(∑[A002473(n+1)/A059405(n+1)])`
-/

namespace A328865.P13695865386970389983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) / (A059405 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A328865.P13695865386970389983

namespace A328865

/-- `floor(∑[A002473(n+1)/A059405(n+1)])` -/
def P13695865386970389983.Spec : Prop :=
  ∀ n, P13695865386970389983.a n = A328865 (n + 1)

end A328865

/-! ## A328865.P7576153008617993152

`A087121(n+1)%10`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328865

/-- `A087121(n+1)%10` -/
def P7576153008617993152.Spec : Prop :=
  ∀ n, P7576153008617993152.a n = A328865 (n + 1)

theorem P7576153008617993152.correct : P7576153008617993152.Spec := by
  intro n
  simp only [A328865, Nat.add_sub_cancel]

end A328865

/-! ## A328865.P12840196881054373236

`∑[A248776(n+1)]%16`
-/

namespace A328865.P12840196881054373236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 16

end

end A328865.P12840196881054373236

namespace A328865

/-- `∑[A248776(n+1)]%16` -/
def P12840196881054373236.Spec : Prop :=
  ∀ n, P12840196881054373236.a n = A328865 (n + 1)

end A328865

/-!
# A328866: Row sums of array A324124.

The programs for A328866, there is no canonical definition to state claims against.
-/

/-! ## A328866.P2012296893928137624

`A257143(A178345(n))`
-/

namespace A328866.P2012296893928137624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (A178345 n).toNat

end

end A328866.P2012296893928137624

/-! ## A328866.P13554028716161976007

`A391373(A366368(n+1))`
-/

namespace A328866.P13554028716161976007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391373 (A366368 (n + 1)).toNat

end

end A328866.P13554028716161976007

/-!
# A328867: Heinz numbers of integer partitions in which no two distinct parts are relatively prime.

The programs for A328867, there is no canonical definition to state claims against.
-/

/-! ## A328867.P13703648733552594284

`lt[A327405(n+1)%(n+1), 2]+1`
-/

namespace A328867.P13703648733552594284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327405 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328867.P13703648733552594284

/-! ## A328867.P9564469511230258841

`eq[val(n+1, 2)+1, A327530(n+1)]+1`
-/

namespace A328867.P9564469511230258841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328867.P9564469511230258841

/-! ## A328867.P11973337653047084463

`eq[1, A327513(n+1)-val(n+1, 2)]+1`
-/

namespace A328867.P11973337653047084463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328867.P11973337653047084463

/-! ## A328867.P10533771971376993107

`eq[and(n, n+1)+1, A327656(n+1)]+1`
-/

namespace A328867.P10533771971376993107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328867.P10533771971376993107

/-! ## A328867.P13788681866039202747

`∪[A305103(n+1), A000079(n)]`
-/

namespace A328867.P13788681866039202747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328867.P13788681866039202747

/-! ## A328867.P11560661282394402092

`∪[A305103(n+1), A008860(n)]`
-/

namespace A328867.P11560661282394402092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328867.P11560661282394402092

/-! ## A328867.P13041698364145144457

`∪[A305103(n+1), A008861(n)]`
-/

namespace A328867.P13041698364145144457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328867.P13041698364145144457

/-! ## A328867.P4932700436074485315

`∪[A305103(n+1), A008862(n)]`
-/

namespace A328867.P4932700436074485315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328867.P4932700436074485315

/-! ## A328867.P535261867969061939

`∪[A305103(n+1), A008863(n)]`
-/

namespace A328867.P535261867969061939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328867.P535261867969061939

/-!
# A328868: Heinz numbers of integer partitions with no two (not necessarily distinct) parts relatively prime, but with no divisor in common to all of the parts.

The programs for A328868, there is no canonical definition to state claims against.
-/

/-! ## A328868.P2546000782912685164

`A318716(A328617(n+1)+1)`
-/

namespace A328868.P2546000782912685164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318716 (A328617 (n + 1) + 1).toNat

end

end A328868.P2546000782912685164

/-! ## A328868.P18246294394882303357

`A318716(n+2)%A132660(n+2)`
-/

namespace A328868.P18246294394882303357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318716 (n + 2)) (A132660 (n + 2))

end

end A328868.P18246294394882303357

/-! ## A328868.P14068603165820166943

`A000034((4*(n+1))²)*A318716(n+2)`
-/

namespace A328868.P14068603165820166943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((4 * (n + 1)) ^ 2) * A318716 (n + 2)

end

end A328868.P14068603165820166943

/-! ## A328868.P8818798073313548770

`A318716((n+1)%(A360069(2*(n+2))+1)+1)`
-/

namespace A328868.P8818798073313548770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318716 (Int.tmod (n + 1 : ℤ) (A360069 (2 * (n + 2)) + 1) + 1).toNat

end

end A328868.P8818798073313548770

/-! ## A328868.P5521935013908273532

`A318716(n+2)+A000007(A265064(n))`
-/

namespace A328868.P5521935013908273532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318716 (n + 2) + A000007 (A265064 n).toNat

end

end A328868.P5521935013908273532

/-!
# A328869: Numbers whose lengths of runs of 1's in their reversed binary expansion are weakly increasing.

The programs for A328869, there is no canonical definition to state claims against.
-/

/-! ## A328869.P10968208811110633107

`eq[1, A124766(A385889(n))]`
-/

namespace A328869.P10968208811110633107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A385889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328869.P10968208811110633107

/-! ## A328869.P18261260200639701839

`lt[A319794(A057889(n)), A319794(n+2)]`
-/

namespace A328869.P18261260200639701839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319794 (A057889 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319794 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328869.P18261260200639701839

/-! ## A328869.P13450171983363591183

`lt[A342123(n+1), A000005(A045683(n))]+1`
-/

namespace A328869.P13450171983363591183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A045683 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328869.P13450171983363591183

/-!
# A328870: Numbers whose lengths of runs of 1's in their reversed binary expansion are not weakly increasing.

The programs for A328870, there is no canonical definition to state claims against.
-/

/-! ## A328870.P9890207185842073160

`eq[1, A124761(A385889(n))]`
-/

namespace A328870.P9890207185842073160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A385889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328870.P9890207185842073160

/-! ## A328870.P10660679989085403359

`lt[A087808(n), A087808(A229763(n))]`
-/

namespace A328870.P10660679989085403359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328870.P10660679989085403359

/-! ## A328870.P8158578240275926835

`lt[A332815(n), A085079(A332815(n))]`
-/

namespace A328870.P8158578240275926835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A332815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328870.P8158578240275926835

/-! ## A328870.P1794728912932917171

`lt[A005940(n+1), A085079(A005940(n+1))]`
-/

namespace A328870.P1794728912932917171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328870.P1794728912932917171

/-! ## A328870.P16465696115537347215

`eq[A020639(2*(n+2)), A124766(A385889(n))]`
-/

namespace A328870.P16465696115537347215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A385889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328870.P16465696115537347215

/-! ## A328870.P11411637696413646846

`lt[A090077(n)+A002264(2*n+1), A003188(n)]`
-/

namespace A328870.P11411637696413646846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n + A002264 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328870.P11411637696413646846

/-!
# A328871: Number of integer partitions of n whose distinct parts are pairwise indivisible (stable) and pairwise non-relatively prime (intersecting).

The programs for A328871, there is no canonical definition to state claims against.
-/

/-! ## A328871.P12308883110930248142

`A329632(n)+A157928(A214259(n+1))`
-/

namespace A328871.P12308883110930248142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329632 n + A157928 (A214259 (n + 1)).toNat

end

end A328871.P12308883110930248142

/-! ## A328871.P8678424757516359402

`A329632(n)+A001221(ceil(2^(n-1)))`
-/

namespace A328871.P8678424757516359402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329632 n + A001221 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A328871.P8678424757516359402

/-! ## A328871.P647064134868059420

`A329632(n)+A121262(A000079(n))`
-/

namespace A328871.P647064134868059420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329632 n + A121262 (A000079 n).toNat

end

end A328871.P647064134868059420

/-! ## A328871.P12663454061473125725

`A316439(A006721(n))+A032741(n)`
-/

namespace A328871.P12663454061473125725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316439 (A006721 n).toNat + A032741 n

end

end A328871.P12663454061473125725

/-! ## A328871.P6801552718466257802

`A324105(A070939(or(2, 2^n)))`
-/

namespace A328871.P6801552718466257802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A070939 (Nat.lor 2 (2 ^ n))).toNat

end

end A328871.P6801552718466257802

/-!
# A328872: Number of semi-magic (only short lines are magic) knight's tours on a 6 X n board.

The programs for A328872, there is no canonical definition to state claims against.
-/

/-! ## A328872.P5449296876440700084

`∑{d}[A192077(n+1), and(12, #)]`
-/

namespace A328872.P5449296876440700084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 12 d

end

end A328872.P5449296876440700084

/-! ## A328872.P88277706636808725

`and(24*C(n, 4), A057961(C(n+3, 3)²))`
-/

namespace A328872.P88277706636808725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (24 * Nat.choose n 4 : ℤ) (A057961 (Nat.choose (n + 3) 3 ^ 2))

end

end A328872.P88277706636808725

/-! ## A328872.P14078686704566285429

`A061858(A007199(n+1))`
-/

namespace A328872.P14078686704566285429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (A007199 (n + 1)).toNat

end

end A328872.P14078686704566285429

/-!
# A328874: Constant term in the expansion of (-1 + (1 + x + 1/x) * (1 + y + 1/y) * (1 + z + 1/z))^n.

The programs for A328874, there is no canonical definition to state claims against.
-/

/-! ## A328874.P13178618208020350589

`A327751(A167614(n+2))`
-/

namespace A328874.P13178618208020350589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (A167614 (n + 2)).toNat

end

end A328874.P13178618208020350589

/-! ## A328874.P4546576954812586766

`A327751(A141214(n)+6)`
-/

namespace A328874.P4546576954812586766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (A141214 n + 6).toNat

end

end A328874.P4546576954812586766

/-! ## A328874.P14288879274895188807

`A327751(A052905(n)+8)`
-/

namespace A328874.P14288879274895188807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (A052905 n + 8).toNat

end

end A328874.P14288879274895188807

/-! ## A328874.P6120440262492060922

`A327751(A055999(n)+9)`
-/

namespace A328874.P6120440262492060922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (A055999 n + 9).toNat

end

end A328874.P6120440262492060922

/-! ## A328874.P13042142607153868001

`A327751(eq[3, A002262(n)])`
-/

namespace A328874.P13042142607153868001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328874.P13042142607153868001

/-!
# A328875: Constant term in the expansion of (-1 + (1 + w + 1/w) * (1 + x + 1/x) * (1 + y + 1/y) * (1 + z + 1/z))^n.

The programs for A328875, there is no canonical definition to state claims against.
-/

/-! ## A328875.P31840589027351817

`A327751(∑[n+4]+10)`
-/

namespace A328875.P31840589027351817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A328875.P31840589027351817

/-! ## A328875.P10056392745370456013

`A329820(∑[2*n])`
-/

namespace A328875.P10056392745370456013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329820 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328875.P10056392745370456013

/-! ## A328875.P15396279250557673801

`and(-1, A329820(A002378(n)))`
-/

namespace A328875.P15396279250557673801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A329820 (A002378 n).toNat)

end

end A328875.P15396279250557673801

/-!
# A328876: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(k + 1).

The programs for A328876, there is no canonical definition to state claims against.
-/

/-! ## A328876.P5595693562255513549

`∑{d}[n+1, A328706(#)*A328877((n+1)/#)]`
-/

namespace A328876.P5595693562255513549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A328877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328876.P5595693562255513549

/-! ## A328876.P2583676004301825460

`∑{d}[n+1, A045778(#)*A050368((n+1)/#)]`
-/

namespace A328876.P2583676004301825460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A050368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328876.P2583676004301825460

/-!
# A328877: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(k - 1).

The programs for A328877, there is no canonical definition to state claims against.
-/

/-! ## A328877.P11004572718673659815

`∑{d}[n+1, A328876(#)*A339717((n+1)/#)]`
-/

namespace A328877.P11004572718673659815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328876 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328877.P11004572718673659815

/-! ## A328877.P6534905896338716455

`∑{d}[n+1, A050368(#)*A316441((n+1)/#)]`
-/

namespace A328877.P6534905896338716455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050368 d * A316441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328877.P6534905896338716455

/-!
# A328878: If n = Product (p_j^k_j) then a(n) = Product (prime(p_j)).

The programs for A328878, the canonical program `A328878.P14038068358988386156` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328878 has offset 1).

The definition of A328878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328878.P14038068358988386156

`∏{p}[n+1, A000040(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328878

/-- `∏{p}[n+1, A000040(#)]` -/
def P14038068358988386156.Spec : Prop :=
  ∀ n, P14038068358988386156.a n = A328878 (n + 1)

theorem P14038068358988386156.correct : P14038068358988386156.Spec := by
  intro n
  simp only [A328878, Nat.add_sub_cancel]

end A328878

/-! ## A328878.P3444071816373651110

`∏{p}[n+1, A006005(#)]`
-/

namespace A328878.P3444071816373651110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006005 p

end

end A328878.P3444071816373651110

namespace A328878

/-- `∏{p}[n+1, A006005(#)]` -/
def P3444071816373651110.Spec : Prop :=
  ∀ n, P3444071816373651110.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P6314458244213298720

`A064988(∏{p}[n+1, #])`
-/

namespace A328878.P6314458244213298720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A328878.P6314458244213298720

namespace A328878

/-- `A064988(∏{p}[n+1, #])` -/
def P6314458244213298720.Spec : Prop :=
  ∀ n, P6314458244213298720.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P9557322617649806704

`∏{p}[n+1, A105562(#)]`
-/

namespace A328878.P9557322617649806704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A105562 p

end

end A328878.P9557322617649806704

namespace A328878

/-- `∏{p}[n+1, A105562(#)]` -/
def P9557322617649806704.Spec : Prop :=
  ∀ n, P9557322617649806704.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P14991576471648371954

`∏{p}[n+1, A105574(#)]`
-/

namespace A328878.P14991576471648371954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A105574 p

end

end A328878.P14991576471648371954

namespace A328878

/-- `∏{p}[n+1, A105574(#)]` -/
def P14991576471648371954.Spec : Prop :=
  ∀ n, P14991576471648371954.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P8938868451686428133

`∏{p}[n+1, A120426(#)]`
-/

namespace A328878.P8938868451686428133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A120426 p

end

end A328878.P8938868451686428133

namespace A328878

/-- `∏{p}[n+1, A120426(#)]` -/
def P8938868451686428133.Spec : Prop :=
  ∀ n, P8938868451686428133.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P12555129728556644348

`∏{p}[n+1, A137458(#)]`
-/

namespace A328878.P12555129728556644348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A137458 p

end

end A328878.P12555129728556644348

namespace A328878

/-- `∏{p}[n+1, A137458(#)]` -/
def P12555129728556644348.Spec : Prop :=
  ∀ n, P12555129728556644348.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P1010591484863984244

`∏{p}[n+1, A351368(#)]`
-/

namespace A328878.P1010591484863984244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A351368 p

end

end A328878.P1010591484863984244

namespace A328878

/-- `∏{p}[n+1, A351368(#)]` -/
def P1010591484863984244.Spec : Prop :=
  ∀ n, P1010591484863984244.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P4817936980800985217

`A064988(A007947(n+1))`
-/

namespace A328878.P4817936980800985217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A007947 (n + 1)).toNat

end

end A328878.P4817936980800985217

namespace A328878

/-- `A064988(A007947(n+1))` -/
def P4817936980800985217.Spec : Prop :=
  ∀ n, P4817936980800985217.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P9191378986474384795

`A064988(n+1)/A064988(A003557(n+1))`
-/

namespace A328878.P9191378986474384795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064988 (n + 1) : ℚ) / (A064988 (A003557 (n + 1)).toNat : ℚ)

end

end A328878.P9191378986474384795

namespace A328878

/-- `A064988(n+1)/A064988(A003557(n+1))` -/
def P9191378986474384795.Spec : Prop :=
  ∀ n, P9191378986474384795.a n = (A328878 (n + 1) : ℚ)

end A328878

/-! ## A328878.P1261437493441063002

`∏{p}[n+1, A063884(#)]`
-/

namespace A328878.P1261437493441063002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A063884 p

end

end A328878.P1261437493441063002

namespace A328878

/-- `∏{p}[n+1, A063884(#)]` -/
def P1261437493441063002.Spec : Prop :=
  ∀ n, P1261437493441063002.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P1956717457927900105

`gcd(A064988(n+1), A275700(n+1))`
-/

namespace A328878.P1956717457927900105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064988 (n + 1)) (A275700 (n + 1))

end

end A328878.P1956717457927900105

namespace A328878

/-- `gcd(A064988(n+1), A275700(n+1))` -/
def P1956717457927900105.Spec : Prop :=
  ∀ n, (P1956717457927900105.a n : ℤ) = A328878 (n + 1)

end A328878

/-! ## A328878.P134574496338940103

`A328915(A290641(n+1))`
-/

namespace A328878.P134574496338940103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328915 (A290641 (n + 1)).toNat

end

end A328878.P134574496338940103

namespace A328878

/-- `A328915(A290641(n+1))` -/
def P134574496338940103.Spec : Prop :=
  ∀ n, P134574496338940103.a n = A328878 (n + 1)

end A328878

/-! ## A328878.P9332721050677415005

`A076109(A064988(n+1))`
-/

namespace A328878.P9332721050677415005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (A064988 (n + 1)).toNat

end

end A328878.P9332721050677415005

namespace A328878

/-- `A076109(A064988(n+1))` -/
def P9332721050677415005.Spec : Prop :=
  ∀ n, P9332721050677415005.a n = A328878 (n + 1)

end A328878

/-!
# A328879: If n = Product (p_j^k_j) then a(n) = Product (pi(p_j) + 1), where pi = A000720.

The programs for A328879, the canonical program `A328879.P6974897454424880359` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328879 has offset 1).

The definition of A328879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328879.P3689759024713584552

`A003977(∏{p}[n+1, #])`
-/

namespace A328879.P3689759024713584552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A328879.P3689759024713584552

namespace A328879

/-- `A003977(∏{p}[n+1, #])` -/
def P3689759024713584552.Spec : Prop :=
  ∀ n, P3689759024713584552.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P10478144182230265016

`∏{p}[n+1, A036234(#)]`
-/

namespace A328879.P10478144182230265016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A036234 p

end

end A328879.P10478144182230265016

namespace A328879

/-- `∏{p}[n+1, A036234(#)]` -/
def P10478144182230265016.Spec : Prop :=
  ∀ n, P10478144182230265016.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P17920204246941802892

`A064553(∏{p}[n+1, #])`
-/

namespace A328879.P17920204246941802892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A328879.P17920204246941802892

namespace A328879

/-- `A064553(∏{p}[n+1, #])` -/
def P17920204246941802892.Spec : Prop :=
  ∀ n, P17920204246941802892.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P4376736056390150483

`∏{p}[n+1, A079788(#)]`
-/

namespace A328879.P4376736056390150483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A079788 p

end

end A328879.P4376736056390150483

namespace A328879

/-- `∏{p}[n+1, A079788(#)]` -/
def P4376736056390150483.Spec : Prop :=
  ∀ n, P4376736056390150483.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P11008477047670804096

`∏{p}[n+1, A158973(#)]`
-/

namespace A328879.P11008477047670804096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A158973 p

end

end A328879.P11008477047670804096

namespace A328879

/-- `∏{p}[n+1, A158973(#)]` -/
def P11008477047670804096.Spec : Prop :=
  ∀ n, P11008477047670804096.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P6974897454424880359

`∏{p}[n+1, A159081(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A328879

/-- `∏{p}[n+1, A159081(#)]` -/
def P6974897454424880359.Spec : Prop :=
  ∀ n, P6974897454424880359.a n = A328879 (n + 1)

theorem P6974897454424880359.correct : P6974897454424880359.Spec := by
  intro n
  simp only [A328879, Nat.add_sub_cancel]

end A328879

/-! ## A328879.P7185952838100559001

`∏{p}[n+1, A186971(#)]`
-/

namespace A328879.P7185952838100559001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A186971 p

end

end A328879.P7185952838100559001

namespace A328879

/-- `∏{p}[n+1, A186971(#)]` -/
def P7185952838100559001.Spec : Prop :=
  ∀ n, P7185952838100559001.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P13576428404007477859

`∏{p}[n+1, A238690(#)]`
-/

namespace A328879.P13576428404007477859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A238690 p

end

end A328879.P13576428404007477859

namespace A328879

/-- `∏{p}[n+1, A238690(#)]` -/
def P13576428404007477859.Spec : Prop :=
  ∀ n, P13576428404007477859.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P2896645787493729014

`∏{p}[n+1, A253783(#)]`
-/

namespace A328879.P2896645787493729014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A253783 p

end

end A328879.P2896645787493729014

namespace A328879

/-- `∏{p}[n+1, A253783(#)]` -/
def P2896645787493729014.Spec : Prop :=
  ∀ n, P2896645787493729014.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P15893095403002428215

`∏{p}[n+1, A286477(#)]`
-/

namespace A328879.P15893095403002428215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A286477 p

end

end A328879.P15893095403002428215

namespace A328879

/-- `∏{p}[n+1, A286477(#)]` -/
def P15893095403002428215.Spec : Prop :=
  ∀ n, P15893095403002428215.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P8513831101307507497

`∏{p}[n+1, A304106(#)]`
-/

namespace A328879.P8513831101307507497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A304106 p

end

end A328879.P8513831101307507497

namespace A328879

/-- `∏{p}[n+1, A304106(#)]` -/
def P8513831101307507497.Spec : Prop :=
  ∀ n, P8513831101307507497.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P8060336864357331046

`∏{p}[n+1, A318994(#)]`
-/

namespace A328879.P8060336864357331046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A318994 p

end

end A328879.P8060336864357331046

namespace A328879

/-- `∏{p}[n+1, A318994(#)]` -/
def P8060336864357331046.Spec : Prop :=
  ∀ n, P8060336864357331046.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P14413454269602108428

`∏{p}[n+1, A325134(#)]`
-/

namespace A328879.P14413454269602108428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A325134 p

end

end A328879.P14413454269602108428

namespace A328879

/-- `∏{p}[n+1, A325134(#)]` -/
def P14413454269602108428.Spec : Prop :=
  ∀ n, P14413454269602108428.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P6063977033321867592

`∏{p}[n+1, A328219(#)]`
-/

namespace A328879.P6063977033321867592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A328219 p

end

end A328879.P6063977033321867592

namespace A328879

/-- `∏{p}[n+1, A328219(#)]` -/
def P6063977033321867592.Spec : Prop :=
  ∀ n, P6063977033321867592.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P9874367161312696924

`∏{p}[n+1, A336315(#)]`
-/

namespace A328879.P9874367161312696924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A336315 p

end

end A328879.P9874367161312696924

namespace A328879

/-- `∏{p}[n+1, A336315(#)]` -/
def P9874367161312696924.Spec : Prop :=
  ∀ n, P9874367161312696924.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P11216335062596188269

`∏{p}[n+1, A342165(#)]`
-/

namespace A328879.P11216335062596188269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A342165 p

end

end A328879.P11216335062596188269

namespace A328879

/-- `∏{p}[n+1, A342165(#)]` -/
def P11216335062596188269.Spec : Prop :=
  ∀ n, P11216335062596188269.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P9764496264841250438

`∏{p}[n+1, A351519(#)]`
-/

namespace A328879.P9764496264841250438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A351519 p

end

end A328879.P9764496264841250438

namespace A328879

/-- `∏{p}[n+1, A351519(#)]` -/
def P9764496264841250438.Spec : Prop :=
  ∀ n, P9764496264841250438.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P8204945580676097689

`A003977(A007947(n+1))`
-/

namespace A328879.P8204945580676097689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A007947 (n + 1)).toNat

end

end A328879.P8204945580676097689

namespace A328879

/-- `A003977(A007947(n+1))` -/
def P8204945580676097689.Spec : Prop :=
  ∀ n, P8204945580676097689.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P13008430397545060235

`A064553((n+1)/A003557(n+1))`
-/

namespace A328879.P13008430397545060235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A328879.P13008430397545060235

namespace A328879

/-- `A064553((n+1)/A003557(n+1))` -/
def P13008430397545060235.Spec : Prop :=
  ∀ n, P13008430397545060235.a n = A328879 (n + 1)

end A328879

/-! ## A328879.P5119435851858216883

`A003963(A328915(n+1))`
-/

namespace A328879.P5119435851858216883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A328915 (n + 1)).toNat

end

end A328879.P5119435851858216883

namespace A328879

/-- `A003963(A328915(n+1))` -/
def P5119435851858216883.Spec : Prop :=
  ∀ n, P5119435851858216883.a n = A328879 (n + 1)

end A328879

/-!
# A328880: If n = Product (p_j^k_j) then a(n) = Product (a(pi(p_j)) + 1), where pi = A000720, with a(1) = 1.

The programs for A328880, there is no canonical definition to state claims against.
-/

/-! ## A328880.P5139965443663283380

`A184160(or(A244173(n), A348066(n+1)))`
-/

namespace A328880.P5139965443663283380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (Int.lor (A244173 (n + 10)) (A348066 (n + 1))).toNat

end

end A328880.P5139965443663283380

/-! ## A328880.P6625615989805417106

`A184160(A348066(n+1))+A000038(A070550(n))`
-/

namespace A328880.P6625615989805417106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A348066 (n + 1)).toNat + A000038 (A070550 n).toNat

end

end A328880.P6625615989805417106

/-! ## A328880.P10667467780803035189

`A184160(A348066(n+1))+A000007(A000045(n+1))`
-/

namespace A328880.P10667467780803035189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A348066 (n + 1)).toNat + A000007 (A000045 (n + 1)).toNat

end

end A328880.P10667467780803035189

/-! ## A328880.P12419509255825038839

`A184160(A348066(n+1))%A000040(A046630(n))`
-/

namespace A328880.P12419509255825038839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (A348066 (n + 1)).toNat) (A000040 (A046630 n).toNat)

end

end A328880.P12419509255825038839

/-!
# A328881: a(n+3) = 2^n - a(n), a(0)=a(2)=1, a(1)=0 for n >= 0.

The programs for A328881, the canonical program `A328881.P6112253542217408788` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328881 has offset 0).

The definition of A328881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328881.P12540628497527255048

`2^(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A328881.P12540628497527255048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A328881.P12540628497527255048

namespace A328881

/-- `2^(n-3)-a(n-3)` -/
def P12540628497527255048.Spec : Prop :=
  ∀ n, P12540628497527255048.a n = (A328881 n : ℚ)

end A328881

/-! ## A328881.P6112253542217408788

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328881

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P6112253542217408788.Spec : Prop :=
  ∀ n, P6112253542217408788.a n = A328881 n

theorem P6112253542217408788.correct : P6112253542217408788.Spec := by
  intro n
  simp only [A328881]

end A328881

/-! ## A328881.P2129997313398023668

`A113405(n)+A092220(n+5)`
-/

namespace A328881.P2129997313398023668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + A092220 (n + 5)

end

end A328881.P2129997313398023668

namespace A328881

/-- `A113405(n)+A092220(n+5)` -/
def P2129997313398023668.Spec : Prop :=
  ∀ n, P2129997313398023668.a n = A328881 n

end A328881

/-! ## A328881.P7750634663227953036

`ogf((1-2x+x^2-x^3)/(1-2x+x^3-2x^4))`
-/

namespace A328881.P7750634663227953036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, -1] [1, -2, 0, 1, -2] n

end

end A328881.P7750634663227953036

namespace A328881

/-- `ogf((1-2x+x^2-x^3)/(1-2x+x^3-2x^4))` -/
def P7750634663227953036.Spec : Prop :=
  ∀ n, P7750634663227953036.a n = A328881 n

end A328881

/-! ## A328881.P15293523455469306160

`A131090(n)+A033999(n)`
-/

namespace A328881.P15293523455469306160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n + A033999 n

end

end A328881.P15293523455469306160

namespace A328881

/-- `A131090(n)+A033999(n)` -/
def P15293523455469306160.Spec : Prop :=
  ∀ n, P15293523455469306160.a n = A328881 n

end A328881

/-! ## A328881.P6418009101511267185

`A153234(n)+A059841(n)`
-/

namespace A328881.P6418009101511267185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A059841 n

end

end A328881.P6418009101511267185

namespace A328881

/-- `A153234(n)+A059841(n)` -/
def P6418009101511267185.Spec : Prop :=
  ∀ n, P6418009101511267185.a n = A328881 n

end A328881

/-! ## A328881.P12666223449865161500

`A153234(n)+A000035(n+1)`
-/

namespace A328881.P12666223449865161500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A000035 (n + 1)

end

end A328881.P12666223449865161500

namespace A328881

/-- `A153234(n)+A000035(n+1)` -/
def P12666223449865161500.Spec : Prop :=
  ∀ n, P12666223449865161500.a n = A328881 n

end A328881

/-! ## A328881.P9251415562436448244

`A153234(n)-(A000035(n)-1)`
-/

namespace A328881.P9251415562436448244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n - (A000035 n - 1)

end

end A328881.P9251415562436448244

namespace A328881

/-- `A153234(n)-(A000035(n)-1)` -/
def P9251415562436448244.Spec : Prop :=
  ∀ n, P9251415562436448244.a n = A328881 n

end A328881

/-! ## A328881.P358830278869387113

`A131666(n)+A131531(n+3)`
-/

namespace A328881.P358830278869387113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + A131531 (n + 3)

end

end A328881.P358830278869387113

namespace A328881

/-- `A131666(n)+A131531(n+3)` -/
def P358830278869387113.Spec : Prop :=
  ∀ n, P358830278869387113.a n = A328881 n

end A328881

/-! ## A328881.P15055379270393601032

`A153234(n)+A133872(2*n)`
-/

namespace A328881.P15055379270393601032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A133872 (2 * n)

end

end A328881.P15055379270393601032

namespace A328881

/-- `A153234(n)+A133872(2*n)` -/
def P15055379270393601032.Spec : Prop :=
  ∀ n, P15055379270393601032.a n = A328881 n

end A328881

/-! ## A328881.P10786910150444059187

`A131090(n)+A131556(3*n)`
-/

namespace A328881.P10786910150444059187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n + A131556 (3 * n)

end

end A328881.P10786910150444059187

namespace A328881

/-- `A131090(n)+A131556(3*n)` -/
def P10786910150444059187.Spec : Prop :=
  ∀ n, P10786910150444059187.a n = A328881 n

end A328881

/-! ## A328881.P11374530423416146594

`A109613(n)+A153234(n)-n`
-/

namespace A328881.P11374530423416146594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + (A153234 n - (n : ℤ))

end

end A328881.P11374530423416146594

namespace A328881

/-- `A109613(n)+A153234(n)-n` -/
def P11374530423416146594.Spec : Prop :=
  ∀ n, P11374530423416146594.a n = A328881 n

end A328881

/-! ## A328881.P9534876357575724988

`A131090(n)+A131534(n)/A131556(n)`
-/

namespace A328881.P9534876357575724988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131090 n : ℚ) + (A131534 n : ℚ) / (A131556 n : ℚ)

end

end A328881.P9534876357575724988

namespace A328881

/-- `A131090(n)+A131534(n)/A131556(n)` -/
def P9534876357575724988.Spec : Prop :=
  ∀ n, P9534876357575724988.a n = (A328881 n : ℚ)

end A328881

/-! ## A328881.P18393456121579714837

`A131531(n+2)+A131556(n)+A131090(n)`
-/

namespace A328881.P18393456121579714837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + (A131556 n + A131090 n)

end

end A328881.P18393456121579714837

namespace A328881

/-- `A131531(n+2)+A131556(n)+A131090(n)` -/
def P18393456121579714837.Spec : Prop :=
  ∀ n, P18393456121579714837.a n = A328881 n

end A328881

/-! ## A328881.P18060615216400379426

`A131531(n+1)+A141325(n)-A140096(n)`
-/

namespace A328881.P18060615216400379426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A141325 n - A140096 n)

end

end A328881.P18060615216400379426

namespace A328881

/-- `A131531(n+1)+A141325(n)-A140096(n)` -/
def P18060615216400379426.Spec : Prop :=
  ∀ n, P18060615216400379426.a n = A328881 n

end A328881

/-! ## A328881.P10318022944227745540

`A113405(n)+A010892(n+1)*A057078(n)`
-/

namespace A328881.P10318022944227745540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + A010892 (n + 1) * A057078 n

end

end A328881.P10318022944227745540

namespace A328881

/-- `A113405(n)+A010892(n+1)*A057078(n)` -/
def P10318022944227745540.Spec : Prop :=
  ∀ n, P10318022944227745540.a n = A328881 n

end A328881

/-! ## A328881.P11528156194034403006

`A131666(n)+A010892(n+1)*A049347(n)`
-/

namespace A328881.P11528156194034403006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + A010892 (n + 1) * A049347 n

end

end A328881.P11528156194034403006

namespace A328881

/-- `A131666(n)+A010892(n+1)*A049347(n)` -/
def P11528156194034403006.Spec : Prop :=
  ∀ n, P11528156194034403006.a n = A328881 n

end A328881

/-! ## A328881.P5075982008876304116

`A088911(n)+A153234(n)-A131531(n+2)`
-/

namespace A328881.P5075982008876304116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n + (A153234 n - A131531 (n + 2))

end

end A328881.P5075982008876304116

namespace A328881

/-- `A088911(n)+A153234(n)-A131531(n+2)` -/
def P5075982008876304116.Spec : Prop :=
  ∀ n, P5075982008876304116.a n = A328881 n

end A328881

/-! ## A328881.P14175409591229923340

`A113405(n)+A130151(n)-A131531(n+2)`
-/

namespace A328881.P14175409591229923340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A130151 n - A131531 (n + 2))

end

end A328881.P14175409591229923340

namespace A328881

/-- `A113405(n)+A130151(n)-A131531(n+2)` -/
def P14175409591229923340.Spec : Prop :=
  ∀ n, P14175409591229923340.a n = A328881 n

end A328881

/-! ## A328881.P15674379778365265467

`A131090(n)+A177702(n+1)/A131556(n)`
-/

namespace A328881.P15674379778365265467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131090 n : ℚ) + (A177702 (n + 1) : ℚ) / (A131556 n : ℚ)

end

end A328881.P15674379778365265467

namespace A328881

/-- `A131090(n)+A177702(n+1)/A131556(n)` -/
def P15674379778365265467.Spec : Prop :=
  ∀ n, P15674379778365265467.a n = (A328881 n : ℚ)

end A328881

/-!
# A328882: a(n) = n - 2^(sum of digits of n).

The programs for A328882, the canonical program `A328882.P7713520551146746960` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328882 has offset 0).

The definition of A328882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328882.P7713520551146746960

`n-2^A007953(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328882

/-- `n-2^A007953(n)` -/
def P7713520551146746960.Spec : Prop :=
  ∀ n, P7713520551146746960.a n = (A328882 n : ℚ)

end A328882

/-! ## A328882.P5125985178533554090

`n-2^∑{digits}[n, #]`
-/

namespace A328882.P5125985178533554090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℤ)

end

end A328882.P5125985178533554090

namespace A328882

/-- `n-2^∑{digits}[n, #]` -/
def P5125985178533554090.Spec : Prop :=
  ∀ n, P5125985178533554090.a n = A328882 n

end A328882

/-! ## A328882.P5817077839138058614

`n-∏{digits}[n, 2^#]`
-/

namespace A328882.P5817077839138058614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℤ)

end

end A328882.P5817077839138058614

namespace A328882

/-- `n-∏{digits}[n, 2^#]` -/
def P5817077839138058614.Spec : Prop :=
  ∀ n, P5817077839138058614.a n = A328882 n

end A328882

/-! ## A328882.P14665766969867273273

`n-A329562(n)`
-/

namespace A328882.P14665766969867273273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A329562 n

end

end A328882.P14665766969867273273

namespace A328882

/-- `n-A329562(n)` -/
def P14665766969867273273.Spec : Prop :=
  ∀ n, P14665766969867273273.a n = A328882 n

end A328882

/-! ## A328882.P13894441745774013875

`n-A000079(∑{digits}[n, #])`
-/

namespace A328882.P13894441745774013875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000079 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A328882.P13894441745774013875

namespace A328882

/-- `n-A000079(∑{digits}[n, #])` -/
def P13894441745774013875.Spec : Prop :=
  ∀ n, P13894441745774013875.a n = A328882 n

end A328882

/-! ## A328882.P13730402962685302879

`n-A000079(A007953(n))`
-/

namespace A328882.P13730402962685302879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000079 (A007953 n).toNat

end

end A328882.P13730402962685302879

namespace A328882

/-- `n-A000079(A007953(n))` -/
def P13730402962685302879.Spec : Prop :=
  ∀ n, P13730402962685302879.a n = A328882 n

end A328882

/-! ## A328882.P7064942021427013667

`n-A016116(A169805(n))`
-/

namespace A328882.P7064942021427013667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016116 (A169805 n).toNat

end

end A328882.P7064942021427013667

namespace A328882

/-- `n-A016116(A169805(n))` -/
def P7064942021427013667.Spec : Prop :=
  ∀ n, P7064942021427013667.a n = A328882 n

end A328882

/-! ## A328882.P3999938824345424412

`n-A139548(A118881(n))`
-/

namespace A328882.P3999938824345424412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A139548 (A118881 n).toNat

end

end A328882.P3999938824345424412

namespace A328882

/-- `n-A139548(A118881(n))` -/
def P3999938824345424412.Spec : Prop :=
  ∀ n, P3999938824345424412.a n = A328882 n

end A328882

/-! ## A328882.P872199941842932181

`n-A131577(A007953(n)+1)`
-/

namespace A328882.P872199941842932181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A131577 (A007953 n + 1).toNat

end

end A328882.P872199941842932181

namespace A328882

/-- `n-A131577(A007953(n)+1)` -/
def P872199941842932181.Spec : Prop :=
  ∀ n, P872199941842932181.a n = A328882 n

end A328882

/-! ## A328882.P16527695755742770227

`n-A000079(A062028(n)-n)`
-/

namespace A328882.P16527695755742770227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000079 (A062028 n - (n : ℤ)).toNat

end

end A328882.P16527695755742770227

namespace A328882

/-- `n-A000079(A062028(n)-n)` -/
def P16527695755742770227.Spec : Prop :=
  ∀ n, P16527695755742770227.a n = A328882 n

end A328882

/-! ## A328882.P4666666806617896452

`n+1-A000051(A007953(A004086(n)))`
-/

namespace A328882.P4666666806617896452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000051 (A007953 (A004086 n).toNat).toNat

end

end A328882.P4666666806617896452

namespace A328882

/-- `n+1-A000051(A007953(A004086(n)))` -/
def P4666666806617896452.Spec : Prop :=
  ∀ n, P4666666806617896452.a n = A328882 n

end A328882

/-! ## A328882.P16667122433896242535

`n-A000079(A061762(n)-A007954(n))`
-/

namespace A328882.P16667122433896242535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000079 (A061762 n - A007954 n).toNat

end

end A328882.P16667122433896242535

namespace A328882

/-- `n-A000079(A061762(n)-A007954(n))` -/
def P16667122433896242535.Spec : Prop :=
  ∀ n, P16667122433896242535.a n = A328882 n

end A328882

/-! ## A328882.P8869498533064539252

`n-A000165(A007953(n))/A269221(n)`
-/

namespace A328882.P8869498533064539252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A000165 (A007953 n).toNat : ℚ) / (A269221 n : ℚ)

end

end A328882.P8869498533064539252

namespace A328882

/-- `n-A000165(A007953(n))/A269221(n)` -/
def P8869498533064539252.Spec : Prop :=
  ∀ n, P8869498533064539252.a n = (A328882 n : ℚ)

end A328882

/-! ## A328882.P12738226680637548707

`n-A000079(A061762(10*n))`
-/

namespace A328882.P12738226680637548707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000079 (A061762 (10 * n)).toNat

end

end A328882.P12738226680637548707

namespace A328882

/-- `n-A000079(A061762(10*n))` -/
def P12738226680637548707.Spec : Prop :=
  ∀ n, P12738226680637548707.a n = A328882 n

end A328882

/-! ## A328882.P13589444036990345959

`n-A194358(A118880(n))`
-/

namespace A328882.P13589444036990345959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194358 (A118880 n).toNat

end

end A328882.P13589444036990345959

namespace A328882

/-- `n-A194358(A118880(n))` -/
def P13589444036990345959.Spec : Prop :=
  ∀ n, P13589444036990345959.a n = A328882 n

end A328882

/-! ## A328882.P2816787132848992561

`n-A248692(A113581(n))`
-/

namespace A328882.P2816787132848992561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A248692 (A113581 n).toNat

end

end A328882.P2816787132848992561

namespace A328882

/-- `n-A248692(A113581(n))` -/
def P2816787132848992561.Spec : Prop :=
  ∀ n, P2816787132848992561.a n = A328882 n

end A328882

/-!
# A328883: Denominators of the best rational approximations of log(6/5)/log(2).

The programs for A328883, there is no canonical definition to state claims against.
-/

/-! ## A328883.P10420829362802145980

`A061919(comp[A061930(2*n)*A071339(2*(n+2))])`
-/

namespace A328883.P10420829362802145980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061930 (2 * n) * A071339 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061919 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A328883.P10420829362802145980

/-! ## A328883.P16068619750222824907

`A061919(eq[0, A270599(n+1)])`
-/

namespace A328883.P16068619750222824907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061919 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328883.P16068619750222824907

/-! ## A328883.P17500406430477391350

`A061919(lt[A270599(n+1), 1])`
-/

namespace A328883.P17500406430477391350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270599 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061919 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328883.P17500406430477391350

/-! ## A328883.P10203803758638127529

`A061919(record[gcd(n, A270599(n+1))])`
-/

namespace A328883.P10203803758638127529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A270599 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061919 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A328883.P10203803758638127529

/-! ## A328883.P1935325590024303316

`∩[A061919(n+1), A247064(n+1)]`
-/

namespace A328883.P1935325590024303316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328883.P1935325590024303316

/-!
# A328884: Improved version of A002685; main diagonal of A324124.

The programs for A328884, there is no canonical definition to state claims against.
-/

/-! ## A328884.P9674136651144429178

`A324124(∑[n]+n)`
-/

namespace A328884.P9674136651144429178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324124 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A328884.P9674136651144429178

/-! ## A328884.P15871176280007594622

`abs(A324124(A000096(n)))`
-/

namespace A328884.P15871176280007594622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324124 (A000096 n).toNat|

end

end A328884.P15871176280007594622

/-! ## A328884.P6431908673519299108

`abs(A324124(A061579(∑[n])))`
-/

namespace A328884.P6431908673519299108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324124 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A328884.P6431908673519299108

/-! ## A328884.P16735607862698336255

`abs(A324124(record[A061579(n)]))`
-/

namespace A328884.P16735607862698336255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324124 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A328884.P16735607862698336255

/-! ## A328884.P5736686859976198496

`record[A109466(n)*A324124(n)]`
-/

namespace A328884.P5736686859976198496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A324124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328884.P5736686859976198496

/-!
# A328885: Improved version of A002686; secondary main diagonal of A324124.

The programs for A328885, there is no canonical definition to state claims against.
-/

/-! ## A328885.P6491148077608772145

`lcm(7, A002686(n+1))/7`
-/

namespace A328885.P6491148077608772145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 7 (A002686 (n + 1)) : ℚ) / 7

end

end A328885.P6491148077608772145

/-! ## A328885.P13080846422286477294

`A002686(n+1)/A170824(n+1)`
-/

namespace A328885.P13080846422286477294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002686 (n + 1) : ℚ) / (A170824 (n + 1) : ℚ)

end

end A328885.P13080846422286477294

/-! ## A328885.P2718596213267550986

`A002686(n+1)/A248909(n+1)`
-/

namespace A328885.P2718596213267550986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002686 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ)

end

end A328885.P2718596213267550986

/-! ## A328885.P6561910765636268744

`A002686(n+1)/A268354(n+1)`
-/

namespace A328885.P6561910765636268744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002686 (n + 1) : ℚ) / (A268354 (n + 1) : ℚ)

end

end A328885.P6561910765636268744

/-! ## A328885.P7161114790875605916

`A002686(n+1)/A131065(A004396(n))`
-/

namespace A328885.P7161114790875605916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002686 (n + 1) : ℚ) / (A131065 (A004396 n).toNat : ℚ)

end

end A328885.P7161114790875605916

/-!
# A328886: Squares that end in 444.

The programs for A328886, the canonical program `A328886.P6087649857980528884` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328886 has offset 1).

The definition of A328886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328886.P6087649857980528884

`A039685(n+1)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328886

/-- `A039685(n+1)²` -/
def P6087649857980528884.Spec : Prop :=
  ∀ n, P6087649857980528884.a n = A328886 (n + 1)

theorem P6087649857980528884.correct : P6087649857980528884.Spec := by
  intro n
  simp only [A328886, Nat.add_sub_cancel]

end A328886

/-! ## A328886.P1201577890084685090

`A039685(A000027(n+1))*A039685(n+1)`
-/

namespace A328886.P1201577890084685090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039685 (A000027 (n + 1)).toNat * A039685 (n + 1)

end

end A328886.P1201577890084685090

namespace A328886

/-- `A039685(A000027(n+1))*A039685(n+1)` -/
def P1201577890084685090.Spec : Prop :=
  ∀ n, P1201577890084685090.a n = A328886 (n + 1)

end A328886

/-! ## A328886.P5583223104376333936

`A039685(n+1)^A000005(A000040(n+1))`
-/

namespace A328886.P5583223104376333936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039685 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A328886.P5583223104376333936

namespace A328886

/-- `A039685(n+1)^A000005(A000040(n+1))` -/
def P5583223104376333936.Spec : Prop :=
  ∀ n, P5583223104376333936.a n = (A328886 (n + 1) : ℚ)

end A328886

/-! ## A328886.P10873665087599281034

`A186439(Δ[A195041(n)])²`
-/

namespace A328886.P10873665087599281034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A328886.P10873665087599281034

namespace A328886

/-- `A186439(Δ[A195041(n)])²` -/
def P10873665087599281034.Spec : Prop :=
  ∀ n, P10873665087599281034.a n = A328886 (n + 1)

end A328886

/-! ## A328886.P10023535426086361638

`A186439(A047336(n+1))²`
-/

namespace A328886.P10023535426086361638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A047336 (n + 1)).toNat ^ 2

end

end A328886.P10023535426086361638

namespace A328886

/-- `A186439(A047336(n+1))²` -/
def P10023535426086361638.Spec : Prop :=
  ∀ n, P10023535426086361638.a n = A328886 (n + 1)

end A328886

/-! ## A328886.P14831278718756777192

`A186439(A047291(2*(n+1)))²`
-/

namespace A328886.P14831278718756777192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A047291 (2 * (n + 1))).toNat ^ 2

end

end A328886.P14831278718756777192

namespace A328886

/-- `A186439(A047291(2*(n+1)))²` -/
def P14831278718756777192.Spec : Prop :=
  ∀ n, P14831278718756777192.a n = A328886 (n + 1)

end A328886

/-! ## A328886.P4142386855065250934

`A186439(A047322(2*(n+1)))²`
-/

namespace A328886.P4142386855065250934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A047322 (2 * (n + 1))).toNat ^ 2

end

end A328886.P4142386855065250934

namespace A328886

/-- `A186439(A047322(2*(n+1)))²` -/
def P4142386855065250934.Spec : Prop :=
  ∀ n, P4142386855065250934.a n = A328886 (n + 1)

end A328886

/-! ## A328886.P3358098121986686841

`A186439(A301451(n+1)-n)²`
-/

namespace A328886.P3358098121986686841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A301451 (n + 1) - (n : ℤ)).toNat ^ 2

end

end A328886.P3358098121986686841

namespace A328886

/-- `A186439(A301451(n+1)-n)²` -/
def P3358098121986686841.Spec : Prop :=
  ∀ n, P3358098121986686841.a n = A328886 (n + 1)

end A328886

/-! ## A328886.P8758912284125717312

`A039685(n+1)*A186439(A047336(n+1))`
-/

namespace A328886.P8758912284125717312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039685 (n + 1) * A186439 (A047336 (n + 1)).toNat

end

end A328886.P8758912284125717312

namespace A328886

/-- `A039685(n+1)*A186439(A047336(n+1))` -/
def P8758912284125717312.Spec : Prop :=
  ∀ n, P8758912284125717312.a n = A328886 (n + 1)

end A328886

/-! ## A328886.P4733298476597901735

`A186439(A047336(n+1))^A020639(A186439(n+1))`
-/

namespace A328886.P4733298476597901735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186439 (A047336 (n + 1)).toNat : ℚ) ^ (A020639 (A186439 (n + 1)).toNat : ℤ)

end

end A328886.P4733298476597901735

namespace A328886

/-- `A186439(A047336(n+1))^A020639(A186439(n+1))` -/
def P4733298476597901735.Spec : Prop :=
  ∀ n, P4733298476597901735.a n = (A328886 (n + 1) : ℚ)

end A328886

/-! ## A328886.P10357399322782482747

`∩[A186439(n+1), A322489(n+1)]²`
-/

namespace A328886.P10357399322782482747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A328886.P10357399322782482747

namespace A328886

/-- `∩[A186439(n+1), A322489(n+1)]²` -/
def P10357399322782482747.Spec : Prop :=
  ∀ n, (P10357399322782482747.a n : ℤ) = A328886 (n + 1)

end A328886

/-! ## A328886.P13281305894840428386

`∩[A063246(n+1), A186439(n+1)]²`
-/

namespace A328886.P13281305894840428386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A328886.P13281305894840428386

namespace A328886

/-- `∩[A063246(n+1), A186439(n+1)]²` -/
def P13281305894840428386.Spec : Prop :=
  ∀ n, (P13281305894840428386.a n : ℤ) = A328886 (n + 1)

end A328886

/-! ## A328886.P1067608840437102277

`∩[A063220(n+1), A186439(n+1)]²`
-/

namespace A328886.P1067608840437102277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A328886.P1067608840437102277

namespace A328886

/-- `∩[A063220(n+1), A186439(n+1)]²` -/
def P1067608840437102277.Spec : Prop :=
  ∀ n, (P1067608840437102277.a n : ℤ) = A328886 (n + 1)

end A328886

/-!
# A328887: Array read by antidiagonals: T(n,m) is the number of acyclic edge sets in the complete bipartite graph K_{n,m}.

The programs for A328887, there is no canonical definition to state claims against.
-/

/-! ## A328887.P10642463488289821577

`A269396(ceil(A157152(n)/2))`
-/

namespace A328887.P10642463488289821577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 ⌈(A157152 n : ℚ) / 2⌉.toNat

end

end A328887.P10642463488289821577

/-! ## A328887.P12485415223942020403

`A118759(round(A157152(n)/2))`
-/

namespace A328887.P12485415223942020403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A157152 n : ℚ) / 2)).toNat

end

end A328887.P12485415223942020403

/-! ## A328887.P10559661727643101510

`A131818(floor((A157152(n)²-1)/2)+1)`
-/

namespace A328887.P10559661727643101510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (⌊(A157152 n ^ 2 - 1 : ℚ) / 2⌋ + 1).toNat

end

end A328887.P10559661727643101510

/-! ## A328887.P12346624749800751024

`A385862(n)+A358138(A385862(n))`
-/

namespace A328887.P12346624749800751024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385862 n + A358138 (A385862 n).toNat

end

end A328887.P12346624749800751024

/-! ## A328887.P12895081417735906741

`A255256(n)+A178498(A255256(n))²`
-/

namespace A328887.P12895081417735906741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 n + A178498 (A255256 n).toNat ^ 2

end

end A328887.P12895081417735906741

/-!
# A328888: Array read by antidiagonals: T(n,m) is the number of acyclic edge covers of the complete bipartite graph K_{n,m}.

The programs for A328888, there is no canonical definition to state claims against.
-/

/-! ## A328888.P375241301228135072

`A153184(A111636(lcm(n, A189006(n))))`
-/

namespace A328888.P375241301228135072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (A111636 (Int.lcm (n : ℤ) (A189006 n))).toNat

end

end A328888.P375241301228135072

/-! ## A328888.P12726218319728134273

`A096665(A022167(n))`
-/

namespace A328888.P12726218319728134273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096665 (A022167 n).toNat

end

end A328888.P12726218319728134273

/-! ## A328888.P5258907956611521042

`A006553(A137897(n))`
-/

namespace A328888.P5258907956611521042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006553 (A137897 n).toNat

end

end A328888.P5258907956611521042

/-! ## A328888.P16677103894400612919

`A111614(A056941(n))`
-/

namespace A328888.P16677103894400612919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111614 (A056941 n).toNat

end

end A328888.P16677103894400612919

/-! ## A328888.P10235366918195811690

`A093579(A111636(n))`
-/

namespace A328888.P10235366918195811690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A111636 n).toNat

end

end A328888.P10235366918195811690

/-!
# A328889: Number of acyclic edge covers of the complete bipartite graph K_{n,n}.

The programs for A328889, there is no canonical definition to state claims against.
-/

/-! ## A328889.P1411772463391378284

`A328888((n+1)²+n²)`
-/

namespace A328889.P1411772463391378284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328888 ((n + 1) ^ 2 + n ^ 2)

end

end A328889.P1411772463391378284

/-! ## A328889.P6273238969184673010

`record[A328888(A152271(n²))]`
-/

namespace A328889.P6273238969184673010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328888 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328889.P6273238969184673010

/-! ## A328889.P1916999531872165295

`record[A003982(n)*A328888(n+1)]`
-/

namespace A328889.P1916999531872165295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A328888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328889.P1916999531872165295

/-! ## A328889.P7166408815264817365

`record[A214505(n)*A328888(n+1)]`
-/

namespace A328889.P7166408815264817365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A328888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328889.P7166408815264817365

/-! ## A328889.P12336500127650058275

`record[gcd(A008482(n), A328888(n+1))]`
-/

namespace A328889.P12336500127650058275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A328888 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328889.P12336500127650058275

/-!
# A328890: Number of acyclic edge covers of the complete bipartite graph K_{n,2}.

The programs for A328890, the canonical program `A328890.P10807691076493716178` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328890 has offset 1).

The definition of A328890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328890.P10807691076493716178

`(n+3)*2^n-2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328890

/-- `(n+3)*2^n-2` -/
def P10807691076493716178.Spec : Prop :=
  ∀ n, P10807691076493716178.a n = A328890 (n + 1)

theorem P10807691076493716178.correct : P10807691076493716178.Spec := by
  intro n
  simp only [A328890, Nat.add_sub_cancel]

end A328890

/-! ## A328890.P16323680909914750054

`∑[ogf((1+x-4x^2)/(1-4x+4x^2))]`
-/

namespace A328890.P16323680909914750054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328890.P16323680909914750054

namespace A328890

/-- `∑[ogf((1+x-4x^2)/(1-4x+4x^2))]` -/
def P16323680909914750054.Spec : Prop :=
  ∀ n, P16323680909914750054.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P7545313879912505079

`ogf((1+x-4x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A328890.P7545313879912505079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -5, 8, -4] n

end

end A328890.P7545313879912505079

namespace A328890

/-- `ogf((1+x-4x^2)/(1-5x+8x^2-4x^3))` -/
def P7545313879912505079.Spec : Prop :=
  ∀ n, P7545313879912505079.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P9725049176254979451

`xor(3, 4*(a(n-1)-a(n-2))-3)` with `a(0)=1, a(1)=6`
-/

namespace A328890.P9725049176254979451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.xor 3 (4 * (a (n - 1) - a (n - 2)) - 3)

end

end A328890.P9725049176254979451

namespace A328890

/-- `xor(3, 4*(a(n-1)-a(n-2))-3)` -/
def P9725049176254979451.Spec : Prop :=
  ∀ n, P9725049176254979451.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P986691411645461992

`2*floor(a(n-1)+a(n-1)/(n+2)+2)` with `a(0)=1`
-/

namespace A328890.P986691411645461992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) / (n + 2 : ℚ) + 2)⌋

end

end A328890.P986691411645461992

namespace A328890

/-- `2*floor(a(n-1)+a(n-1)/(n+2)+2)` -/
def P986691411645461992.Spec : Prop :=
  ∀ n, P986691411645461992.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P11107267426461771481

`abs(2-A001792(n+1))`
-/

namespace A328890.P11107267426461771481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001792 (n + 1)|

end

end A328890.P11107267426461771481

namespace A328890

/-- `abs(2-A001792(n+1))` -/
def P11107267426461771481.Spec : Prop :=
  ∀ n, P11107267426461771481.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P16540301924433180220

`record[A001792(abs(1-n))-2]`
-/

namespace A328890.P16540301924433180220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 |1 - (n : ℤ)|.toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328890.P16540301924433180220

namespace A328890

/-- `record[A001792(abs(1-n))-2]` -/
def P16540301924433180220.Spec : Prop :=
  ∀ n, P16540301924433180220.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P8619868471865733912

`abs(2-(n+3)*A000079(n))`
-/

namespace A328890.P8619868471865733912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n + 3 : ℤ) * A000079 n|

end

end A328890.P8619868471865733912

namespace A328890

/-- `abs(2-(n+3)*A000079(n))` -/
def P8619868471865733912.Spec : Prop :=
  ∀ n, P8619868471865733912.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P4379056637317884838

`2*(A094373(n)+a(n-1))` with `a(0)=1`
-/

namespace A328890.P4379056637317884838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A094373 n + a (n - 1))

end

end A328890.P4379056637317884838

namespace A328890

/-- `2*(A094373(n)+a(n-1))` -/
def P4379056637317884838.Spec : Prop :=
  ∀ n, P4379056637317884838.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P4954587201358414820

`2*(A011782(n)+a(n-1)+1)` with `a(0)=1`
-/

namespace A328890.P4954587201358414820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A011782 n + a (n - 1) + 1)

end

end A328890.P4954587201358414820

namespace A328890

/-- `2*(A011782(n)+a(n-1)+1)` -/
def P4954587201358414820.Spec : Prop :=
  ∀ n, P4954587201358414820.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P6571486714746255388

`2*(A131577(n)+a(n-1)+1)` with `a(0)=1`
-/

namespace A328890.P6571486714746255388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A131577 n + (a (n - 1) + 1))

end

end A328890.P6571486714746255388

namespace A328890

/-- `2*(A131577(n)+a(n-1)+1)` -/
def P6571486714746255388.Spec : Prop :=
  ∀ n, P6571486714746255388.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P8013237590698985428

`∑[A045623(A087156(n+1))]`
-/

namespace A328890.P8013237590698985428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (A087156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328890.P8013237590698985428

namespace A328890

/-- `∑[A045623(A087156(n+1))]` -/
def P8013237590698985428.Spec : Prop :=
  ∀ n, P8013237590698985428.a n = A328890 (n + 1)

end A328890

/-! ## A328890.P17130546881580280912

`(8*(a(n-1)-a(n-2))-4)/2` with `a(0)=1, a(1)=6`
-/

namespace A328890.P17130546881580280912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (8 * (a (n - 1) - a (n - 2)) - 4) / 2

end

end A328890.P17130546881580280912

namespace A328890

/-- `(8*(a(n-1)-a(n-2))-4)/2` -/
def P17130546881580280912.Spec : Prop :=
  ∀ n, P17130546881580280912.a n = (A328890 (n + 1) : ℚ)

theorem P17130546881580280912.correct : P17130546881580280912.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A328890, Nat.add_sub_cancel, A328890.P17130546881580280912.a, A328890.P10807691076493716178.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A328890, Nat.add_sub_cancel, A328890.P17130546881580280912.a, A328890.P10807691076493716178.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A328890

/-! ## A328890.P8314256778555613115

`Δ[(n+1)*A000918(n)]`
-/

namespace A328890.P8314256778555613115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328890.P8314256778555613115

namespace A328890

/-- `Δ[(n+1)*A000918(n)]` -/
def P8314256778555613115.Spec : Prop :=
  ∀ n, P8314256778555613115.a n = A328890 (n + 1)

theorem P8314256778555613115.correct : P8314256778555613115.Spec := by
  intro n
  simp only [A328890, Nat.add_sub_cancel, A328890.P8314256778555613115.f1, A328890.P8314256778555613115.a, A328890.P10807691076493716178.a, A000918, A000918.P14329454465793069288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328890

/-! ## A328890.P11354359348985946535

`(A099035(n+2)-3)/2`
-/

namespace A328890.P11354359348985946535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099035 (n + 2) - 3 : ℚ) / 2

end

end A328890.P11354359348985946535

namespace A328890

/-- `(A099035(n+2)-3)/2` -/
def P11354359348985946535.Spec : Prop :=
  ∀ n, P11354359348985946535.a n = (A328890 (n + 1) : ℚ)

theorem P11354359348985946535.correct : P11354359348985946535.Spec := by
  intro n
  simp only [A328890, Nat.add_sub_cancel, A328890.P11354359348985946535.a, A328890.P10807691076493716178.a, A099035, A099035.P6598920201532399146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328890

/-! ## A328890.P10786542024752148595

`(A260006(n+1)+n-1)/2`
-/

namespace A328890.P10786542024752148595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260006 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A328890.P10786542024752148595

namespace A328890

/-- `(A260006(n+1)+n-1)/2` -/
def P10786542024752148595.Spec : Prop :=
  ∀ n, P10786542024752148595.a n = (A328890 (n + 1) : ℚ)

theorem P10786542024752148595.correct : P10786542024752148595.Spec := by
  intro n
  simp only [A328890, Nat.add_sub_cancel, A328890.P10786542024752148595.a, A328890.P10807691076493716178.a, A260006, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328890

/-! ## A328890.P12151388207386465844

`(A221882(n+2)+n-2)/2`
-/

namespace A328890.P12151388207386465844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221882 (n + 2) + ((n : ℤ) - 2) : ℚ) / 2

end

end A328890.P12151388207386465844

namespace A328890

/-- `(A221882(n+2)+n-2)/2` -/
def P12151388207386465844.Spec : Prop :=
  ∀ n, P12151388207386465844.a n = (A328890 (n + 1) : ℚ)

theorem P12151388207386465844.correct : P12151388207386465844.Spec := by
  intro n
  simp only [A328890, Nat.add_sub_cancel, A328890.P12151388207386465844.a, A328890.P10807691076493716178.a, A221882, A221882.P4495400180664998304.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328890

/-! ## A328890.P17642938189766473619

`∑[record[A221876(n+3)]]`
-/

namespace A328890.P17642938189766473619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221876 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328890.P17642938189766473619

namespace A328890

/-- `∑[record[A221876(n+3)]]` -/
def P17642938189766473619.Spec : Prop :=
  ∀ n, P17642938189766473619.a n = A328890 (n + 1)

end A328890

/-!
# A328891: Irregular table T(n,k) = #{m > 0: m occurs m times in the k-th partition of n, using A&S order (A036036)}, 1 <= k <= A000041(n), n >= 0.

The programs for A328891, there is no canonical definition to state claims against.
-/

/-! ## A328891.P4955854806384307107

`A276935(A185974(n))`
-/

namespace A328891.P4955854806384307107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276935 (A185974 n).toNat

end

end A328891.P4955854806384307107

/-! ## A328891.P15253702641797055950

`A276935(A334438(n))`
-/

namespace A328891.P15253702641797055950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276935 (A334438 n).toNat

end

end A328891.P15253702641797055950

/-! ## A328891.P5101882962644767561

`A295883(12*A185974(n))`
-/

namespace A328891.P5101882962644767561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (12 * A185974 n).toNat

end

end A328891.P5101882962644767561

/-! ## A328891.P6417065325211669992

`A295883(12*A334438(n))`
-/

namespace A328891.P6417065325211669992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (12 * A334438 n).toNat

end

end A328891.P6417065325211669992

/-! ## A328891.P9767229387585984324

`A170957(A266982(2*n+1)+A137564(n+1))`
-/

namespace A328891.P9767229387585984324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 (A266982 (2 * n + 1) + A137564 (n + 1)).toNat

end

end A328891.P9767229387585984324

/-!
# A328892: If n = Product (p_j^k_j) then a(n) = Sum (2^(k_j - 1)).

The programs for A328892, the canonical program `A328892.P8554449722975130755` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328892 has offset 1).

The definition of A328892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328892.P14216799432207404032

`∑{e}[n+1, 2^(#-1)]`
-/

namespace A328892.P14216799432207404032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ ((Nat.factorization (f1 n) p : ℤ) - 1 : ℤ)

end

end A328892.P14216799432207404032

namespace A328892

/-- `∑{e}[n+1, 2^(#-1)]` -/
def P14216799432207404032.Spec : Prop :=
  ∀ n, P14216799432207404032.a n = (A328892 (n + 1) : ℚ)

end A328892

/-! ## A328892.P10062437924835924955

`∑{e}[n+1, 2^#]/2`
-/

namespace A328892.P10062437924835924955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℚ) / 2

end

end A328892.P10062437924835924955

namespace A328892

/-- `∑{e}[n+1, 2^#]/2` -/
def P10062437924835924955.Spec : Prop :=
  ∀ n, P10062437924835924955.a n = (A328892 (n + 1) : ℚ)

end A328892

/-! ## A328892.P818484282805414835

`floor(∑{e}[n+1, root(2, 1/#)]/2)`
-/

namespace A328892.P818484282805414835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ (1 / (1 / (Nat.factorization (f1 n) p : ℚ) : ℝ))) / 2⌋

end

end A328892.P818484282805414835

namespace A328892

/-- `floor(∑{e}[n+1, root(2, 1/#)]/2)` -/
def P818484282805414835.Spec : Prop :=
  ∀ n, P818484282805414835.a n = A328892 (n + 1)

end A328892

/-! ## A328892.P8554449722975130755

`((n+1)*∑{e}[n+1, 2^#])%(2*n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328892

/-- `((n+1)*∑{e}[n+1, 2^#])%(2*n+1)` -/
def P8554449722975130755.Spec : Prop :=
  ∀ n, (P8554449722975130755.a n : ℤ) = A328892 (n + 1)

theorem P8554449722975130755.correct : P8554449722975130755.Spec := by
  intro n
  simp only [A328892, Nat.add_sub_cancel]

end A328892

/-! ## A328892.P3469161953230113666

`A004525(∑{e}[n+1, 2^#])`
-/

namespace A328892.P3469161953230113666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)

end

end A328892.P3469161953230113666

namespace A328892

/-- `A004525(∑{e}[n+1, 2^#])` -/
def P3469161953230113666.Spec : Prop :=
  ∀ n, P3469161953230113666.a n = A328892 (n + 1)

end A328892

/-! ## A328892.P10103191507175385862

`A004526(∑{e}[n+1, 2^#])`
-/

namespace A328892.P10103191507175385862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)

end

end A328892.P10103191507175385862

namespace A328892

/-- `A004526(∑{e}[n+1, 2^#])` -/
def P10103191507175385862.Spec : Prop :=
  ∀ n, P10103191507175385862.a n = A328892 (n + 1)

end A328892

/-! ## A328892.P6857187886732521230

`A006370(∑{e}[n+1, 2^#])`
-/

namespace A328892.P6857187886732521230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (∑ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)

end

end A328892.P6857187886732521230

namespace A328892

/-- `A006370(∑{e}[n+1, 2^#])` -/
def P6857187886732521230.Spec : Prop :=
  ∀ n, P6857187886732521230.a n = A328892 (n + 1)

end A328892

/-! ## A328892.P9617232158148646265

`A029578(∑{e}[n+1, 2^#])`
-/

namespace A328892.P9617232158148646265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)

end

end A328892.P9617232158148646265

namespace A328892

/-- `A029578(∑{e}[n+1, 2^#])` -/
def P9617232158148646265.Spec : Prop :=
  ∀ n, P9617232158148646265.a n = A328892 (n + 1)

end A328892

/-! ## A328892.P9987156967269543410

`A048675(A181819(n+1))`
-/

namespace A328892.P9987156967269543410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A181819 (n + 1)).toNat

end

end A328892.P9987156967269543410

namespace A328892

/-- `A048675(A181819(n+1))` -/
def P9987156967269543410.Spec : Prop :=
  ∀ n, P9987156967269543410.a n = A328892 (n + 1)

end A328892

/-! ## A328892.P5088249642461197892

`A276073(A112623(n+1))`
-/

namespace A328892.P5088249642461197892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276073 (A112623 (n + 1)).toNat

end

end A328892.P5088249642461197892

namespace A328892

/-- `A276073(A112623(n+1))` -/
def P5088249642461197892.Spec : Prop :=
  ∀ n, P5088249642461197892.a n = A328892 (n + 1)

end A328892

/-!
# A328893: Partial sums of A095112: sum of the Dirichlet convolution of the characteristic function of the prime powers (A069513) with the positive integers (A000027) from 1 to n.

The programs for A328893, the canonical program `A328893.P13855104134187477571` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328893 has offset 0).

The definition of A328893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328893.P5706396106176341511

`∑[∑{d}[n, A116512(#)]]`
-/

namespace A328893.P5706396106176341511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A116512 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328893.P5706396106176341511

namespace A328893

/-- `∑[∑{d}[n, A116512(#)]]` -/
def P5706396106176341511.Spec : Prop :=
  ∀ n, P5706396106176341511.a n = A328893 n

end A328893

/-! ## A328893.P3794310086249072328

`∑[A095112(floor(acot(n)+n))]`
-/

namespace A328893.P3794310086249072328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328893.P3794310086249072328

namespace A328893

/-- `∑[A095112(floor(acot(n)+n))]` -/
def P3794310086249072328.Spec : Prop :=
  ∀ n, P3794310086249072328.a n = A328893 n

end A328893

/-! ## A328893.P10551742427633405565

`∑[A095112(n^floor(atan(n)))]`
-/

namespace A328893.P10551742427633405565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328893.P10551742427633405565

namespace A328893

/-- `∑[A095112(n^floor(atan(n)))]` -/
def P10551742427633405565.Spec : Prop :=
  ∀ n, P10551742427633405565.a n = A328893 n

end A328893

/-! ## A328893.P13855104134187477571

`A095112(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328893

/-- `A095112(n)+a(n-1)` -/
def P13855104134187477571.Spec : Prop :=
  ∀ n, P13855104134187477571.a n = A328893 n

theorem P13855104134187477571.correct : P13855104134187477571.Spec := by
  intro n
  simp only [A328893]

end A328893

/-! ## A328893.P15458614228860088923

`∑[A095112(round(sqrt(n²+1)))]`
-/

namespace A328893.P15458614228860088923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328893.P15458614228860088923

namespace A328893

/-- `∑[A095112(round(sqrt(n²+1)))]` -/
def P15458614228860088923.Spec : Prop :=
  ∀ n, P15458614228860088923.a n = A328893 n

end A328893

/-! ## A328893.P14795419509497787360

`∑[A095112(n+1)]-A095112(n+1)`
-/

namespace A328893.P14795419509497787360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095112 (n + 1)

end

end A328893.P14795419509497787360

namespace A328893

/-- `∑[A095112(n+1)]-A095112(n+1)` -/
def P14795419509497787360.Spec : Prop :=
  ∀ n, P14795419509497787360.a n = A328893 n

end A328893

/-!
# A328896: Primes p such that p divides at least one of the integers Fibonacci(2k) for 2k <= p-1.

The programs for A328896, there is no canonical definition to state claims against.
-/

/-! ## A328896.P3419984374608862088

`∪[A045468(n+1), A216067(n+1)]`
-/

namespace A328896.P3419984374608862088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328896.P3419984374608862088

/-! ## A328896.P4524068650834810592

`p?[lt[A088551(n+2), n]+2]`
-/

namespace A328896.P4524068650834810592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088551 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A328896.P4524068650834810592

/-! ## A328896.P8432982294045571177

`lt[A001175(n+1), A014963(n+1)]+1`
-/

namespace A328896.P8432982294045571177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328896.P8432982294045571177

/-! ## A328896.P12018570030085715908

`lt[A001175(n+1), A089026(n+1)]+1`
-/

namespace A328896.P12018570030085715908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328896.P12018570030085715908

/-! ## A328896.P9116172776515883652

`p?[lt[A001175(n+1), A000265(n+1)]+1]`
-/

namespace A328896.P9116172776515883652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A328896.P9116172776515883652

/-! ## A328896.P6142840125072465046

`lt[A001175(A028310(n)), A055672(n)]`
-/

namespace A328896.P6142840125072465046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328896.P6142840125072465046

/-! ## A328896.P15757125860487827570

`∪[A045468(n+1), A222413(n+1)]`
-/

namespace A328896.P15757125860487827570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328896.P15757125860487827570

/-! ## A328896.P9451311893632484125

`lt[A001175(A233583(n+1)), A055672(n)]`
-/

namespace A328896.P9451311893632484125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328896.P9451311893632484125

/-!
# A328897: Odd numbers k > 1 such that A005179(k-1) > A005179(k) < A005179(k+1).

The programs for A328897, there is no canonical definition to state claims against.
-/

/-! ## A328897.P10175207938067813710

`∩[A254860(n+1), A307373(n+1)]`
-/

namespace A328897.P10175207938067813710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328897.P10175207938067813710

/-!
# A328899: Numbers k such that the k-th repunit (10^k-1)/9 sets a new record for the number of distinct prime factors.

The programs for A328899, there is no canonical definition to state claims against.
-/

/-! ## A328899.P13932483168014852156

`A086565(A095371(n+1))`
-/

namespace A328899.P13932483168014852156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086565 (A095371 (n + 1)).toNat

end

end A328899.P13932483168014852156

/-! ## A328899.P6107578007660900096

`A086565(record[A095370(n+1)])`
-/

namespace A328899.P6107578007660900096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328899.P6107578007660900096

/-! ## A328899.P1773737305726322005

`A086565(record[A102347(2*(n+1))%(n+1)])`
-/

namespace A328899.P1773737305726322005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102347 (2 * (n + 1))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328899.P1773737305726322005

/-! ## A328899.P12841295798108752759

`A086565(record[A102347(n+1)-A014164(n)])`
-/

namespace A328899.P12841295798108752759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A014164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328899.P12841295798108752759

/-! ## A328899.P6352560595116615851

`A086565(record[A102347(n+1)-A039966(n)])`
-/

namespace A328899.P6352560595116615851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328899.P6352560595116615851

