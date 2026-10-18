import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B013.C000
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
# A189100: a(n) = lcm(n!,n!')/gcd(n!,n!'), where n!' is the arithmetic derivative of n! (A068311).

The programs for A189100, the canonical program `A189100.P18316698109442666474` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189100 has offset 1).

The definition of A189100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189100.P18316698109442666474

`A086130((n+1)!)/A085731((n+1)!)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A189100

/-- `A086130((n+1)!)/A085731((n+1)!)` -/
def P18316698109442666474.Spec : Prop :=
  ∀ n, P18316698109442666474.a n = (A189100 (n + 1) : ℚ)

end A189100

/-! ## A189100.P18094216917932616453

`A189103(n+1)/A189102(n+1)`
-/

namespace A189100.P18094216917932616453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189103 (n + 1) : ℚ) / (A189102 (n + 1) : ℚ)

end

end A189100.P18094216917932616453

namespace A189100

/-- `A189103(n+1)/A189102(n+1)` -/
def P18094216917932616453.Spec : Prop :=
  ∀ n, P18094216917932616453.a n = (A189100 (n + 1) : ℚ)

end A189100

/-! ## A189100.P2927726285704339437

`A189103(n+1)/gcd(∏[n+1], A068311(n+1))`
-/

namespace A189100.P2927726285704339437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189103 (n + 1) : ℚ) / (Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A068311 (n + 1)) : ℚ)

end

end A189100.P2927726285704339437

namespace A189100

/-- `A189103(n+1)/gcd(∏[n+1], A068311(n+1))` -/
def P2927726285704339437.Spec : Prop :=
  ∀ n, P2927726285704339437.a n = (A189100 (n + 1) : ℚ)

end A189100

/-! ## A189100.P12075672869733538712

`A189103(n+1)/gcd(A000142(n+1), A258845(n+1))`
-/

namespace A189100.P12075672869733538712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189103 (n + 1) : ℚ) / (Int.gcd (A000142 (n + 1)) (A258845 (n + 1)) : ℚ)

end

end A189100.P12075672869733538712

namespace A189100

/-- `A189103(n+1)/gcd(A000142(n+1), A258845(n+1))` -/
def P12075672869733538712.Spec : Prop :=
  ∀ n, P12075672869733538712.a n = (A189100 (n + 1) : ℚ)

end A189100

/-! ## A189100.P215726464823223737

`lcm(A000142(n+1), A068311(n+1))/A189102(n+1)`
-/

namespace A189100.P215726464823223737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 (n + 1)) (A068311 (n + 1)) : ℚ) / (A189102 (n + 1) : ℚ)

end

end A189100.P215726464823223737

namespace A189100

/-- `lcm(A000142(n+1), A068311(n+1))/A189102(n+1)` -/
def P215726464823223737.Spec : Prop :=
  ∀ n, P215726464823223737.a n = (A189100 (n + 1) : ℚ)

end A189100

/-!
# A189101: Expansion of g.f. 1/(1-(x+x^2+x^3+x^4+x^6+x^7)).

The programs for A189101, there is no canonical definition to state claims against.
-/

/-! ## A189101.P7408529622751924185

`A008679(A213663(n+1))`
-/

namespace A189101.P7408529622751924185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A213663 (n + 1)).toNat

end

end A189101.P7408529622751924185

/-! ## A189101.P3625217731129648953

`Δ[A239557(n+1)%A152802(2*n)]`
-/

namespace A189101.P3625217731129648953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239557 (n + 1)) (A152802 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189101.P3625217731129648953

/-! ## A189101.P18177474828145625216

`A008679(A146541(n)+A000213(n+3))`
-/

namespace A189101.P18177474828145625216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A146541 n + A000213 (n + 3)).toNat

end

end A189101.P18177474828145625216

/-! ## A189101.P8209703577000287241

`A001462(A007460(n)+A000389(n))`
-/

namespace A189101.P8209703577000287241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A007460 n + A000389 n).toNat

end

end A189101.P8209703577000287241

/-! ## A189101.P10924314214193339527

`A000006(A034943(n)+A000108(n))`
-/

namespace A189101.P10924314214193339527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A034943 n + A000108 n).toNat

end

end A189101.P10924314214193339527

/-!
# A189102: Greatest common divisor of n! and its arithmetic derivative.

The programs for A189102, there is no canonical definition to state claims against.
-/

/-! ## A189102.P3415886868810605330

`gcd(∏[n+1], A068311(n+1))`
-/

namespace A189102.P3415886868810605330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A068311 (n + 1))

end

end A189102.P3415886868810605330

/-! ## A189102.P18161258503371182835

`gcd(A000142(n+1), A258845(n+1))`
-/

namespace A189102.P18161258503371182835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 1)) (A258845 (n + 1))

end

end A189102.P18161258503371182835

/-! ## A189102.P10288786571053448276

`gcd(A055071(n+1), A258845(A077168(n)))`
-/

namespace A189102.P10288786571053448276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055071 (n + 1)) (A258845 (A077168 n).toNat)

end

end A189102.P10288786571053448276

/-! ## A189102.P5823737869522235407

`∏[A338669(A087652(n+1)²)]`
-/

namespace A189102.P5823737869522235407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338669 (A087652 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A189102.P5823737869522235407

/-! ## A189102.P12696295580416323278

`A390694(A049614(n+1))`
-/

namespace A189102.P12696295580416323278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390694 (A049614 (n + 1)).toNat

end

end A189102.P12696295580416323278

/-!
# A189103: Least common multiple of n! and its arithmetic derivative.

The programs for A189103, there is no canonical definition to state claims against.
-/

/-! ## A189103.P4994231355171633681

`A189100(n+1)*A189102(n+1)`
-/

namespace A189103.P4994231355171633681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189100 (n + 1) * A189102 (n + 1)

end

end A189103.P4994231355171633681

/-! ## A189103.P6469239265020943842

`lcm(A000142(n+1), A068311(n+1))`
-/

namespace A189103.P6469239265020943842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 (n + 1)) (A068311 (n + 1))

end

end A189103.P6469239265020943842

/-! ## A189103.P18174549841845022133

`gcd(∏[n+1], A068311(n+1))*A189100(n+1)`
-/

namespace A189103.P18174549841845022133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A068311 (n + 1)) : ℤ) * A189100 (n + 1)

end

end A189103.P18174549841845022133

/-! ## A189103.P4194104125943622319

`A000142(n+1)/A189102(n+1)*A068311(n+1)`
-/

namespace A189103.P4194104125943622319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A189102 (n + 1) : ℚ) * (A068311 (n + 1) : ℚ)

end

end A189103.P4194104125943622319

/-! ## A189103.P5076517272366473662

`gcd(A000142(n+1), A258845(n+1))*A189100(n+1)`
-/

namespace A189103.P5076517272366473662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000142 (n + 1)) (A258845 (n + 1)) : ℤ) * A189100 (n + 1)

end

end A189103.P5076517272366473662

/-!
# A189104: Number of n X n binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189104, there is no canonical definition to state claims against.
-/

/-! ## A189104.P15202944753057266714

`A189111((n+1)²+n²)`
-/

namespace A189104.P15202944753057266714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 ((n + 1) ^ 2 + n ^ 2)

end

end A189104.P15202944753057266714

/-! ## A189104.P14440309167568455240

`lcm(2, A189111(A001844(n)))`
-/

namespace A189104.P14440309167568455240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189111 (A001844 n).toNat)

end

end A189104.P14440309167568455240

/-! ## A189104.P10604825881944455239

`record[root(A189111(n+1), A286157(n+1))]`
-/

namespace A189104.P10604825881944455239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A189111 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189104.P10604825881944455239

/-! ## A189104.P3739263212015805352

`A189111(A001844(n))+A185246(n)`
-/

namespace A189104.P3739263212015805352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A001844 n).toNat + A185246 n

end

end A189104.P3739263212015805352

/-! ## A189104.P16576580065991927244

`abs(A057077(n)*A189111(A001844(n)))`
-/

namespace A189104.P16576580065991927244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 n * A189111 (A001844 n).toNat|

end

end A189104.P16576580065991927244

/-!
# A189105: Number of n X 3 binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189105, there is no canonical definition to state claims against.
-/

/-! ## A189105.P2712875004065384454

`A189111(∑[n+3]+1)`
-/

namespace A189105.P2712875004065384454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189105.P2712875004065384454

/-! ## A189105.P11073953629821482114

`lcm(2, A189111(A034856(n+2)))`
-/

namespace A189105.P11073953629821482114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189111 (A034856 (n + 2)).toNat)

end

end A189105.P11073953629821482114

/-! ## A189105.P13691232077950628484

`A189111(A034856(n+2))%A250056(n+1)`
-/

namespace A189105.P13691232077950628484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189111 (A034856 (n + 2)).toNat) (A250056 (n + 1))

end

end A189105.P13691232077950628484

/-! ## A189105.P17456829338685930576

`and(A094267(2*n+1), A189111(A034856(n+2)))`
-/

namespace A189105.P17456829338685930576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094267 (2 * n + 1)) (A189111 (A034856 (n + 2)).toNat)

end

end A189105.P17456829338685930576

/-! ## A189105.P14074166868161614273

`A014963(A010008(n))*A189111(A034856(n+2))`
-/

namespace A189105.P14074166868161614273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A010008 n).toNat * A189111 (A034856 (n + 2)).toNat

end

end A189105.P14074166868161614273

/-!
# A189106: Number of nX4 binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189106, there is no canonical definition to state claims against.
-/

/-! ## A189106.P2539046911252482030

`A189111(A141214(n+1))`
-/

namespace A189106.P2539046911252482030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A141214 (n + 1)).toNat

end

end A189106.P2539046911252482030

/-! ## A189106.P9150379894300459128

`A189111(A055998(n+2))`
-/

namespace A189106.P9150379894300459128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A055998 (n + 2)).toNat

end

end A189106.P9150379894300459128

/-! ## A189106.P844662180061044380

`A189111(A155212(n)+5)`
-/

namespace A189106.P844662180061044380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A155212 n + 5).toNat

end

end A189106.P844662180061044380

/-! ## A189106.P3663829959607954260

`A189111(A056000(n)+7)`
-/

namespace A189106.P3663829959607954260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A056000 n + 7).toNat

end

end A189106.P3663829959607954260

/-! ## A189106.P6766105908435022280

`A189111(A052905(n+1)+2)`
-/

namespace A189106.P6766105908435022280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A052905 (n + 1) + 2).toNat

end

end A189106.P6766105908435022280

/-!
# A189107: Number of nX5 binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189107, there is no canonical definition to state claims against.
-/

/-! ## A189107.P6332120025644415762

`A189111(Δ[A264443(n)])`
-/

namespace A189107.P6332120025644415762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (f1 (n + 1) - f1 n).toNat

end

end A189107.P6332120025644415762

/-! ## A189107.P302337741844985438

`A189111(A046691(n+3))`
-/

namespace A189107.P302337741844985438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A046691 (n + 3)).toNat

end

end A189107.P302337741844985438

/-! ## A189107.P12432148306207206465

`A189111(Δ[A023545(n+1)])`
-/

namespace A189107.P12432148306207206465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (f1 (n + 1) - f1 n).toNat

end

end A189107.P12432148306207206465

/-! ## A189107.P11027522612579435582

`A189111(A055999(n+2)+2)`
-/

namespace A189107.P11027522612579435582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A055999 (n + 2) + 2).toNat

end

end A189107.P11027522612579435582

/-! ## A189107.P2646675063969156403

`A189111(A000124(n+5)-5)`
-/

namespace A189107.P2646675063969156403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A000124 (n + 5) - 5).toNat

end

end A189107.P2646675063969156403

/-!
# A189108: Number of nX6 binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189108, there is no canonical definition to state claims against.
-/

/-! ## A189108.P4144104588612487771

`A189111(A052905(n+3))`
-/

namespace A189108.P4144104588612487771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A052905 (n + 3)).toNat

end

end A189108.P4144104588612487771

/-! ## A189108.P16642969248179405059

`A189111(A302537(n)+15)`
-/

namespace A189108.P16642969248179405059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A302537 n + 15).toNat

end

end A189108.P16642969248179405059

/-! ## A189108.P5722151957643831221

`A189111(eq[3, A219347(n)])`
-/

namespace A189108.P5722151957643831221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189108.P5722151957643831221

/-! ## A189108.P11508080303200329604

`A189111(A000124(n+6)-6)`
-/

namespace A189108.P11508080303200329604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A000124 (n + 6) - 6).toNat

end

end A189108.P11508080303200329604

/-! ## A189108.P159321545375038952

`A189111(Δ[Δ[A006504(n+1)]])`
-/

namespace A189108.P159321545375038952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (f1 (n + 1) - f1 n).toNat

end

end A189108.P159321545375038952

/-!
# A189109: Number of nX7 binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189109, there is no canonical definition to state claims against.
-/

/-! ## A189109.P15236498965676180475

`A189111(A055999(n+4))`
-/

namespace A189109.P15236498965676180475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A055999 (n + 4)).toNat

end

end A189109.P15236498965676180475

/-! ## A189109.P13192647419138748281

`A189111(eq[4, A219347(n)])`
-/

namespace A189109.P13192647419138748281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189109.P13192647419138748281

/-! ## A189109.P15380606263305869942

`A189111(eq[6, A193592(n)])`
-/

namespace A189109.P15380606263305869942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189109.P15380606263305869942

/-! ## A189109.P14842908635792120589

`A189111(Δ[A023551(n+2)])`
-/

namespace A189109.P14842908635792120589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (f1 (n + 1) - f1 n).toNat

end

end A189109.P14842908635792120589

/-! ## A189109.P14425936979598442007

`A189111(Δ[A026054(n+4)])`
-/

namespace A189109.P14425936979598442007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (f1 (n + 1) - f1 n).toNat

end

end A189109.P14425936979598442007

/-!
# A189110: Number of nX8 binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189110, there is no canonical definition to state claims against.
-/

/-! ## A189110.P17034650183944952146

`A189111(eq[5, A219347(n)])`
-/

namespace A189110.P17034650183944952146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189110.P17034650183944952146

/-! ## A189110.P5683667310649252253

`A189111(eq[7, A193592(n)])`
-/

namespace A189110.P5683667310649252253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189110.P5683667310649252253

/-! ## A189110.P10658458093915559576

`A189111(A133263(n+8)-9)`
-/

namespace A189110.P10658458093915559576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A133263 (n + 8) - 9).toNat

end

end A189110.P10658458093915559576

/-! ## A189110.P2093644837551007554

`A189111(eq[12, A185782(n+1)])`
-/

namespace A189110.P2093644837551007554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189110.P2093644837551007554

/-! ## A189110.P1592519475218178245

`A189111(eq[8, sqrt(A057728(n+1))])`
-/

namespace A189110.P1592519475218178245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057728 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A189110.P1592519475218178245

/-!
# A189111: T(n,k)=Number of nXk binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189111, there is no canonical definition to state claims against.
-/

/-! ## A189111.P6122133719577328610

`A004182(A181217(n+1))`
-/

namespace A189111.P6122133719577328610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A181217 (n + 1)).toNat

end

end A189111.P6122133719577328610

/-! ## A189111.P13745387071224725276

`A004182(A188910(n+1))`
-/

namespace A189111.P13745387071224725276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A188910 (n + 1)).toNat

end

end A189111.P13745387071224725276

/-! ## A189111.P6301054073974907436

`A185048(A181217(n+1)+1)`
-/

namespace A189111.P6301054073974907436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A181217 (n + 1) + 1).toNat

end

end A189111.P6301054073974907436

/-! ## A189111.P14662036728997492171

`A185048(A188910(n+1)+1)`
-/

namespace A189111.P14662036728997492171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A188910 (n + 1) + 1).toNat

end

end A189111.P14662036728997492171

/-! ## A189111.P17358865941516732083

`A240828(A181217(n+1)+1)`
-/

namespace A189111.P17358865941516732083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (A181217 (n + 1) + 1).toNat

end

end A189111.P17358865941516732083

/-!
# A189112: Number of 4Xn binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189112, there is no canonical definition to state claims against.
-/

/-! ## A189112.P6964181400584616314

`A189111(∑[n+3]+7)`
-/

namespace A189112.P6964181400584616314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A189112.P6964181400584616314

/-! ## A189112.P4510955827180726300

`record[A189111(A286157(n+1)+4)]`
-/

namespace A189112.P4510955827180726300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A286157 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189112.P4510955827180726300

/-! ## A189112.P7041031524083178067

`record[A023531(n)*A189111(n+5)]`
-/

namespace A189112.P7041031524083178067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A189111 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189112.P7041031524083178067

/-! ## A189112.P9852109063824011103

`record[root(A189111(n+5), A103371(n))]`
-/

namespace A189112.P9852109063824011103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A189111 (n + 5) : ℝ) ^ (1 / (A103371 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189112.P9852109063824011103

/-! ## A189112.P7330861568674940050

`record[A189111(n+5)/A218592(n+1)]`
-/

namespace A189112.P7330861568674940050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189111 (n + 5) : ℚ) / (A218592 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189112.P7330861568674940050

/-!
# A189113: Number of 5Xn binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189113, there is no canonical definition to state claims against.
-/

/-! ## A189113.P8258053300850107160

`A189111(A167499(n+3))`
-/

namespace A189113.P8258053300850107160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A167499 (n + 3)).toNat

end

end A189113.P8258053300850107160

/-! ## A189113.P15444485764876685264

`A189111(A155212(n)+13)`
-/

namespace A189113.P15444485764876685264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A155212 n + 13).toNat

end

end A189113.P15444485764876685264

/-! ## A189113.P17460469848596443884

`A189111(A056000(n)+15)`
-/

namespace A189113.P17460469848596443884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A056000 n + 15).toNat

end

end A189113.P17460469848596443884

/-! ## A189113.P522044246359897793

`A189111(A000096(n+3)+6)`
-/

namespace A189113.P522044246359897793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A000096 (n + 3) + 6).toNat

end

end A189113.P522044246359897793

/-! ## A189113.P1462332429859059464

`A189111(A000124(n+5)-(n+1))`
-/

namespace A189113.P1462332429859059464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A189113.P1462332429859059464

/-!
# A189114: Number of 6Xn binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189114, there is no canonical definition to state claims against.
-/

/-! ## A189114.P5666710689810403865

`A189111(A166136(n+4))`
-/

namespace A189114.P5666710689810403865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A166136 (n + 4)).toNat

end

end A189114.P5666710689810403865

/-! ## A189114.P6404718093198842494

`A189111(∑[A020710(n)]+16)`
-/

namespace A189114.P6404718093198842494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A189114.P6404718093198842494

/-! ## A189114.P2089713746986142038

`A189111(A167499(n+4)+1)`
-/

namespace A189114.P2089713746986142038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A167499 (n + 4) + 1).toNat

end

end A189114.P2089713746986142038

/-! ## A189114.P3499448808996391958

`A189111(A000124(n+5)+5)`
-/

namespace A189114.P3499448808996391958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A000124 (n + 5) + 5).toNat

end

end A189114.P3499448808996391958

/-! ## A189114.P13042260567873231211

`A189111(eq[7, A131818(n+1)])`
-/

namespace A189114.P13042260567873231211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189114.P13042260567873231211

/-!
# A189115: Number of 7Xn binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189115, there is no canonical definition to state claims against.
-/

/-! ## A189115.P7217217971124952226

`A189111(A302537(n)+27)`
-/

namespace A189115.P7217217971124952226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A302537 n + 27).toNat

end

end A189115.P7217217971124952226

/-! ## A189115.P10688833263917162203

`A189111(eq[11, A066657(n)])`
-/

namespace A189115.P10688833263917162203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189115.P10688833263917162203

/-! ## A189115.P425179358629463191

`A189111(A167614(n+5)+4)`
-/

namespace A189115.P425179358629463191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A167614 (n + 5) + 4).toNat

end

end A189115.P425179358629463191

/-! ## A189115.P2762310266022522747

`A189111(A133263(n+6)+5)`
-/

namespace A189115.P2762310266022522747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A133263 (n + 6) + 5).toNat

end

end A189115.P2762310266022522747

/-! ## A189115.P17558792164248796638

`A189111(A055999(n+3)+13)`
-/

namespace A189115.P17558792164248796638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A055999 (n + 3) + 13).toNat

end

end A189115.P17558792164248796638

/-!
# A189116: Number of 8Xn binary arrays without the pattern 1 1 0 diagonally or antidiagonally.

The programs for A189116, there is no canonical definition to state claims against.
-/

/-! ## A189116.P15157958220546783385

`A189111(eq[13, A066657(n)])`
-/

namespace A189116.P15157958220546783385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189116.P15157958220546783385

/-! ## A189116.P18304823196954752123

`A189111(A000217(n+7)+8)`
-/

namespace A189116.P18304823196954752123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A000217 (n + 7) + 8).toNat

end

end A189116.P18304823196954752123

/-! ## A189116.P5902483095679664990

`A189111(eq[9, A131818(n+1)])`
-/

namespace A189116.P5902483095679664990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189116.P5902483095679664990

/-! ## A189116.P9563122437918642767

`A189111(A133263(n+8)-(n+2))`
-/

namespace A189116.P9563122437918642767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A189116.P9563122437918642767

/-! ## A189116.P16384413632513517709

`A189111(A000124(n+9)-9-Δ[n²])`
-/

namespace A189116.P16384413632513517709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (A000124 (n + 9) - 9 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A189116.P16384413632513517709

/-!
# A189117: Conjectured number of pairs of consecutive perfect powers (A001597) differing by n.

The programs for A189117, there is no canonical definition to state claims against.
-/

/-! ## A189117.P5472449937093890825

`A332677(A135333(n)+10)`
-/

namespace A189117.P5472449937093890825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (A135333 n + 10).toNat

end

end A189117.P5472449937093890825

/-! ## A189117.P4258640083180072301

`and(3, A300769(A299474(n)))`
-/

namespace A189117.P4258640083180072301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A300769 (A299474 n).toNat)

end

end A189117.P4258640083180072301

/-! ## A189117.P10287832881197967718

`A023193(A006946(n+1))%4`
-/

namespace A189117.P10287832881197967718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023193 (A006946 (n + 1)).toNat) 4

end

end A189117.P10287832881197967718

/-! ## A189117.P10744657595360369785

`A056979(A007795(n+1)+n)`
-/

namespace A189117.P10744657595360369785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (A007795 (n + 1) + (n : ℤ)).toNat

end

end A189117.P10744657595360369785

/-!
# A189118: a(n) = smallest composite (odd) number greater than a(n-1) such that a(n)+2n is the first prime after a(n).

The programs for A189118, there is no canonical definition to state claims against.
-/

/-! ## A189118.P5393234489173118526

`A105703(A001844(n))-A047205(n+1)`
-/

namespace A189118.P5393234489173118526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105703 (A001844 n).toNat - A047205 (n + 1)

end

end A189118.P5393234489173118526

/-!
# A189119: Sums k of three consecutive odd numbers, all of which are composite, such that k is also the smallest in a set of three consecutive odd numbers, all of which are composite.

The programs for A189119, there is no canonical definition to state claims against.
-/

/-! ## A189119.P15178865451970420208

`∩[A099019(n+1)-2, A008486(A099019(n+1))]`
-/

namespace A189119.P15178865451970420208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A099019 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189119.P15178865451970420208

/-! ## A189119.P6298683917264948293

`∩[A129822(3*n+1), A008486(A099019(n+1))]`
-/

namespace A189119.P6298683917264948293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129822 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A099019 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189119.P6298683917264948293

/-! ## A189119.P2598888179927866862

`∩[A129822(3*n+1), A008486(A167776(n+1))]`
-/

namespace A189119.P2598888179927866862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129822 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A167776 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189119.P2598888179927866862

/-!
# A189120: Sum of squares of nonprime divisors of n.

The programs for A189120, the canonical program `A189120.P13109880559421340591` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189120 has offset 1).

The definition of A189120 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A005063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189120.P13109880559421340591

`A001157(n+1)-A005063(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A189120

/-- `A001157(n+1)-A005063(n+1)` -/
def P13109880559421340591.Spec : Prop :=
  ∀ n, P13109880559421340591.a n = A189120 (n + 1)

theorem P13109880559421340591.correct : P13109880559421340591.Spec := by
  intro n
  simp only [A189120, Nat.add_sub_cancel]

end A189120

/-! ## A189120.P13717194413821582645

`∑{d}[n+1, A191558(#)²]`
-/

namespace A189120.P13717194413821582645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191558 d ^ 2

end

end A189120.P13717194413821582645

namespace A189120

/-- `∑{d}[n+1, A191558(#)²]` -/
def P13717194413821582645.Spec : Prop :=
  ∀ n, P13717194413821582645.a n = A189120 (n + 1)

end A189120

/-! ## A189120.P16516752960937870297

`∑{d}[n+1, (#-A061397(#))²]`
-/

namespace A189120.P16516752960937870297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A061397 d) ^ 2

end

end A189120.P16516752960937870297

namespace A189120

/-- `∑{d}[n+1, (#-A061397(#))²]` -/
def P16516752960937870297.Spec : Prop :=
  ∀ n, P16516752960937870297.a n = A189120 (n + 1)

end A189120

/-! ## A189120.P9767161164792754707

`∑{d}[n+1, #*#%A007918(#)]`
-/

namespace A189120.P9767161164792754707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (d : ℤ) (A007918 d)

end

end A189120.P9767161164792754707

namespace A189120

/-- `∑{d}[n+1, #*#%A007918(#)]` -/
def P9767161164792754707.Spec : Prop :=
  ∀ n, P9767161164792754707.a n = A189120 (n + 1)

end A189120

/-! ## A189120.P6538932614882886408

`A007437(n+1)+A069153(n+1)-A005063(n+1)`
-/

namespace A189120.P6538932614882886408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + (A069153 (n + 1) - A005063 (n + 1))

end

end A189120.P6538932614882886408

namespace A189120

/-- `A007437(n+1)+A069153(n+1)-A005063(n+1)` -/
def P6538932614882886408.Spec : Prop :=
  ∀ n, P6538932614882886408.a n = A189120 (n + 1)

end A189120

/-! ## A189120.P9616726248438542981

`A092348(n+1)-(A092350(n+1)+A005063(n+1))`
-/

namespace A189120.P9616726248438542981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) - (A092350 (n + 1) + A005063 (n + 1))

end

end A189120.P9616726248438542981

namespace A189120

/-- `A092348(n+1)-(A092350(n+1)+A005063(n+1))` -/
def P9616726248438542981.Spec : Prop :=
  ∀ n, P9616726248438542981.a n = A189120 (n + 1)

end A189120

/-! ## A189120.P10440032968925488827

`1-(A005063(n+1)-A053807(n+2))`
-/

namespace A189120.P10440032968925488827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A005063 (n + 1) - A053807 (n + 2))

end

end A189120.P10440032968925488827

namespace A189120

/-- `1-(A005063(n+1)-A053807(n+2))` -/
def P10440032968925488827.Spec : Prop :=
  ∀ n, P10440032968925488827.a n = A189120 (n + 1)

end A189120

/-!
# A189126: Zero-one sequence based on the sequence (4n-2): a(A016825(k))=a(k); a(A042965(k))=1-a(k), a(1)=0.

The programs for A189126, there is no canonical definition to state claims against.
-/

/-! ## A189126.P1822339351152431690

`char[A189128(n+1)-1]`
-/

namespace A189126.P1822339351152431690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189128 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189126.P1822339351152431690

/-! ## A189126.P7624898597473351778

`char[comp[A189127(n+1)-1]]`
-/

namespace A189126.P7624898597473351778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189127 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189126.P7624898597473351778

/-! ## A189126.P2299134175695426253

`(char[A189127(floor(n/2)+1)-1]+1)%2`
-/

namespace A189126.P2299134175695426253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189127 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) % 2

end

end A189126.P2299134175695426253

/-! ## A189126.P11648842789370232504

`1-char[A189127((n-1)%(n+1)+1)-1]`
-/

namespace A189126.P11648842789370232504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189127 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189126.P11648842789370232504

/-! ## A189126.P3811975282852827875

`1-char[A189127(A328396(n))-1]`
-/

namespace A189126.P3811975282852827875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189127 (A328396 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189126.P3811975282852827875

/-!
# A189127: Positions of 0 in A189126; complement of A189128.

The programs for A189127, there is no canonical definition to state claims against.
-/

/-! ## A189127.P12777604004870977376

`eq[0, A189126(n+1)]+1`
-/

namespace A189127.P12777604004870977376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189127.P12777604004870977376

/-! ## A189127.P5313245342214448214

`A020725(eq[0, A189126(n+1)])`
-/

namespace A189127.P5313245342214448214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189127.P5313245342214448214

/-! ## A189127.P18255896080545093701

`A065475(eq[0, A189126(n+1)])`
-/

namespace A189127.P18255896080545093701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189127.P18255896080545093701

/-! ## A189127.P11904899592466551332

`(lt[A189126(n+1), 1]+1)%A033451(n+1)`
-/

namespace A189127.P11904899592466551332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) (A033451 (n + 1))

end

end A189127.P11904899592466551332

/-! ## A189127.P10438399333825037044

`eq[0, A189126(A065033(2*n))]`
-/

namespace A189127.P10438399333825037044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189127.P10438399333825037044

/-! ## A189127.P7116311675490568884

`eq[0, A189126(A233583(n+1))]`
-/

namespace A189127.P7116311675490568884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189127.P7116311675490568884

/-!
# A189128: Positions of 1 in A189126; complement of A189127.

The programs for A189128, there is no canonical definition to state claims against.
-/

/-! ## A189128.P1938275298181129325

`comp[A189127(n+1)-1]+1`
-/

namespace A189128.P1938275298181129325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189127 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189128.P1938275298181129325

/-! ## A189128.P3058432259484635889

`filter[n+1, A189126(#)]`
-/

namespace A189128.P3058432259484635889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189126 (f1 j) = 1) n)

end

end A189128.P3058432259484635889

/-! ## A189128.P16209831213670037357

`eq[1, A189126(n+1)]+1`
-/

namespace A189128.P16209831213670037357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189128.P16209831213670037357

/-! ## A189128.P1786461641193401730

`record[A000027(n+1)*A189126(n+1)]`
-/

namespace A189128.P1786461641193401730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P1786461641193401730

/-! ## A189128.P14119713959358661073

`record[A064317(n)*A189126(A064317(n))]`
-/

namespace A189128.P14119713959358661073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 n * A189126 (A064317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P14119713959358661073

/-! ## A189128.P15132261588770786855

`record[A071754(n)*A189126(A071754(n))]`
-/

namespace A189128.P15132261588770786855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071754 n * A189126 (A071754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P15132261588770786855

/-! ## A189128.P8108428629654778359

`record[A008619(2*n)*A189126(n+1)]`
-/

namespace A189128.P8108428629654778359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P8108428629654778359

/-! ## A189128.P11210124442856612062

`record[A131732(2*n)*A189126(n+1)]`
-/

namespace A189128.P11210124442856612062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * n) * A189126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P11210124442856612062

/-! ## A189128.P10338940704932299521

`record[A065033(n)*A189126(A065033(n))]`
-/

namespace A189128.P10338940704932299521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189126 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P10338940704932299521

/-! ## A189128.P16888354177395796564

`record[A189126(A203814(n))*A203814(n)]`
-/

namespace A189128.P16888354177395796564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189126 (A203814 n).toNat * A203814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P16888354177395796564

/-! ## A189128.P10727075878536978101

`record[A008620(3*n)*A189126(n+1)]`
-/

namespace A189128.P10727075878536978101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) * A189126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P10727075878536978101

/-! ## A189128.P911764267958446906

`record[A008611(n)*A189126(A008620(n))]`
-/

namespace A189128.P911764267958446906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189126 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P911764267958446906

/-! ## A189128.P9448501652930871269

`record[A126759(n)*A189126(A126759(n))]`
-/

namespace A189128.P9448501652930871269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n * A189126 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189128.P9448501652930871269

/-!
# A189129: Zero-one sequence based on the sequence (5n-3): a(A016873(k))=a(k); a(A047207(k))=1-a(k), a(1)=0.

The programs for A189129, there is no canonical definition to state claims against.
-/

/-! ## A189129.P10713372626478230438

`char[A189131(n+1)-1]`
-/

namespace A189129.P10713372626478230438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189131 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189129.P10713372626478230438

/-! ## A189129.P10758607136441618183

`char[comp[A189130(n+1)-1]]`
-/

namespace A189129.P10758607136441618183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189130 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189129.P10758607136441618183

/-! ## A189129.P8590506863101760858

`A030300(A181340(n+1)+A049480(n+1))`
-/

namespace A189129.P8590506863101760858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A181340 (n + 1) + A049480 (n + 1)).toNat

end

end A189129.P8590506863101760858

/-! ## A189129.P7848997678850516234

`A029837(∑[n²+2])%2`
-/

namespace A189129.P7848997678850516234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029837 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A189129.P7848997678850516234

/-! ## A189129.P8579570966755530292

`A103586(∑[∑[2*n]])%2`
-/

namespace A189129.P8579570966755530292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103586 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A189129.P8579570966755530292

/-!
# A189130: Positions of 0 in A189129; complement of A189131.

The programs for A189130, there is no canonical definition to state claims against.
-/

/-! ## A189130.P14519098036944497349

`eq[0, A189129(n+1)]+1`
-/

namespace A189130.P14519098036944497349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189130.P14519098036944497349

/-! ## A189130.P14832678708563646438

`A020725(eq[0, A189129(n+1)])`
-/

namespace A189130.P14832678708563646438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189130.P14832678708563646438

/-! ## A189130.P1001090160436448039

`A065475(eq[0, A189129(n+1)])`
-/

namespace A189130.P1001090160436448039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189130.P1001090160436448039

/-! ## A189130.P16382892551091172783

`eq[0, A189129(A123108(2*n))]`
-/

namespace A189130.P16382892551091172783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189130.P16382892551091172783

/-! ## A189130.P6228386759148367120

`eq[0, A189129(A233583(n+1))]`
-/

namespace A189130.P6228386759148367120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189130.P6228386759148367120

/-!
# A189131: Positions of 1 in A189129; complement of A189130.

The programs for A189131, there is no canonical definition to state claims against.
-/

/-! ## A189131.P5893951415013405222

`filter[n+1, A189129(#)]`
-/

namespace A189131.P5893951415013405222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189129 (f1 j) = 1) n)

end

end A189131.P5893951415013405222

/-! ## A189131.P1277913909735751479

`eq[1, A189129(n+1)]+1`
-/

namespace A189131.P1277913909735751479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189131.P1277913909735751479

/-! ## A189131.P17417501978166365500

`record[A000027(n+1)*A189129(n+1)]`
-/

namespace A189131.P17417501978166365500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P17417501978166365500

/-! ## A189131.P1707277876188864283

`record[(n+1)*A189129(A000007(n)+1+n)]`
-/

namespace A189131.P1707277876188864283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189129 (A000007 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P1707277876188864283

/-! ## A189131.P12931375877495820181

`record[A189129(A331742(n))*A331742(n)]`
-/

namespace A189131.P12931375877495820181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (A331742 n).toNat * A331742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P12931375877495820181

/-! ## A189131.P15820089352981093400

`record[A189129(A344180(n))*A344180(n)]`
-/

namespace A189131.P15820089352981093400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (A344180 n).toNat * A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P15820089352981093400

/-! ## A189131.P13962782453537968296

`record[A039960(n)*A189129(A039960(n))]`
-/

namespace A189131.P13962782453537968296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 n * A189129 (A039960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P13962782453537968296

/-! ## A189131.P8268318583992567734

`record[A133310(n)*A189129(A133310(n))]`
-/

namespace A189131.P8268318583992567734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n * A189129 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P8268318583992567734

/-! ## A189131.P12898259800058085017

`record[A052938(n)*A189129(A052938(n))]`
-/

namespace A189131.P12898259800058085017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189129 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P12898259800058085017

/-! ## A189131.P11035192515708399371

`record[A008619(2*n)*A189129(n+1)]`
-/

namespace A189131.P11035192515708399371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P11035192515708399371

/-! ## A189131.P7695946275420061987

`record[A131732(2*n)*A189129(n+1)]`
-/

namespace A189131.P7695946275420061987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * n) * A189129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P7695946275420061987

/-! ## A189131.P9327903194462206764

`record[A065033(n)*A189129(A065033(n))]`
-/

namespace A189131.P9327903194462206764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189129 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P9327903194462206764

/-! ## A189131.P10981802303473957877

`record[A189129(A286558(n))*A286558(n)]`
-/

namespace A189131.P10981802303473957877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189129 (A286558 n).toNat * A286558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189131.P10981802303473957877

/-!
# A189132: Zero-one sequence based on the sequence (n^2+n-1): a(A028387(k))=a(k); a(A028392(k))=1-a(k), a(1)=0.

The programs for A189132, there is no canonical definition to state claims against.
-/

/-! ## A189132.P7567932602863688839

`char[A189134(n+1)-1]`
-/

namespace A189132.P7567932602863688839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189134 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189132.P7567932602863688839

/-! ## A189132.P6420988118499504567

`char[comp[A189133(n+1)-1]]`
-/

namespace A189132.P6420988118499504567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189133 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189132.P6420988118499504567

/-! ## A189132.P718347266336577928

`char[abs(A189134(A028310(n))-1)]`
-/

namespace A189132.P718347266336577928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189134 (A028310 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189132.P718347266336577928

/-! ## A189132.P9392471726294694422

`char[A260196(n)+A189134(n+1)]`
-/

namespace A189132.P9392471726294694422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189132.P9392471726294694422

/-! ## A189132.P7615129481368455985

`A000035(A191663(3*n+2)%A158493(n))`
-/

namespace A189132.P7615129481368455985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A191663 (3 * n + 2)) (A158493 n)).toNat

end

end A189132.P7615129481368455985

/-!
# A189133: Positions of 0 in A189132; complement of A189134.

The programs for A189133, there is no canonical definition to state claims against.
-/

/-! ## A189133.P244445073178912197

`eq[0, A189132(n+1)]+1`
-/

namespace A189133.P244445073178912197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189133.P244445073178912197

/-! ## A189133.P7781665806002426802

`eq[0, A189132(A000038(n)+n)]`
-/

namespace A189133.P7781665806002426802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189132 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189133.P7781665806002426802

/-! ## A189133.P17402519955719037115

`record[(1-A189132(n+1))*A000027(n+1)]`
-/

namespace A189133.P17402519955719037115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189132 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189133.P17402519955719037115

/-! ## A189133.P2887767720238285679

`record[n+1-A007089(n*A189132(n+1))]`
-/

namespace A189133.P2887767720238285679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007089 ((n : ℤ) * A189132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189133.P2887767720238285679

/-! ## A189133.P2108348599909289818

`record[n+1-A008619(n)*A189132(n+1)]`
-/

namespace A189133.P2108348599909289818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008619 n * A189132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189133.P2108348599909289818

/-! ## A189133.P3528859995001559744

`eq[A028310(n)-n, A189132(A028310(n))]`
-/

namespace A189133.P3528859995001559744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189132 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189133.P3528859995001559744

/-! ## A189133.P11431058896963103407

`record[A008619(A014601(n))-n*A189132(n+1)]`
-/

namespace A189133.P11431058896963103407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A014601 n).toNat - (n : ℤ) * A189132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189133.P11431058896963103407

/-! ## A189133.P720564506348536659

`record[A008619(A005408(n))-n*A189132(n+1)]`
-/

namespace A189133.P720564506348536659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 n).toNat - (n : ℤ) * A189132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189133.P720564506348536659

/-! ## A189133.P14343441607821877217

`A004526(record[(n+1)*(2-A189132(n+1))])`
-/

namespace A189133.P14343441607821877217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A189132 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189133.P14343441607821877217

/-! ## A189133.P116650862661357049

`record[A008611(A016789(n))-n*A189132(n+1)]`
-/

namespace A189133.P116650862661357049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A016789 n).toNat - (n : ℤ) * A189132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189133.P116650862661357049

/-!
# A189134: Positions of 1 in A189132; complement of A189133.

The programs for A189134, there is no canonical definition to state claims against.
-/

/-! ## A189134.P10036617964742894886

`filter[n+1, A189132(#)]`
-/

namespace A189134.P10036617964742894886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189132 (f1 j) = 1) n)

end

end A189134.P10036617964742894886

/-! ## A189134.P9574651967947414192

`eq[1, A189132(n+1)]+1`
-/

namespace A189134.P9574651967947414192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189134.P9574651967947414192

/-! ## A189134.P18175156306543536573

`record[(n+2)*A189132(n+2)]`
-/

namespace A189134.P18175156306543536573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189134.P18175156306543536573

/-! ## A189134.P5318885368531736614

`eq[1, A189132(A028310(n))]`
-/

namespace A189134.P5318885368531736614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189132 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189134.P5318885368531736614

/-! ## A189134.P7539363862635273270

`A020725(eq[1, A189132(n+1)])`
-/

namespace A189134.P7539363862635273270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189134.P7539363862635273270

/-! ## A189134.P9664745596424498229

`eq[1, A189132(A065033(2*n))]`
-/

namespace A189134.P9664745596424498229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189132 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189134.P9664745596424498229

/-!
# A189135: Zero-one sequence based on the central polygonal numbers n^2-n+1: a(A002061(k))=a(k); a(A135668(k))=1-a(k), a(1)=0.

The programs for A189135, there is no canonical definition to state claims against.
-/

/-! ## A189135.P13727433036480430395

`char[A189137(n+1)-1]`
-/

namespace A189135.P13727433036480430395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189137 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189135.P13727433036480430395

/-! ## A189135.P8347434100485160610

`char[comp[A189136(n+1)-1]]`
-/

namespace A189135.P8347434100485160610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189136 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189135.P8347434100485160610

/-! ## A189135.P10045422287058758978

`ceil(cos(A256791(4*n+2)))`
-/

namespace A189135.P10045422287058758978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (A256791 (4 * n + 2) : ℝ)⌉

end

end A189135.P10045422287058758978

/-! ## A189135.P7939765750686661016

`floor((1/A256791(A016825(n)))²)`
-/

namespace A189135.P7939765750686661016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / (A256791 (A016825 n).toNat : ℚ)) ^ 2⌋

end

end A189135.P7939765750686661016

/-! ## A189135.P9700626373761063834

`A074272(A256791(4*n+2)²)`
-/

namespace A189135.P9700626373761063834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074272 (A256791 (4 * n + 2) ^ 2).toNat

end

end A189135.P9700626373761063834

/-! ## A189135.P12612213862296552687

`A010815(A256791(4*n+2)²)²`
-/

namespace A189135.P12612213862296552687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A256791 (4 * n + 2) ^ 2).toNat ^ 2

end

end A189135.P12612213862296552687

/-! ## A189135.P15909378733379265074

`∑{d}[A256791(4*n+2), A008683(#)]`
-/

namespace A189135.P15909378733379265074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A189135.P15909378733379265074

/-! ## A189135.P1490037125012013028

`A000007(abs(A256791(4*n+2))-1)`
-/

namespace A189135.P1490037125012013028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (|A256791 (4 * n + 2)| - 1).toNat

end

end A189135.P1490037125012013028

/-! ## A189135.P13714658333576803769

`1-A001221(abs(A256791(4*n+2)))`
-/

namespace A189135.P13714658333576803769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001221 |A256791 (4 * n + 2)|.toNat

end

end A189135.P13714658333576803769

/-! ## A189135.P10530313057592725967

`1-A053616(abs(A256791(4*n+2)))`
-/

namespace A189135.P10530313057592725967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053616 |A256791 (4 * n + 2)|.toNat

end

end A189135.P10530313057592725967

/-! ## A189135.P3182416884575388430

`A008683(6*abs(A256791(4*n+2)))`
-/

namespace A189135.P3182416884575388430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * |A256791 (4 * n + 2)|).toNat

end

end A189135.P3182416884575388430

/-! ## A189135.P704456216683764769

`A055615(A256791(A016825(n))²)`
-/

namespace A189135.P704456216683764769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A256791 (A016825 n).toNat ^ 2).toNat

end

end A189135.P704456216683764769

/-!
# A189136: Positions of 0 in A189135; complement of A189137.

The programs for A189136, there is no canonical definition to state claims against.
-/

/-! ## A189136.P13817429655865137451

`eq[0, A189135(n+1)]+1`
-/

namespace A189136.P13817429655865137451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189136.P13817429655865137451

/-! ## A189136.P1086526233378330617

`record[or(-A189135(n+1), A000027(n+1))]`
-/

namespace A189136.P1086526233378330617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A189135 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189136.P1086526233378330617

/-! ## A189136.P16172765745213806525

`record[n+1-A001844(n)*A189135(n+1)]`
-/

namespace A189136.P16172765745213806525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001844 n * A189135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189136.P16172765745213806525

/-! ## A189136.P6456451851076407604

`record[n+1-A005843(n)*A189135(n+1)]`
-/

namespace A189136.P6456451851076407604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 n * A189135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189136.P6456451851076407604

/-! ## A189136.P4738048208842887629

`record[n+1-A027692(n)*A189135(n+1)]`
-/

namespace A189136.P4738048208842887629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A027692 n * A189135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189136.P4738048208842887629

/-! ## A189136.P17875426974928736061

`record[n+1-A057164(n)*A189135(n+1)]`
-/

namespace A189136.P17875426974928736061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057164 n * A189135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189136.P17875426974928736061

/-! ## A189136.P9849301561686938236

`record[n+1-A058331(n)*A189135(n+1)]`
-/

namespace A189136.P9849301561686938236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A058331 n * A189135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189136.P9849301561686938236

/-! ## A189136.P232329478361302754

`eq[A028310(n)-n, A189135(A028310(n))]`
-/

namespace A189136.P232329478361302754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189136.P232329478361302754

/-! ## A189136.P11036700652151551063

`eq[A000007(n), A189135(A065033(2*n))]`
-/

namespace A189136.P11036700652151551063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189136.P11036700652151551063

/-! ## A189136.P4552926959643787503

`eq[A000038(n), A189135(A065033(2*n))]`
-/

namespace A189136.P4552926959643787503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189136.P4552926959643787503

/-! ## A189136.P15009431398229232415

`record[n+1-A000045((n+1)*A189135(n+1))]`
-/

namespace A189136.P15009431398229232415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 ((n + 1 : ℤ) * A189135 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189136.P15009431398229232415

/-!
# A189137: Positions of 1 in A189135; complement of A189136.

The programs for A189137, there is no canonical definition to state claims against.
-/

/-! ## A189137.P9369217364784938619

`filter[n+1, A189135(#)]`
-/

namespace A189137.P9369217364784938619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189135 (f1 j) = 1) n)

end

end A189137.P9369217364784938619

/-! ## A189137.P2695389326719145202

`eq[1, A189135(n+1)]+1`
-/

namespace A189137.P2695389326719145202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189137.P2695389326719145202

/-! ## A189137.P8350539983295972373

`record[(n+2)*A189135(n+2)]`
-/

namespace A189137.P8350539983295972373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189137.P8350539983295972373

/-! ## A189137.P10033201219480877526

`eq[1, A189135(A028310(n))]`
-/

namespace A189137.P10033201219480877526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189137.P10033201219480877526

/-! ## A189137.P18446697359043610355

`A020725(eq[1, A189135(n+1)])`
-/

namespace A189137.P18446697359043610355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189137.P18446697359043610355

/-! ## A189137.P5561279615037086619

`eq[1, A189135(A000007(n)+n)]`
-/

namespace A189137.P5561279615037086619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189137.P5561279615037086619

/-! ## A189137.P8623452490076503369

`eq[1, A189135(or(n, A000007(n)))]`
-/

namespace A189137.P8623452490076503369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189137.P8623452490076503369

/-! ## A189137.P8752861160354981376

`eq[1, A189135(A065033(2*n))]`
-/

namespace A189137.P8752861160354981376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189137.P8752861160354981376

/-!
# A189138: Zero-one sequence based on the sequence 1+n^2: a(A002522(k))=a(k); a(A164386(k))=1-a(k), a(1)=0.

The programs for A189138, there is no canonical definition to state claims against.
-/

/-! ## A189138.P395230431959266119

`char[A189140(n+1)-1]`
-/

namespace A189138.P395230431959266119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189140 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189138.P395230431959266119

/-! ## A189138.P14460604277529561979

`char[comp[A189139(n+1)-1]]`
-/

namespace A189138.P14460604277529561979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189139 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189138.P14460604277529561979

/-! ## A189138.P18392446646409467321

`(char[A189139(∑[char[2*n]])-1]+1)%2`
-/

namespace A189138.P18392446646409467321
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189139 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) % 2

end

end A189138.P18392446646409467321

/-! ## A189138.P7654360410523551907

`1-char[A189139(A000007(n)+n)-1]`
-/

namespace A189138.P7654360410523551907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189139 (A000007 n + (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189138.P7654360410523551907

/-! ## A189138.P4705210086300800298

`char[(A189140(n+1)+n²)%A002522(n)]`
-/

namespace A189138.P4705210086300800298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189140 (n + 1) + (n ^ 2 : ℤ)) (A002522 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189138.P4705210086300800298

/-!
# A189139: Positions of 0 in A189138; complement of A189140.

The programs for A189139, there is no canonical definition to state claims against.
-/

/-! ## A189139.P2154127928637051208

`eq[0, A189138(n+1)]+1`
-/

namespace A189139.P2154127928637051208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189139.P2154127928637051208

/-! ## A189139.P16466055874215770384

`eq[0, A189138(A028310(n))]`
-/

namespace A189139.P16466055874215770384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189138 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189139.P16466055874215770384

/-! ## A189139.P15154181367772205197

`A020725(eq[0, A189138(n+1)])`
-/

namespace A189139.P15154181367772205197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189139.P15154181367772205197

/-! ## A189139.P8301370244500938395

`eq[0, A189138(A065033(2*n))]`
-/

namespace A189139.P8301370244500938395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189138 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189139.P8301370244500938395

/-! ## A189139.P1708243491113729474

`eq[0, A189138(A123108(2*n))]`
-/

namespace A189139.P1708243491113729474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189138 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189139.P1708243491113729474

/-! ## A189139.P2236220036091543760

`eq[0, A189138(A233583(n+1))]`
-/

namespace A189139.P2236220036091543760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189138 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189139.P2236220036091543760

/-!
# A189140: Positions of 1 in A189138; complement of A189139.

The programs for A189140, there is no canonical definition to state claims against.
-/

/-! ## A189140.P15632958777470573138

`comp[A189139(n+1)-1]+1`
-/

namespace A189140.P15632958777470573138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189139 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189140.P15632958777470573138

/-! ## A189140.P3269175179482208341

`filter[n+1, A189138(#)]`
-/

namespace A189140.P3269175179482208341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189138 (f1 j) = 1) n)

end

end A189140.P3269175179482208341

/-! ## A189140.P8169067575322373489

`eq[1, A189138(n+1)]+1`
-/

namespace A189140.P8169067575322373489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189140.P8169067575322373489

/-! ## A189140.P17999763326365757801

`record[A000027(n+1)*A189138(n+1)]`
-/

namespace A189140.P17999763326365757801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P17999763326365757801

/-! ## A189140.P1913764418067199749

`record[gcd(n+1, A189138(n+1)+A005408(n))]`
-/

namespace A189140.P1913764418067199749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A189138 (n + 1) + A005408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P1913764418067199749

/-! ## A189140.P3656709702786862860

`eq[n, A028310(n)*A189138(A028310(n))]`
-/

namespace A189140.P3656709702786862860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A189138 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189140.P3656709702786862860

/-! ## A189140.P8427654891483222648

`record[A008619(2*n)*A189138(n+1)]`
-/

namespace A189140.P8427654891483222648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P8427654891483222648

/-! ## A189140.P11345931514250277139

`record[A131732(2*n)*A189138(n+1)]`
-/

namespace A189140.P11345931514250277139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * n) * A189138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P11345931514250277139

/-! ## A189140.P17733447494054661596

`record[A052938(n)*A189138(A052938(n))]`
-/

namespace A189140.P17733447494054661596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189138 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P17733447494054661596

/-! ## A189140.P2646310887647690262

`record[A025480(A189138(n+1)+A005408(n))]`
-/

namespace A189140.P2646310887647690262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A189138 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P2646310887647690262

/-! ## A189140.P12366845334896740603

`record[A008620(n)*A189138(A008620(n))]`
-/

namespace A189140.P12366845334896740603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A189138 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P12366845334896740603

/-! ## A189140.P756801929824242348

`record[A008621(n)*A189138(A008621(n))]`
-/

namespace A189140.P756801929824242348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189138 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189140.P756801929824242348

/-! ## A189140.P17903774976280408102

`A008612(record[A008588(n)*A189138(n+1)])`
-/

namespace A189140.P17903774976280408102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A189138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189140.P17903774976280408102

/-!
# A189141: Zero-one sequence based on the primes: a(A000040(k))=a(k); a(A002808(k))=1-a(k), a(1)=0.

The programs for A189141, there is no canonical definition to state claims against.
-/

/-! ## A189141.P5176811719383886365

`char[A189143(n+1)-1]`
-/

namespace A189141.P5176811719383886365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189143 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189141.P5176811719383886365

/-! ## A189141.P803302811433368595

`char[comp[A189142(n+1)-1]]`
-/

namespace A189141.P803302811433368595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189142 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189141.P803302811433368595

/-! ## A189141.P9145897711088462572

`(∑{e}[A269847(n+1), #]%2)^n`
-/

namespace A189141.P9145897711088462572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2) ^ n

end

end A189141.P9145897711088462572

/-! ## A189141.P1310743626126703179

`∑{e}[A269847(round(acot(n)+n)+1), #]%2`
-/

namespace A189141.P1310743626126703179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2

end

end A189141.P1310743626126703179

/-! ## A189141.P7966951838002857547

`∑{e}[A269847(round(sqrt(n²+1))+1), #]%2`
-/

namespace A189141.P7966951838002857547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2

end

end A189141.P7966951838002857547

/-! ## A189141.P5090517924500613442

`A298952(A071574(n+1))`
-/

namespace A189141.P5090517924500613442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 (A071574 (n + 1)).toNat

end

end A189141.P5090517924500613442

/-! ## A189141.P1374211148531465831

`char[Δ[A189143(A152271(n))]]`
-/

namespace A189141.P1374211148531465831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189143 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189141.P1374211148531465831

/-! ## A189141.P11912292838052643972

`char[A023443(A189143(n+1))]`
-/

namespace A189141.P11912292838052643972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189143 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189141.P11912292838052643972

/-! ## A189141.P10599942839992129217

`A086436(A269847(n+1))%2`
-/

namespace A189141.P10599942839992129217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086436 (A269847 (n + 1)).toNat) 2

end

end A189141.P10599942839992129217

/-! ## A189141.P16361260661544670965

`A098800(∑{e}[A269847(n+1), #])`
-/

namespace A189141.P16361260661544670965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A189141.P16361260661544670965

/-! ## A189141.P1001133275242706614

`(A006093(n+1)+∑{e}[A269847(n+1), #])%2`
-/

namespace A189141.P1001133275242706614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)) 2

end

end A189141.P1001133275242706614

/-! ## A189141.P3193131837657441456

`A266666(A001222(A269847(n+1))²)`
-/

namespace A189141.P3193131837657441456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 (A001222 (A269847 (n + 1)).toNat ^ 2).toNat

end

end A189141.P3193131837657441456

/-! ## A189141.P14417629075500247046

`A056594(A252736(A269847(n+1))²)`
-/

namespace A189141.P14417629075500247046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A252736 (A269847 (n + 1)).toNat ^ 2).toNat

end

end A189141.P14417629075500247046

/-! ## A189141.P15198192509725763025

`and(1, A001222(A269847(A000040(n+1))))`
-/

namespace A189141.P15198192509725763025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (A269847 (A000040 (n + 1)).toNat).toNat)

end

end A189141.P15198192509725763025

/-! ## A189141.P9614277719202388972

`∏{p}[A001222(A269847(n+1)), A000035(#)]`
-/

namespace A189141.P9614277719202388972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A269847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A189141.P9614277719202388972

/-! ## A189141.P12861513755392285163

`(A311611(n)+A001222(A269847(n+1)))%2`
-/

namespace A189141.P12861513755392285163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311611 n + A001222 (A269847 (n + 1)).toNat) 2

end

end A189141.P12861513755392285163

/-!
# A189142: Positions of 0 in A189141; complement of A189143.

The programs for A189142, there is no canonical definition to state claims against.
-/

/-! ## A189142.P17750542418013425183

`comp[A086436(A269847(n+1))%2*(n+1)]`
-/

namespace A189142.P17750542418013425183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086436 (A269847 (n + 1)).toNat) 2 * (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189142.P17750542418013425183

/-! ## A189142.P3611067829417062824

`eq[0, A189141(n+1)]+1`
-/

namespace A189142.P3611067829417062824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189142.P3611067829417062824

/-! ## A189142.P15232523797902854778

`lt[A189141(round(sqrt(n²+1))), 1]`
-/

namespace A189142.P15232523797902854778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189142.P15232523797902854778

/-! ## A189142.P2058840081496444186

`lt[A189141(-xor(n, -1)), 1]+1`
-/

namespace A189142.P2058840081496444186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (-Int.xor (n : ℤ) (-1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189142.P2058840081496444186

/-! ## A189142.P14549754007452177482

`eq[0, A189141(A028310(n))]`
-/

namespace A189142.P14549754007452177482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189142.P14549754007452177482

/-! ## A189142.P10617330752170522820

`A020725(eq[0, A189141(n+1)])`
-/

namespace A189142.P10617330752170522820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189142.P10617330752170522820

/-! ## A189142.P5187857945943224273

`A065475(eq[0, A189141(n+1)])`
-/

namespace A189142.P5187857945943224273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189142.P5187857945943224273

/-! ## A189142.P13798678544985902519

`eq[0, A189141(A233583(n+1))]`
-/

namespace A189142.P13798678544985902519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189142.P13798678544985902519

/-! ## A189142.P13225162969908154846

`eq[0, A189141(A065033(2*n))]`
-/

namespace A189142.P13225162969908154846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189142.P13225162969908154846

/-! ## A189142.P504364183676500677

`eq[0, A189141(A000007(n)+n)]`
-/

namespace A189142.P504364183676500677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189142.P504364183676500677

/-!
# A189143: Positions of 1 in A189141; complement of A189142.

The programs for A189143, there is no canonical definition to state claims against.
-/

/-! ## A189143.P15349678122313053652

`filter[n+1, A189141(#)]`
-/

namespace A189143.P15349678122313053652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189141 (f1 j) = 1) n)

end

end A189143.P15349678122313053652

/-! ## A189143.P7371917021672261362

`lt[0, A189141(n+1)]+1`
-/

namespace A189143.P7371917021672261362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189143.P7371917021672261362

/-! ## A189143.P9434468145861909443

`comp[A189142(n+1)-1]+1`
-/

namespace A189143.P9434468145861909443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189142 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189143.P9434468145861909443

/-! ## A189143.P3316513357328406916

`eq[1, A189141(abs(2-n)+2)]`
-/

namespace A189143.P3316513357328406916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189143.P3316513357328406916

/-! ## A189143.P3203150610312735732

`eq[1, A189141(n%(n+1)+1)]+1`
-/

namespace A189143.P3203150610312735732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (n % (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189143.P3203150610312735732

/-! ## A189143.P11284734900666792640

`eq[1, A189141(round(acot(n)+n)+1)]+1`
-/

namespace A189143.P11284734900666792640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189143.P11284734900666792640

/-! ## A189143.P8397000098929818040

`eq[1, A189141(round(sqrt(n²+1))+1)]+1`
-/

namespace A189143.P8397000098929818040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189141 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189143.P8397000098929818040

/-! ## A189143.P11313616339675136268

`record[A000027(n+1)*A189141(n+1)]`
-/

namespace A189143.P11313616339675136268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189143.P11313616339675136268

/-! ## A189143.P9628858257048064741

`record[A028310(n+1)*A189141(n+1)]`
-/

namespace A189143.P9628858257048064741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) * A189141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189143.P9628858257048064741

/-!
# A189145: Number of n X 2 array permutations with each element making zero or one knight moves.

The programs for A189145, the canonical program `A189145.P15214286756269133986` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189145 has offset 1).

The definition of A189145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189145.P7183551654137100325

`round(ϕ^(n+3)/5)²`
-/

namespace A189145.P7183551654137100325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 3) / 5) ^ 2

end

end A189145.P7183551654137100325

namespace A189145

/-- `round(ϕ^(n+3)/5)²` -/
def P7183551654137100325.Spec : Prop :=
  ∀ n, P7183551654137100325.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P11867901441040210207

`∏[ratio[A006498(n)]²]`
-/

namespace A189145.P11867901441040210207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A189145.P11867901441040210207

namespace A189145

/-- `∏[ratio[A006498(n)]²]` -/
def P11867901441040210207.Spec : Prop :=
  ∀ n, P11867901441040210207.a n = (A189145 (n + 1) : ℚ)

end A189145

/-! ## A189145.P15214286756269133986

`and(-3, A006498(n+1)²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189145

/-- `and(-3, A006498(n+1)²)` -/
def P15214286756269133986.Spec : Prop :=
  ∀ n, P15214286756269133986.a n = A189145 (n + 1)

theorem P15214286756269133986.correct : P15214286756269133986.Spec := by
  intro n
  simp only [A189145, Nat.add_sub_cancel]

end A189145

/-! ## A189145.P728377326907556660

`A031923(abs(n+1-3*n))`
-/

namespace A189145.P728377326907556660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 |(n + 1 : ℤ) - (3 * n : ℤ)|.toNat

end

end A189145.P728377326907556660

namespace A189145

/-- `A031923(abs(n+1-3*n))` -/
def P728377326907556660.Spec : Prop :=
  ∀ n, P728377326907556660.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P537692024442940059

`A074677(n+2)*A074677(n+2)`
-/

namespace A189145.P537692024442940059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 2) * A074677 (n + 2)

end

end A189145.P537692024442940059

namespace A189145

/-- `A074677(n+2)*A074677(n+2)` -/
def P537692024442940059.Spec : Prop :=
  ∀ n, P537692024442940059.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P7829251517870836048

`A006498(A008619(2*n))*A006498(n+1)`
-/

namespace A189145.P7829251517870836048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A008619 (2 * n)).toNat * A006498 (n + 1)

end

end A189145.P7829251517870836048

namespace A189145

/-- `A006498(A008619(2*n))*A006498(n+1)` -/
def P7829251517870836048.Spec : Prop :=
  ∀ n, P7829251517870836048.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P6027333483259755711

`A006498(A289439(2*(n+1)))*A006498(n+1)`
-/

namespace A189145.P6027333483259755711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A289439 (2 * (n + 1))).toNat * A006498 (n + 1)

end

end A189145.P6027333483259755711

namespace A189145

/-- `A006498(A289439(2*(n+1)))*A006498(n+1)` -/
def P6027333483259755711.Spec : Prop :=
  ∀ n, P6027333483259755711.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P9312425765209449187

`A006498(A289440(2*(n+1)))*A006498(n+1)`
-/

namespace A189145.P9312425765209449187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A289440 (2 * (n + 1))).toNat * A006498 (n + 1)

end

end A189145.P9312425765209449187

namespace A189145

/-- `A006498(A289440(2*(n+1)))*A006498(n+1)` -/
def P9312425765209449187.Spec : Prop :=
  ∀ n, P9312425765209449187.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P6705827599132787825

`A006498(A290636(2*(n+1)))*A006498(n+1)`
-/

namespace A189145.P6705827599132787825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A290636 (2 * (n + 1))).toNat * A006498 (n + 1)

end

end A189145.P6705827599132787825

namespace A189145

/-- `A006498(A290636(2*(n+1)))*A006498(n+1)` -/
def P6705827599132787825.Spec : Prop :=
  ∀ n, P6705827599132787825.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P167863939955032256

`A006498(n+1)*A057979(2*n)*A006498(n+1)`
-/

namespace A189145.P167863939955032256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 1) * A057979 (2 * n) * A006498 (n + 1)

end

end A189145.P167863939955032256

namespace A189145

/-- `A006498(n+1)*A057979(2*n)*A006498(n+1)` -/
def P167863939955032256.Spec : Prop :=
  ∀ n, P167863939955032256.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P17894109803409048925

`(A056594(2*n+1)+A006498(n+1))*A006498(n+1)`
-/

namespace A189145.P17894109803409048925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (2 * n + 1) + A006498 (n + 1)) * A006498 (n + 1)

end

end A189145.P17894109803409048925

namespace A189145

/-- `(A056594(2*n+1)+A006498(n+1))*A006498(n+1)` -/
def P17894109803409048925.Spec : Prop :=
  ∀ n, P17894109803409048925.a n = A189145 (n + 1)

end A189145

/-! ## A189145.P12708447858132759601

`(A122840(2*n+1)+A006498(n+1))*A006498(n+1)`
-/

namespace A189145.P12708447858132759601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122840 (2 * n + 1) + A006498 (n + 1)) * A006498 (n + 1)

end

end A189145.P12708447858132759601

namespace A189145

/-- `(A122840(2*n+1)+A006498(n+1))*A006498(n+1)` -/
def P12708447858132759601.Spec : Prop :=
  ∀ n, P12708447858132759601.a n = A189145 (n + 1)

end A189145

/-!
# A189146: Number of n X 3 array permutations with each element making zero or one knight moves.

The programs for A189146, there is no canonical definition to state claims against.
-/

/-! ## A189146.P725241484669880893

`A189150(∑[n+2]+4)`
-/

namespace A189146.P725241484669880893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189146.P725241484669880893

/-! ## A189146.P17837965615920837376

`record[A010054(n)*A189150(n+3)]`
-/

namespace A189146.P17837965615920837376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A189150 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189146.P17837965615920837376

/-! ## A189146.P14875863882594949243

`record[gcd(A189150(n+3), A229001(n))]`
-/

namespace A189146.P14875863882594949243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189150 (n + 3)) (A229001 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189146.P14875863882594949243

/-! ## A189146.P10381657100805767771

`record[gcd(A025581(n), A189150(n+4))]`
-/

namespace A189146.P10381657100805767771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A189150 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189146.P10381657100805767771

/-! ## A189146.P11205301846984122

`A189150(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A189146.P11205301846984122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189150 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A189146.P11205301846984122

/-!
# A189147: Number of n X 4 array permutations with each element making zero or one knight moves.

The programs for A189147, there is no canonical definition to state claims against.
-/

/-! ## A189147.P3889997118223318274

`A189150(A374004(n+1))`
-/

namespace A189147.P3889997118223318274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A374004 (n + 1)).toNat

end

end A189147.P3889997118223318274

/-! ## A189147.P3140362539878724634

`A189150(A141214(n)+7)`
-/

namespace A189147.P3140362539878724634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A141214 n + 7).toNat

end

end A189147.P3140362539878724634

/-! ## A189147.P8829465555888219490

`A189150(A052905(n)+9)`
-/

namespace A189147.P8829465555888219490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A052905 n + 9).toNat

end

end A189147.P8829465555888219490

/-! ## A189147.P15014274018470856805

`A189150(A055999(n)+10)`
-/

namespace A189147.P15014274018470856805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A055999 n + 10).toNat

end

end A189147.P15014274018470856805

/-!
# A189148: Number of nX5 array permutations with each element making zero or one knight moves.

The programs for A189148, there is no canonical definition to state claims against.
-/

/-! ## A189148.P16885290479007004828

`A189150(A374005(n+1))`
-/

namespace A189148.P16885290479007004828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A374005 (n + 1)).toNat

end

end A189148.P16885290479007004828

/-! ## A189148.P18291510692713861802

`A189150(A167499(n+3))`
-/

namespace A189148.P18291510692713861802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A167499 (n + 3)).toNat

end

end A189148.P18291510692713861802

/-! ## A189148.P12364825754436592306

`A189150(A155212(n)+13)`
-/

namespace A189148.P12364825754436592306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A155212 n + 13).toNat

end

end A189148.P12364825754436592306

/-!
# A189149: Number of nX6 array permutations with each element making zero or one knight moves.

The programs for A189149, there is no canonical definition to state claims against.
-/

/-! ## A189149.P6495401496871199457

`A189150(A374007(n+1))`
-/

namespace A189149.P6495401496871199457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (A374007 (n + 1)).toNat

end

end A189149.P6495401496871199457

/-!
# A189150: T(n,k)=Number of nXk array permutations with each element making zero or one knight moves.

The programs for A189150, there is no canonical definition to state claims against.
-/

/-! ## A189150.P3781020863114951892

`A116687(A056939(n))²`
-/

namespace A189150.P3781020863114951892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116687 (A056939 n).toNat ^ 2

end

end A189150.P3781020863114951892

/-! ## A189150.P15987465880584430318

`A109337(A108558(n))²`
-/

namespace A189150.P15987465880584430318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109337 (A108558 n).toNat ^ 2

end

end A189150.P15987465880584430318

/-! ## A189150.P5184091245946732589

`A117707(A176420(n))²`
-/

namespace A189150.P5184091245946732589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A176420 n).toNat ^ 2

end

end A189150.P5184091245946732589

/-! ## A189150.P14704087249316439484

`A111890(A187617(n))²`
-/

namespace A189150.P14704087249316439484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (A187617 n).toNat ^ 2

end

end A189150.P14704087249316439484

/-! ## A189150.P1499713782587822225

`A354522(A008518(n))²`
-/

namespace A189150.P1499713782587822225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354522 (A008518 n).toNat ^ 2

end

end A189150.P1499713782587822225

/-!
# A189151: Numbers k such that k < floor(sqrt(k)) * ceiling(sqrt(k)).

The programs for A189151, the canonical program `A189151.P4362739467928619395` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189151 has offset 1).

The definition of A189151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189151.P13469397804953900770

`lt[round(sqrt(n+1))²-n, 0]`
-/

namespace A189151.P13469397804953900770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189151.P13469397804953900770

namespace A189151

/-- `lt[round(sqrt(n+1))²-n, 0]` -/
def P13469397804953900770.Spec : Prop :=
  ∀ n, (P13469397804953900770.a n : ℤ) = A189151 (n + 1)

end A189151

/-! ## A189151.P2789851392690822081

`C(∑[char[∑[n+1]]]+4, 2)+n-1`
-/

namespace A189151.P2789851392690822081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 4) 2 : ℤ) + ((n : ℤ) - 1)

end

end A189151.P2789851392690822081

namespace A189151

/-- `C(∑[char[∑[n+1]]]+4, 2)+n-1` -/
def P2789851392690822081.Spec : Prop :=
  ∀ n, P2789851392690822081.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P844672690277711686

`A000096(comp[∑[n]]-n)+n`
-/

namespace A189151.P844672690277711686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + (n : ℤ)

end

end A189151.P844672690277711686

namespace A189151

/-- `A000096(comp[∑[n]]-n)+n` -/
def P844672690277711686.Spec : Prop :=
  ∀ n, P844672690277711686.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P1753009577542092168

`A000217(∑[char[∑[n]]]+2)-1+n`
-/

namespace A189151.P1753009577542092168
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1 + (n : ℤ)

end

end A189151.P1753009577542092168

namespace A189151

/-- `A000217(∑[char[∑[n]]]+2)-1+n` -/
def P1753009577542092168.Spec : Prop :=
  ∀ n, P1753009577542092168.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P1229900590057716393

`A002260(n+1)+(n-comp[∑[n]])²`
-/

namespace A189151.P1229900590057716393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2

end

end A189151.P1229900590057716393

namespace A189151

/-- `A002260(n+1)+(n-comp[∑[n]])²` -/
def P1229900590057716393.Spec : Prop :=
  ∀ n, P1229900590057716393.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P11749855468140637271

`(∑[char[∑[n]]]+1)²+A002262(n)+1`
-/

namespace A189151.P11749855468140637271
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℤ) + (A002262 n + 1)

end

end A189151.P11749855468140637271

namespace A189151

/-- `(∑[char[∑[n]]]+1)²+A002262(n)+1` -/
def P11749855468140637271.Spec : Prop :=
  ∀ n, P11749855468140637271.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P4362739467928619395

`A185871(n+1)-A061885(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A189151

/-- `A185871(n+1)-A061885(n)` -/
def P4362739467928619395.Spec : Prop :=
  ∀ n, P4362739467928619395.a n = A189151 (n + 1)

theorem P4362739467928619395.correct : P4362739467928619395.Spec := by
  intro n
  simp only [A189151, Nat.add_sub_cancel]

end A189151

/-! ## A189151.P1650412402583150748

`A140978(n+1)+A002260(n+1)`
-/

namespace A189151.P1650412402583150748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + A002260 (n + 1)

end

end A189151.P1650412402583150748

namespace A189151

/-- `A140978(n+1)+A002260(n+1)` -/
def P1650412402583150748.Spec : Prop :=
  ∀ n, P1650412402583150748.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P3288544728130367952

`A218036(n+1)+A095833(n+1)`
-/

namespace A189151.P3288544728130367952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (n + 1) + A095833 (n + 1)

end

end A189151.P3288544728130367952

namespace A189151

/-- `A218036(n+1)+A095833(n+1)` -/
def P3288544728130367952.Spec : Prop :=
  ∀ n, P3288544728130367952.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P11945531830743794258

`A217575(n+1)+A133196(n+1)`
-/

namespace A189151.P11945531830743794258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) + A133196 (n + 1)

end

end A189151.P11945531830743794258

namespace A189151

/-- `A217575(n+1)+A133196(n+1)` -/
def P11945531830743794258.Spec : Prop :=
  ∀ n, P11945531830743794258.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P11450326369533404343

`A063657(n+1)+A003057(n+2)`
-/

namespace A189151.P11450326369533404343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) + A003057 (n + 2)

end

end A189151.P11450326369533404343

namespace A189151

/-- `A063657(n+1)+A003057(n+2)` -/
def P11450326369533404343.Spec : Prop :=
  ∀ n, P11450326369533404343.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P5702988123050655638

`A004202(n+1)+A131507(n)+2`
-/

namespace A189151.P5702988123050655638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) + (A131507 n + 2)

end

end A189151.P5702988123050655638

namespace A189151

/-- `A004202(n+1)+A131507(n)+2` -/
def P5702988123050655638.Spec : Prop :=
  ∀ n, P5702988123050655638.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P7443290334597684744

`A001283(n+2)-A075362(n+1)`
-/

namespace A189151.P7443290334597684744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) - A075362 (n + 1)

end

end A189151.P7443290334597684744

namespace A189151

/-- `A001283(n+2)-A075362(n+1)` -/
def P7443290334597684744.Spec : Prop :=
  ∀ n, P7443290334597684744.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P12866106464358492758

`A000217(A003056(n)+3)+n-1`
-/

namespace A189151.P12866106464358492758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n + 3).toNat + ((n : ℤ) - 1)

end

end A189151.P12866106464358492758

namespace A189151

/-- `A000217(A003056(n)+3)+n-1` -/
def P12866106464358492758.Spec : Prop :=
  ∀ n, P12866106464358492758.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P7532650652341517184

`A055461(n+1)+2*A193973(n)`
-/

namespace A189151.P7532650652341517184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A193973 n

end

end A189151.P7532650652341517184

namespace A189151

/-- `A055461(n+1)+2*A193973(n)` -/
def P7532650652341517184.Spec : Prop :=
  ∀ n, P7532650652341517184.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P15884102010004203061

`A002262(n)+(A003056(n)+2)²+1`
-/

namespace A189151.P15884102010004203061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((A003056 n + 2) ^ 2 + 1)

end

end A189151.P15884102010004203061

namespace A189151

/-- `A002262(n)+(A003056(n)+2)²+1` -/
def P15884102010004203061.Spec : Prop :=
  ∀ n, P15884102010004203061.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P16957985780074568879

`A140978(n+1)+sqrt(A133819(n+1))`
-/

namespace A189151.P16957985780074568879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A140978 (n + 1) : ℝ) + Real.sqrt (A133819 (n + 1) : ℝ)

end

end A189151.P16957985780074568879

namespace A189151

/-- `A140978(n+1)+sqrt(A133819(n+1))` -/
def P16957985780074568879.Spec : Prop :=
  ∀ n, P16957985780074568879.a n = (A189151 (n + 1) : ℝ)

end A189151

/-! ## A189151.P5175242167203132227

`A004736(n+1)²+2*A193973(n)`
-/

namespace A189151.P5175242167203132227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 + 2 * A193973 n

end

end A189151.P5175242167203132227

namespace A189151

/-- `A004736(n+1)²+2*A193973(n)` -/
def P5175242167203132227.Spec : Prop :=
  ∀ n, P5175242167203132227.a n = A189151 (n + 1)

end A189151

/-! ## A189151.P2503254178356636700

`A002024(n+1)+A063657(n+1)+1`
-/

namespace A189151.P2503254178356636700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A063657 (n + 1) + 1)

end

end A189151.P2503254178356636700

namespace A189151

/-- `A002024(n+1)+A063657(n+1)+1` -/
def P2503254178356636700.Spec : Prop :=
  ∀ n, P2503254178356636700.a n = A189151 (n + 1)

end A189151

/-!
# A189152: Number of n X n binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189152, there is no canonical definition to state claims against.
-/

/-! ## A189152.P5323510102411529702

`A189161(∑[4*n]+1)`
-/

namespace A189152.P5323510102411529702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189152.P5323510102411529702

/-! ## A189152.P1029056038743020401

`lcm(2, A189161(A001844(n)))`
-/

namespace A189152.P1029056038743020401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189161 (A001844 n).toNat)

end

end A189152.P1029056038743020401

/-! ## A189152.P16183485378175667117

`record[A003982(n)*A189161(n+1)]`
-/

namespace A189152.P16183485378175667117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189152.P16183485378175667117

/-! ## A189152.P16818717090158888624

`record[gcd(A114327(n), A189161(n+1))]`
-/

namespace A189152.P16818717090158888624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A189161 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189152.P16818717090158888624

/-! ## A189152.P11857901146162782469

`A007318(A007318(n))*A189161(A001844(n))`
-/

namespace A189152.P11857901146162782469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A189161 (A001844 n).toNat

end

end A189152.P11857901146162782469

/-!
# A189153: The number of primes in A013918 less than 10^n.

The programs for A189153, there is no canonical definition to state claims against.
-/

/-! ## A189153.P9858978444441350264

`A348575(A026744(n))+A002350(n+1)`
-/

namespace A189153.P9858978444441350264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348575 (A026744 n).toNat + A002350 (n + 1)

end

end A189153.P9858978444441350264

/-! ## A189153.P6063555226071806072

`A302979(A135402(n+1)+A061989(n))`
-/

namespace A189153.P6063555226071806072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302979 (A135402 (n + 1) + A061989 n).toNat

end

end A189153.P6063555226071806072

/-!
# A189154: Number of n X 2 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189154, the canonical program `A189154.P14736352262998142675` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189154 has offset 1).

The definition of A189154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189154.P14736352262998142675

`A008937(n+2)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189154

/-- `A008937(n+2)²` -/
def P14736352262998142675.Spec : Prop :=
  ∀ n, P14736352262998142675.a n = A189154 (n + 1)

theorem P14736352262998142675.correct : P14736352262998142675.Spec := by
  intro n
  simp only [A189154, Nat.add_sub_cancel]

end A189154

/-! ## A189154.P9870725243553972038

`record[a(n-3)+a(n-2)+a(n-1)+1]²` with `a(0)=2, a(1)=0, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A189154.P9870725243553972038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 2, 4] fun n f1 =>
  f1 (n - 3) + (f1 (n - 2) + f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A189154.P9870725243553972038

namespace A189154

/-- `record[a(n-3)+a(n-2)+a(n-1)+1]²` -/
def P9870725243553972038.Spec : Prop :=
  ∀ n, (P9870725243553972038.a n : ℤ) = A189154 (n + 1)

end A189154

/-! ## A189154.P4883772553966939457

`Δ[A062544(n+1)]²`
-/

namespace A189154.P4883772553966939457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A189154.P4883772553966939457

namespace A189154

/-- `Δ[A062544(n+1)]²` -/
def P4883772553966939457.Spec : Prop :=
  ∀ n, P4883772553966939457.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P4536671245740734212

`(Δ[A356619(n)]+1)²`
-/

namespace A189154.P4536671245740734212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A189154.P4536671245740734212

namespace A189154

/-- `(Δ[A356619(n)]+1)²` -/
def P4536671245740734212.Spec : Prop :=
  ∀ n, P4536671245740734212.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P7742755111871215831

`Δ[A007800(n+2)]²`
-/

namespace A189154.P7742755111871215831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A189154.P7742755111871215831

namespace A189154

/-- `Δ[A007800(n+2)]²` -/
def P7742755111871215831.Spec : Prop :=
  ∀ n, P7742755111871215831.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P2823012016433755122

`(A027084(n+2)+1)²`
-/

namespace A189154.P2823012016433755122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027084 (n + 2) + 1) ^ 2

end

end A189154.P2823012016433755122

namespace A189154

/-- `(A027084(n+2)+1)²` -/
def P2823012016433755122.Spec : Prop :=
  ∀ n, P2823012016433755122.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P14204115971426916753

`(A192804(n+4)-1)²`
-/

namespace A189154.P14204115971426916753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192804 (n + 4) - 1) ^ 2

end

end A189154.P14204115971426916753

namespace A189154

/-- `(A192804(n+4)-1)²` -/
def P14204115971426916753.Spec : Prop :=
  ∀ n, P14204115971426916753.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P4820574989519560357

`(A054668(n+3)/2)²`
-/

namespace A189154.P4820574989519560357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054668 (n + 3) : ℚ) / 2) ^ 2

end

end A189154.P4820574989519560357

namespace A189154

/-- `(A054668(n+3)/2)²` -/
def P4820574989519560357.Spec : Prop :=
  ∀ n, P4820574989519560357.a n = (A189154 (n + 1) : ℚ)

end A189154

/-! ## A189154.P1036396246253058591

`record[(Δ[A221949(n)]+1)²]`
-/

namespace A189154.P1036396246253058591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189154.P1036396246253058591

namespace A189154

/-- `record[(Δ[A221949(n)]+1)²]` -/
def P1036396246253058591.Spec : Prop :=
  ∀ n, P1036396246253058591.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P3022564648795648555

`(∑[A000073(n+3)]+1)²`
-/

namespace A189154.P3022564648795648555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A189154.P3022564648795648555

namespace A189154

/-- `(∑[A000073(n+3)]+1)²` -/
def P3022564648795648555.Spec : Prop :=
  ∀ n, P3022564648795648555.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P7269892154345813078

`(Δ[A221949(n+2)]+1)²`
-/

namespace A189154.P7269892154345813078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221949 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A189154.P7269892154345813078

namespace A189154

/-- `(Δ[A221949(n+2)]+1)²` -/
def P7269892154345813078.Spec : Prop :=
  ∀ n, P7269892154345813078.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P13778927634039822300

`(A027083(n+2)/2+1)²`
-/

namespace A189154.P13778927634039822300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027083 (n + 2) : ℚ) / 2 + 1) ^ 2

end

end A189154.P13778927634039822300

namespace A189154

/-- `(A027083(n+2)/2+1)²` -/
def P13778927634039822300.Spec : Prop :=
  ∀ n, P13778927634039822300.a n = (A189154 (n + 1) : ℚ)

end A189154

/-! ## A189154.P10029483547440507605

`((A000213(n+4)-1)/2)²`
-/

namespace A189154.P10029483547440507605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000213 (n + 4) - 1 : ℚ) / 2) ^ 2

end

end A189154.P10029483547440507605

namespace A189154

/-- `((A000213(n+4)-1)/2)²` -/
def P10029483547440507605.Spec : Prop :=
  ∀ n, P10029483547440507605.a n = (A189154 (n + 1) : ℚ)

end A189154

/-! ## A189154.P16181099960047285359

`(∑[A308189(2*n+1)]+2)²`
-/

namespace A189154.P16181099960047285359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A189154.P16181099960047285359

namespace A189154

/-- `(∑[A308189(2*n+1)]+2)²` -/
def P16181099960047285359.Spec : Prop :=
  ∀ n, P16181099960047285359.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P17707200099735804618

`(∑[A089068(n+1)]+n+2)²`
-/

namespace A189154.P17707200099735804618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)) ^ 2

end

end A189154.P17707200099735804618

namespace A189154

/-- `(∑[A089068(n+1)]+n+2)²` -/
def P17707200099735804618.Spec : Prop :=
  ∀ n, P17707200099735804618.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P14069721594544362961

`(∑[record[Δ[A308189(n+1)]]]+1)²`
-/

namespace A189154.P14069721594544362961
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A189154.P14069721594544362961

namespace A189154

/-- `(∑[record[Δ[A308189(n+1)]]]+1)²` -/
def P14069721594544362961.Spec : Prop :=
  ∀ n, P14069721594544362961.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P4768719027632684701

`A118884(A001972(n))²`
-/

namespace A189154.P4768719027632684701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118884 (A001972 n).toNat ^ 2

end

end A189154.P4768719027632684701

namespace A189154

/-- `A118884(A001972(n))²` -/
def P4768719027632684701.Spec : Prop :=
  ∀ n, P4768719027632684701.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P4727452464058765247

`A008937(A000027(n+2))^2`
-/

namespace A189154.P4727452464058765247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (A000027 (n + 2)).toNat ^ 2

end

end A189154.P4727452464058765247

namespace A189154

/-- `A008937(A000027(n+2))^2` -/
def P4727452464058765247.Spec : Prop :=
  ∀ n, P4727452464058765247.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P5137986369523260153

`(A154949(n+1)+A154949(n))²`
-/

namespace A189154.P5137986369523260153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154949 (n + 1) + A154949 n) ^ 2

end

end A189154.P5137986369523260153

namespace A189154

/-- `(A154949(n+1)+A154949(n))²` -/
def P5137986369523260153.Spec : Prop :=
  ∀ n, P5137986369523260153.a n = A189154 (n + 1)

end A189154

/-! ## A189154.P17289724370468906278

`(A027115(n+1)-A027139(n))²`
-/

namespace A189154.P17289724370468906278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027115 (n + 1) - A027139 n) ^ 2

end

end A189154.P17289724370468906278

namespace A189154

/-- `(A027115(n+1)-A027139(n))²` -/
def P17289724370468906278.Spec : Prop :=
  ∀ n, P17289724370468906278.a n = A189154 (n + 1)

end A189154

/-!
# A189155: Number of nX3 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189155, the canonical program `A189155.P15027599354572143011` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189155 has offset 1).

The definition of A189155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189155.P15027599354572143011

`A008937(n+2)^3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189155

/-- `A008937(n+2)^3` -/
def P15027599354572143011.Spec : Prop :=
  ∀ n, P15027599354572143011.a n = A189155 (n + 1)

theorem P15027599354572143011.correct : P15027599354572143011.Spec := by
  intro n
  simp only [A189155, Nat.add_sub_cancel]

end A189155

/-! ## A189155.P11658214119874766764

`sqrt(A189154(n+1))^3`
-/

namespace A189155.P11658214119874766764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189154 (n + 1) : ℝ) ^ 3

end

end A189155.P11658214119874766764

namespace A189155

/-- `sqrt(A189154(n+1))^3` -/
def P11658214119874766764.Spec : Prop :=
  ∀ n, P11658214119874766764.a n = (A189155 (n + 1) : ℝ)

end A189155

/-! ## A189155.P8013101667652461099

`Δ[A062544(n+1)]^3`
-/

namespace A189155.P8013101667652461099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A189155.P8013101667652461099

namespace A189155

/-- `Δ[A062544(n+1)]^3` -/
def P8013101667652461099.Spec : Prop :=
  ∀ n, P8013101667652461099.a n = A189155 (n + 1)

end A189155

/-! ## A189155.P15437751560741154714

`Δ[A007800(n+2)]^3`
-/

namespace A189155.P15437751560741154714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A189155.P15437751560741154714

namespace A189155

/-- `Δ[A007800(n+2)]^3` -/
def P15437751560741154714.Spec : Prop :=
  ∀ n, P15437751560741154714.a n = A189155 (n + 1)

end A189155

/-! ## A189155.P7935602274232397031

`(A027084(n+2)+1)^3`
-/

namespace A189155.P7935602274232397031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027084 (n + 2) + 1) ^ 3

end

end A189155.P7935602274232397031

namespace A189155

/-- `(A027084(n+2)+1)^3` -/
def P7935602274232397031.Spec : Prop :=
  ∀ n, P7935602274232397031.a n = A189155 (n + 1)

end A189155

/-! ## A189155.P3510926683407977030

`(A054668(n+3)/2)^3`
-/

namespace A189155.P3510926683407977030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054668 (n + 3) : ℚ) / 2) ^ 3

end

end A189155.P3510926683407977030

namespace A189155

/-- `(A054668(n+3)/2)^3` -/
def P3510926683407977030.Spec : Prop :=
  ∀ n, P3510926683407977030.a n = (A189155 (n + 1) : ℚ)

end A189155

/-! ## A189155.P14146321044721347653

`A118884(A001972(n))^3`
-/

namespace A189155.P14146321044721347653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118884 (A001972 n).toNat ^ 3

end

end A189155.P14146321044721347653

namespace A189155

/-- `A118884(A001972(n))^3` -/
def P14146321044721347653.Spec : Prop :=
  ∀ n, P14146321044721347653.a n = A189155 (n + 1)

end A189155

/-! ## A189155.P14709768222140521059

`A008937(n+2)*A189154(n+1)`
-/

namespace A189155.P14709768222140521059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 2) * A189154 (n + 1)

end

end A189155.P14709768222140521059

namespace A189155

/-- `A008937(n+2)*A189154(n+1)` -/
def P14709768222140521059.Spec : Prop :=
  ∀ n, P14709768222140521059.a n = A189155 (n + 1)

end A189155

/-!
# A189156: Number of nX4 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189156, there is no canonical definition to state claims against.
-/

/-! ## A189156.P10325293007528148493

`A189161(A374004(n+1))`
-/

namespace A189156.P10325293007528148493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A374004 (n + 1)).toNat

end

end A189156.P10325293007528148493

/-! ## A189156.P8082926681816488332

`A189161(A141214(n)+7)`
-/

namespace A189156.P8082926681816488332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A141214 n + 7).toNat

end

end A189156.P8082926681816488332

/-! ## A189156.P1179576162054335619

`A189161(A052905(n)+9)`
-/

namespace A189156.P1179576162054335619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A052905 n + 9).toNat

end

end A189156.P1179576162054335619

/-! ## A189156.P6958467514275078127

`A189161(A167614(n+2)+1)`
-/

namespace A189156.P6958467514275078127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A167614 (n + 2) + 1).toNat

end

end A189156.P6958467514275078127

/-! ## A189156.P4357009138860309833

`A189161(A166136(n+2)-2)`
-/

namespace A189156.P4357009138860309833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A166136 (n + 2) - 2).toNat

end

end A189156.P4357009138860309833

/-!
# A189157: Number of n X 5 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189157, there is no canonical definition to state claims against.
-/

/-! ## A189157.P8624851617458941212

`A189161(A374005(n+1))`
-/

namespace A189157.P8624851617458941212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A374005 (n + 1)).toNat

end

end A189157.P8624851617458941212

/-! ## A189157.P2481816358780714884

`A189161(A167499(n+3))`
-/

namespace A189157.P2481816358780714884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A167499 (n + 3)).toNat

end

end A189157.P2481816358780714884

/-! ## A189157.P17823700872016256486

`A189161(A155212(n)+13)`
-/

namespace A189157.P17823700872016256486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A155212 n + 13).toNat

end

end A189157.P17823700872016256486

/-! ## A189157.P4151378169177138613

`A189161(eq[6, A131818(n+1)])`
-/

namespace A189157.P4151378169177138613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189157.P4151378169177138613

/-! ## A189157.P16998987402100718749

`A189161(Δ[A264443(n)])`
-/

namespace A189157.P16998987402100718749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (f1 (n + 1) - f1 n).toNat

end

end A189157.P16998987402100718749

/-!
# A189158: Number of nX6 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189158, there is no canonical definition to state claims against.
-/

/-! ## A189158.P14596343625775567283

`A189161(A374007(n+1))`
-/

namespace A189158.P14596343625775567283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A374007 (n + 1)).toNat

end

end A189158.P14596343625775567283

/-! ## A189158.P15484395224140225854

`A189161(A166136(n+4))`
-/

namespace A189158.P15484395224140225854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A166136 (n + 4)).toNat

end

end A189158.P15484395224140225854

/-! ## A189158.P10654138605192165886

`A189161(eq[7, A131818(n+1)])`
-/

namespace A189158.P10654138605192165886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189158.P10654138605192165886

/-! ## A189158.P8303432519151421826

`A189161(eq[3, A219347(n)])`
-/

namespace A189158.P8303432519151421826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189158.P8303432519151421826

/-! ## A189158.P11422702325596638807

`A189161(eq[5, A193592(n)])`
-/

namespace A189158.P11422702325596638807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189158.P11422702325596638807

/-!
# A189159: Number of nX7 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189159, there is no canonical definition to state claims against.
-/

/-! ## A189159.P14383168174260670273

`A189161(A374008(n+1))`
-/

namespace A189159.P14383168174260670273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A374008 (n + 1)).toNat

end

end A189159.P14383168174260670273

/-! ## A189159.P15416317374362990051

`A189161(eq[8, A131818(n+1)])`
-/

namespace A189159.P15416317374362990051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189159.P15416317374362990051

/-! ## A189159.P13250295351179722417

`A189161(eq[4, A219347(n)])`
-/

namespace A189159.P13250295351179722417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189159.P13250295351179722417

/-! ## A189159.P10007781695605093006

`A189161(eq[6, A193592(n)])`
-/

namespace A189159.P10007781695605093006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189159.P10007781695605093006

/-! ## A189159.P6239905213988505444

`A189161(eq[7, A200370(n+1)])`
-/

namespace A189159.P6239905213988505444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189159.P6239905213988505444

/-!
# A189160: Number of nX8 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189160, there is no canonical definition to state claims against.
-/

/-! ## A189160.P16981209200109755889

`A189161(A374009(n+1))`
-/

namespace A189160.P16981209200109755889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (A374009 (n + 1)).toNat

end

end A189160.P16981209200109755889

/-! ## A189160.P17232741709744205633

`A189161(eq[13, A066657(n)])`
-/

namespace A189160.P17232741709744205633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189160.P17232741709744205633

/-! ## A189160.P3091353103227357251

`A189161(eq[9, A131818(n+1)])`
-/

namespace A189160.P3091353103227357251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189160.P3091353103227357251

/-! ## A189160.P8210239018314560852

`A189161(eq[5, A219347(n)])`
-/

namespace A189160.P8210239018314560852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189160.P8210239018314560852

/-! ## A189160.P6629864249903516579

`A189161(eq[7, A193592(n)])`
-/

namespace A189160.P6629864249903516579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189160.P6629864249903516579

/-!
# A189161: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

The programs for A189161, there is no canonical definition to state claims against.
-/

/-! ## A189161.P5856440245840459138

`A189779(n+1)-A186746(A035695(n+1)²)`
-/

namespace A189161.P5856440245840459138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (n + 1) - A186746 (A035695 (n + 1) ^ 2).toNat

end

end A189161.P5856440245840459138

/-!
# A189162: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 1 to n, and each number in a higher row is the sum of the two numbers directly below it.

The programs for A189162, the canonical program `A189162.P11362982788040175534` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189162 has offset 1).

The definition of A189162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189390, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189162.P11362982788040175534

`2^n+A189390(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A189162

/-- `2^n+A189390(n)` -/
def P11362982788040175534.Spec : Prop :=
  ∀ n, P11362982788040175534.a n = A189162 (n + 1)

theorem P11362982788040175534.correct : P11362982788040175534.Spec := by
  intro n
  simp only [A189162, Nat.add_sub_cancel]

end A189162

/-! ## A189162.P9403461465680936043

`A182555(n)+A001787(n)`
-/

namespace A189162.P9403461465680936043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n + A001787 n

end

end A189162.P9403461465680936043

namespace A189162

/-- `A182555(n)+A001787(n)` -/
def P9403461465680936043.Spec : Prop :=
  ∀ n, P9403461465680936043.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P14168326655366896038

`A206603(n)+A001792(n)`
-/

namespace A189162.P14168326655366896038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A001792 n

end

end A189162.P14168326655366896038

namespace A189162

/-- `A206603(n)+A001792(n)` -/
def P14168326655366896038.Spec : Prop :=
  ∀ n, P14168326655366896038.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P6967938616800407065

`A245560(n)+A130783(n)`
-/

namespace A189162.P6967938616800407065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245560 n + A130783 n

end

end A189162.P6967938616800407065

namespace A189162

/-- `A245560(n)+A130783(n)` -/
def P6967938616800407065.Spec : Prop :=
  ∀ n, P6967938616800407065.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P11030023509472599454

`∑[A001792(n)]-A189391(n)`
-/

namespace A189162.P11030023509472599454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189391 n

end

end A189162.P11030023509472599454

namespace A189162

/-- `∑[A001792(n)]-A189391(n)` -/
def P11030023509472599454.Spec : Prop :=
  ∀ n, P11030023509472599454.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P16935349000251535416

`A000051(n)+A189390(n)-1`
-/

namespace A189162.P16935349000251535416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A189390 n - 1)

end

end A189162.P16935349000251535416

namespace A189162

/-- `A000051(n)+A189390(n)-1` -/
def P16935349000251535416.Spec : Prop :=
  ∀ n, P16935349000251535416.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P10785903197233701721

`A000918(n)+A189390(n)+2`
-/

namespace A189162.P10785903197233701721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (A189390 n + 2)

end

end A189162.P10785903197233701721

namespace A189162

/-- `A000918(n)+A189390(n)+2` -/
def P10785903197233701721.Spec : Prop :=
  ∀ n, P10785903197233701721.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P425999033459200432

`A001787(n+1)-A189391(n)`
-/

namespace A189162.P425999033459200432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A189391 n

end

end A189162.P425999033459200432

namespace A189162

/-- `A001787(n+1)-A189391(n)` -/
def P425999033459200432.Spec : Prop :=
  ∀ n, P425999033459200432.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P914540848595131972

`A206603(n)+A049610(n+2)`
-/

namespace A189162.P914540848595131972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A049610 (n + 2)

end

end A189162.P914540848595131972

namespace A189162

/-- `A206603(n)+A049610(n+2)` -/
def P914540848595131972.Spec : Prop :=
  ∀ n, P914540848595131972.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P14951940850877004432

`A066373(n+2)-A099326(n)`
-/

namespace A189162.P14951940850877004432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066373 (n + 2) - A099326 n

end

end A189162.P14951940850877004432

namespace A189162

/-- `A066373(n+2)-A099326(n)` -/
def P14951940850877004432.Spec : Prop :=
  ∀ n, P14951940850877004432.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P10310246278979581324

`A027306(n)+2*A130783(n)`
-/

namespace A189162.P10310246278979581324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + 2 * A130783 n

end

end A189162.P10310246278979581324

namespace A189162

/-- `A027306(n)+2*A130783(n)` -/
def P10310246278979581324.Spec : Prop :=
  ∀ n, P10310246278979581324.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P13503350027011527019

`A099325(n)+2*A206603(n)`
-/

namespace A189162.P13503350027011527019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + 2 * A206603 n

end

end A189162.P13503350027011527019

namespace A189162

/-- `A099325(n)+2*A206603(n)` -/
def P13503350027011527019.Spec : Prop :=
  ∀ n, P13503350027011527019.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P13307655969548677263

`2*A001792(n)-A099325(n)`
-/

namespace A189162.P13307655969548677263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001792 n - A099325 n

end

end A189162.P13307655969548677263

namespace A189162

/-- `2*A001792(n)-A099325(n)` -/
def P13307655969548677263.Spec : Prop :=
  ∀ n, P13307655969548677263.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P16358786415962841882

`A117186(n)+n*A045621(n)`
-/

namespace A189162.P16358786415962841882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 n + (n : ℤ) * A045621 n

end

end A189162.P16358786415962841882

namespace A189162

/-- `A117186(n)+n*A045621(n)` -/
def P16358786415962841882.Spec : Prop :=
  ∀ n, P16358786415962841882.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P1564346476022159586

`A000079(n)+A206603(n)+A001787(n)`
-/

namespace A189162.P1564346476022159586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A206603 n + A001787 n)

end

end A189162.P1564346476022159586

namespace A189162

/-- `A000079(n)+A206603(n)+A001787(n)` -/
def P1564346476022159586.Spec : Prop :=
  ∀ n, P1564346476022159586.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P6376096570509589720

`A099325(n)+A189390(n)-A189391(n)`
-/

namespace A189162.P6376096570509589720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + (A189390 n - A189391 n)

end

end A189162.P6376096570509589720

namespace A189162

/-- `A099325(n)+A189390(n)-A189391(n)` -/
def P6376096570509589720.Spec : Prop :=
  ∀ n, P6376096570509589720.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P3800406825339736387

`A001787(n+1)+A206603(n)-A001787(n)`
-/

namespace A189162.P3800406825339736387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A206603 n - A001787 n)

end

end A189162.P3800406825339736387

namespace A189162

/-- `A001787(n+1)+A206603(n)-A001787(n)` -/
def P3800406825339736387.Spec : Prop :=
  ∀ n, P3800406825339736387.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P4506885534331930512

`A336102(n+1)+A336103(n+1)+A189390(n)`
-/

namespace A189162.P4506885534331930512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (n + 1) + (A336103 (n + 1) + A189390 n)

end

end A189162.P4506885534331930512

namespace A189162

/-- `A336102(n+1)+A336103(n+1)+A189390(n)` -/
def P4506885534331930512.Spec : Prop :=
  ∀ n, P4506885534331930512.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P11445177164783561662

`A001792(n+1)-(A189391(n)+A000079(n+1))`
-/

namespace A189162.P11445177164783561662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - (A189391 n + A000079 (n + 1))

end

end A189162.P11445177164783561662

namespace A189162

/-- `A001792(n+1)-(A189391(n)+A000079(n+1))` -/
def P11445177164783561662.Spec : Prop :=
  ∀ n, P11445177164783561662.a n = A189162 (n + 1)

end A189162

/-! ## A189162.P2930656234431725101

`A099326(n+1)-(A189391(n)+A099325(n+1))`
-/

namespace A189162.P2930656234431725101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 (n + 1) - (A189391 n + A099325 (n + 1))

end

end A189162.P2930656234431725101

namespace A189162

/-- `A099326(n+1)-(A189391(n)+A099325(n+1))` -/
def P2930656234431725101.Spec : Prop :=
  ∀ n, P2930656234431725101.a n = A189162 (n + 1)

end A189162

/-!
# A189163: Zero-one sequence based on the sequence n(n+1): a(A002378(k))=a(k); a(A078358(k))=1-a(k), a(1)=0.

The programs for A189163, there is no canonical definition to state claims against.
-/

/-! ## A189163.P16389233719292141520

`char[A189165(n+1)-1]`
-/

namespace A189163.P16389233719292141520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189165 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189163.P16389233719292141520

/-! ## A189163.P13912177492984542908

`1-char[A189164(n+1)-1]`
-/

namespace A189163.P13912177492984542908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189164 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189163.P13912177492984542908

/-! ## A189163.P11317262074954050146

`char[A260196(n+2)+A189165(n+1)]`
-/

namespace A189163.P11317262074954050146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A189165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189163.P11317262074954050146

/-! ## A189163.P2954151289864604172

`A286490(A129001(n+1)+A004277(n))`
-/

namespace A189163.P2954151289864604172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (A129001 (n + 1) + A004277 n).toNat

end

end A189163.P2954151289864604172

/-! ## A189163.P16568628886574656990

`A039966(A185317(n+4)*A270920(2*n+3))`
-/

namespace A189163.P16568628886574656990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A185317 (n + 4) * A270920 (2 * n + 3)).toNat

end

end A189163.P16568628886574656990

/-!
# A189164: Positions of 0 in A189163; complement of A189165.

The programs for A189164, there is no canonical definition to state claims against.
-/

/-! ## A189164.P11936776524846426158

`eq[0, A189163(n+1)]+1`
-/

namespace A189164.P11936776524846426158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189164.P11936776524846426158

/-! ## A189164.P9106213697890308649

`eq[0, A189163(A028310(n))]`
-/

namespace A189164.P9106213697890308649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189164.P9106213697890308649

/-! ## A189164.P7503906896815370782

`A000720(p?[A189163(n+2)+A000040(n+2)])`
-/

namespace A189164.P7503906896815370782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189164.P7503906896815370782

/-! ## A189164.P10784158642340140569

`eq[0, A189163(A123108(2*n))]`
-/

namespace A189164.P10784158642340140569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189164.P10784158642340140569

/-! ## A189164.P10668991022752682601

`eq[0, A189163(A233583(n+1))]`
-/

namespace A189164.P10668991022752682601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189164.P10668991022752682601

/-! ## A189164.P7632295852011153543

`eq[0, A189163(A137734(n²))]`
-/

namespace A189164.P7632295852011153543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (A137734 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189164.P7632295852011153543

/-! ## A189164.P7609145764735576567

`eq[0, A189163(A137735(n²))]`
-/

namespace A189164.P7609145764735576567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189164.P7609145764735576567

/-!
# A189165: Positions of 1 in A189163; complement of A189164.

The programs for A189165, there is no canonical definition to state claims against.
-/

/-! ## A189165.P17776007371099103296

`comp[A189164(n+1)-1]+1`
-/

namespace A189165.P17776007371099103296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189165.P17776007371099103296

/-! ## A189165.P15058683853292526112

`filter[n+1, A189163(#)]`
-/

namespace A189165.P15058683853292526112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189163 (f1 j) = 1) n)

end

end A189165.P15058683853292526112

/-! ## A189165.P14466550514879618660

`eq[1, A189163(n+1)]+1`
-/

namespace A189165.P14466550514879618660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189165.P14466550514879618660

/-! ## A189165.P1057416035422547251

`record[A000027(n+1)*A189163(n+1)]`
-/

namespace A189165.P1057416035422547251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189165.P1057416035422547251

/-! ## A189165.P5047738170023517463

`eq[n, A028310(n)*A189163(A028310(n))]`
-/

namespace A189165.P5047738170023517463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A189163 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189165.P5047738170023517463

/-! ## A189165.P12753369211933352830

`A000720(p?[A000040(n+1)*A189163(n+1)])`
-/

namespace A189165.P12753369211933352830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189165.P12753369211933352830

/-! ## A189165.P8549918770495345418

`record[A039960(n)*A189163(A039960(n))]`
-/

namespace A189165.P8549918770495345418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 n * A189163 (A039960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189165.P8549918770495345418

/-! ## A189165.P13403632224654571099

`record[A008619(n)*A189163(A008619(n))]`
-/

namespace A189165.P13403632224654571099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A189163 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189165.P13403632224654571099

/-! ## A189165.P5512574918020692710

`record[A008611(n)*A189163(A008620(n))]`
-/

namespace A189165.P5512574918020692710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189163 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189165.P5512574918020692710

/-!
# A189166: Zero-one sequence based on the sequence n(n+2): a(A005563(k))=a(k); a(A183299(k))=1-a(k), a(1)=1, a(2)=1.

The programs for A189166, there is no canonical definition to state claims against.
-/

/-! ## A189166.P1925298959399406143

`char[A189168(n+1)-1]`
-/

namespace A189166.P1925298959399406143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189168 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189166.P1925298959399406143

/-! ## A189166.P288708806824407429

`char[comp[A189167(n+1)-1]]`
-/

namespace A189166.P288708806824407429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189167 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189166.P288708806824407429

/-! ## A189166.P5998824497640639304

`char[A023443(A189168(n+1))]`
-/

namespace A189166.P5998824497640639304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189168 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189166.P5998824497640639304

/-! ## A189166.P17171272317221430194

`char[A023443(comp[A189167(n+1)])]`
-/

namespace A189166.P17171272317221430194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189167 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189166.P17171272317221430194

/-! ## A189166.P5192276737344298831

`A090996(Δ[comp[A189168(n+1)+n]-n])`
-/

namespace A189166.P5192276737344298831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189168 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (f1 (n + 1) - f1 n).toNat

end

end A189166.P5192276737344298831

/-!
# A189167: Positions of 0 in A189166; complement of A189168.

The programs for A189167, there is no canonical definition to state claims against.
-/

/-! ## A189167.P5227314114460972509

`eq[0, A189166(n+1)]+1`
-/

namespace A189167.P5227314114460972509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189167.P5227314114460972509

/-! ## A189167.P11978464549935908175

`eq[0, A189166(A028310(n))]`
-/

namespace A189167.P11978464549935908175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189166 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189167.P11978464549935908175

/-! ## A189167.P14903536687051218859

`eq[0, A189166(A000038(n)+n)]`
-/

namespace A189167.P14903536687051218859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189166 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189167.P14903536687051218859

/-! ## A189167.P11178818249427225337

`A055396(p?[A189166(n+2)+A000040(n+2)])`
-/

namespace A189167.P11178818249427225337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189166 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189167.P11178818249427225337

/-! ## A189167.P6101558926614238507

`eq[0, A189166(A233583(n+1))]`
-/

namespace A189167.P6101558926614238507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189166 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189167.P6101558926614238507

/-! ## A189167.P13129081369483946151

`eq[0, A189166(A003056(A000124(n)))]`
-/

namespace A189167.P13129081369483946151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189166 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189167.P13129081369483946151

/-!
# A189168: Positions of 1 in A189166; complement of A189167.

The programs for A189168, there is no canonical definition to state claims against.
-/

/-! ## A189168.P12246554219139902801

`comp[A189167(n+1)-1]+1`
-/

namespace A189168.P12246554219139902801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189167 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189168.P12246554219139902801

/-! ## A189168.P5546284680153958345

`filter[n+1, A189166(#)]`
-/

namespace A189168.P5546284680153958345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189166 (f1 j) = 1) n)

end

end A189168.P5546284680153958345

/-! ## A189168.P10711078063348134948

`eq[1, A189166(n+1)]+1`
-/

namespace A189168.P10711078063348134948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189168.P10711078063348134948

/-! ## A189168.P14608426659315035686

`record[A000027(n+1)*A189166(n+1)]`
-/

namespace A189168.P14608426659315035686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P14608426659315035686

/-! ## A189168.P11447343165808750673

`record[A005843(n)*A189166(n+1)+1-n]`
-/

namespace A189168.P11447343165808750673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A189166 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P11447343165808750673

/-! ## A189168.P18326130662692650212

`eq[n, A028310(n)*A189166(A028310(n))]`
-/

namespace A189168.P18326130662692650212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A189166 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189168.P18326130662692650212

/-! ## A189168.P15529018949347756200

`record[A064317(n)*A189166(A064317(n))]`
-/

namespace A189168.P15529018949347756200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 n * A189166 (A064317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P15529018949347756200

/-! ## A189168.P16155144888591288546

`record[A020915(n)*A189166(A020915(n))]`
-/

namespace A189168.P16155144888591288546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A189166 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P16155144888591288546

/-! ## A189168.P6226313246902437170

`record[A008619(n)*A189166(A008619(n))]`
-/

namespace A189168.P6226313246902437170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A189166 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P6226313246902437170

/-! ## A189168.P12652759811404249368

`record[A080513(n)*A189166(A080513(n))]`
-/

namespace A189168.P12652759811404249368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A189166 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P12652759811404249368

/-! ## A189168.P17840051981309440676

`A052938(record[A005843(n)*A189166(n+1)])`
-/

namespace A189168.P17840051981309440676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A189166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189168.P17840051981309440676

/-! ## A189168.P1578859535929986850

`record[A028242(2*n)*A189166(n+1)]`
-/

namespace A189168.P1578859535929986850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A189166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P1578859535929986850

/-! ## A189168.P90569029084743076

`record[A008611(3*n)*A189166(n+1)]`
-/

namespace A189168.P90569029084743076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) * A189166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P90569029084743076

/-! ## A189168.P8550026258092779174

`record[A008620(n)*A189166(A008620(n))]`
-/

namespace A189168.P8550026258092779174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A189166 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189168.P8550026258092779174

/-! ## A189168.P6886189015810233478

`A055396(p?[A000040(n+1)*A189166(n+1)])`
-/

namespace A189168.P6886189015810233478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189168.P6886189015810233478

/-!
# A189169: Zero-one sequence based on the sequence n(n+2): a(A005563(k))=a(k); a(A183299(k))=1-a(k), a(1)=1, a(2)=0.

The programs for A189169, there is no canonical definition to state claims against.
-/

/-! ## A189169.P17639357008969029627

`char[A189171(n+1)-1]`
-/

namespace A189169.P17639357008969029627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189171 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189169.P17639357008969029627

/-! ## A189169.P15310205359498648319

`char[comp[A189170(n+1)-1]]`
-/

namespace A189169.P15310205359498648319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189170 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189169.P15310205359498648319

/-! ## A189169.P17067960721277170662

`char[A199969(A189171(n+1))]`
-/

namespace A189169.P17067960721277170662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A189171 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189169.P17067960721277170662

/-! ## A189169.P1572086266297970718

`1-char[A189170(A000038(n)+n)-1]`
-/

namespace A189169.P1572086266297970718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189170 (A000038 n + (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189169.P1572086266297970718

/-! ## A189169.P12598832403720787165

`A001222(A002476(n+1))-char[A189170(n+1)-1]`
-/

namespace A189169.P12598832403720787165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189170 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189169.P12598832403720787165

/-! ## A189169.P6743982452717052803

`A007318(∑[n])-char[A189170(n+1)-1]`
-/

namespace A189169.P6743982452717052803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189170 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189169.P6743982452717052803

/-! ## A189169.P13004782689241387659

`A014963(A000217(n+6))-char[A189170(n+1)-1]`
-/

namespace A189169.P13004782689241387659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189170 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189169.P13004782689241387659

/-!
# A189170: Positions of 0 in A189169; complement of A189171.

The programs for A189170, there is no canonical definition to state claims against.
-/

/-! ## A189170.P14792646428544763339

`eq[0, A189169(n+1)]+1`
-/

namespace A189170.P14792646428544763339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189170.P14792646428544763339

/-! ## A189170.P8012446669328024840

`eq[0, A189169(A028310(n))]`
-/

namespace A189170.P8012446669328024840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189169 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189170.P8012446669328024840

/-! ## A189170.P4195211361799087202

`A020725(eq[0, A189169(n+1)])`
-/

namespace A189170.P4195211361799087202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189170.P4195211361799087202

/-! ## A189170.P17968689385502832876

`A020725(lt[A189169(n+1), 1])`
-/

namespace A189170.P17968689385502832876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A189170.P17968689385502832876

/-! ## A189170.P3305390197207823246

`eq[0, A189169(A000007(n)+n)]`
-/

namespace A189170.P3305390197207823246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189169 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189170.P3305390197207823246

/-! ## A189170.P6508348693810219803

`record[A061395(A189169(n+1)+A000040(n+1))]`
-/

namespace A189170.P6508348693810219803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A189169 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189170.P6508348693810219803

/-!
# A189171: Positions of 1 in A189169; complement of A189170.

The programs for A189171, there is no canonical definition to state claims against.
-/

/-! ## A189171.P17109063071903305960

`comp[A189170(n+1)-1]+1`
-/

namespace A189171.P17109063071903305960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189170 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189171.P17109063071903305960

/-! ## A189171.P12991361548201693184

`filter[n+1, A189169(#)]`
-/

namespace A189171.P12991361548201693184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189169 (f1 j) = 1) n)

end

end A189171.P12991361548201693184

/-! ## A189171.P14039267630935313403

`eq[1, A189169(n+1)]+1`
-/

namespace A189171.P14039267630935313403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189171.P14039267630935313403

/-! ## A189171.P5944860925336545595

`record[A000027(n+1)*A189169(n+1)]`
-/

namespace A189171.P5944860925336545595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189171.P5944860925336545595

/-! ## A189171.P15527310725455402837

`lt[A000038(n), A189169(A028310(n))]`
-/

namespace A189171.P15527310725455402837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189169 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189171.P15527310725455402837

/-! ## A189171.P4856763383623550527

`A061395(record[A000040(n+1)*A189169(n+1)])`
-/

namespace A189171.P4856763383623550527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189171.P4856763383623550527

/-! ## A189171.P17778588013448319242

`record[A061395(n+2)*A189169(A061395(n+2))]`
-/

namespace A189171.P17778588013448319242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) * A189169 (A061395 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189171.P17778588013448319242

/-! ## A189171.P14957374869686813204

`record[A008619(n)*A189169(A008619(n))]`
-/

namespace A189171.P14957374869686813204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A189169 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189171.P14957374869686813204

/-! ## A189171.P16403690457101935431

`record[A065033(n)*A189169(A065033(n))]`
-/

namespace A189171.P16403690457101935431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189169 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189171.P16403690457101935431

/-! ## A189171.P8898788188052160311

`record[A008611(n)*A189169(A008620(n))]`
-/

namespace A189171.P8898788188052160311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189169 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189171.P8898788188052160311

/-!
# A189172: Largest prime number tried when factoring n using trial division.

The programs for A189172, there is no canonical definition to state claims against.
-/

/-! ## A189172.P5191929281622199882

`A001221(A098419(n+1)+A007955(n+1))`
-/

namespace A189172.P5191929281622199882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098419 (n + 1) + A007955 (n + 1)).toNat

end

end A189172.P5191929281622199882

/-! ## A189172.P4565014094896360020

`A237442(A042968(n+1)*A323649(n+1))`
-/

namespace A189172.P4565014094896360020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A042968 (n + 1) * A323649 (n + 1)).toNat

end

end A189172.P4565014094896360020

/-! ## A189172.P8626845618488164872

`A237442(lcm(A042968(n+1), A323649(n+1)))`
-/

namespace A189172.P8626845618488164872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (Int.lcm (A042968 (n + 1)) (A323649 (n + 1)))

end

end A189172.P8626845618488164872

/-! ## A189172.P6641256690473986674

`A257990(A127217((n+1)²-n²))+1`
-/

namespace A189172.P6641256690473986674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A127217 ((n + 1) ^ 2 - n ^ 2)).toNat + 1

end

end A189172.P6641256690473986674

/-! ## A189172.P263819136987781328

`A165035(A109909(n+1)²²)`
-/

namespace A189172.P263819136987781328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165035 ((A109909 (n + 1) ^ 2) ^ 2).toNat

end

end A189172.P263819136987781328

/-!
# A189173: Integers m such that m^3 is the sum of squares of m consecutive integers.

The programs for A189173, the canonical program `A189173.P9178504102890386374` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189173 has offset 1).

The definition of A189173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189173.P9178504102890386374

`46*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=47`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A189173

/-- `46*a(n-1)-a(n-2)` -/
def P9178504102890386374.Spec : Prop :=
  ∀ n, P9178504102890386374.a n = A189173 (n + 1)

theorem P9178504102890386374.correct : P9178504102890386374.Spec := by
  intro n
  simp only [A189173, Nat.add_sub_cancel]

end A189173

/-! ## A189173.P7972112860039633969

`record[A041055(n)%A000034(n)*A041055(n)]`
-/

namespace A189173.P7972112860039633969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041055 n) (A000034 n) * A041055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189173.P7972112860039633969

namespace A189173

/-- `record[A041055(n)%A000034(n)*A041055(n)]` -/
def P7972112860039633969.Spec : Prop :=
  ∀ n, P7972112860039633969.a n = A189173 (n + 1)

end A189173

/-! ## A189173.P14656869560321400676

`A041240(2*n)%A041055(4*n)`
-/

namespace A189173.P14656869560321400676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041240 (2 * n)) (A041055 (4 * n))

end

end A189173.P14656869560321400676

namespace A189173

/-- `A041240(2*n)%A041055(4*n)` -/
def P14656869560321400676.Spec : Prop :=
  ∀ n, P14656869560321400676.a n = A189173 (n + 1)

end A189173

/-! ## A189173.P1320196223166745760

`record[A037740(n+1)%2*A041055(n)]`
-/

namespace A189173.P1320196223166745760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037740 (n + 1)) 2 * A041055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189173.P1320196223166745760

namespace A189173

/-- `record[A037740(n+1)%2*A041055(n)]` -/
def P1320196223166745760.Spec : Prop :=
  ∀ n, P1320196223166745760.a n = A189173 (n + 1)

end A189173

/-!
# A189175: Riordan matrix (1+x/sqrt(1-4*x),(1-sqrt(1-4*x))/2).

The programs for A189175, there is no canonical definition to state claims against.
-/

/-! ## A189175.P16731836413800337375

`A349727(n)+A059365(n+1)`
-/

namespace A189175.P16731836413800337375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 n + A059365 (n + 1)

end

end A189175.P16731836413800337375

/-! ## A189175.P11308023628628225765

`A349727(n)+A106566(n+1)`
-/

namespace A189175.P11308023628628225765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 n + A106566 (n + 1)

end

end A189175.P11308023628628225765

/-! ## A189175.P8882714187902085899

`A106566(n)+A100100(n+1)%A318107(n)`
-/

namespace A189175.P8882714187902085899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n + Int.tmod (A100100 (n + 1)) (A318107 n)

end

end A189175.P8882714187902085899

/-! ## A189175.P14556107980532477561

`A117333(A171486(n))`
-/

namespace A189175.P14556107980532477561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A171486 n).toNat

end

end A189175.P14556107980532477561

/-! ## A189175.P16276853203650260990

`A366186(A174302(n))`
-/

namespace A189175.P16276853203650260990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366186 (A174302 n).toNat

end

end A189175.P16276853203650260990

/-!
# A189176: Row sums of the Riordan matrix (1+x/sqrt(1-4*x),(1-sqrt(1-4*x))/2) (A189175).

The programs for A189176, the canonical program `A189176.P2914353405765729826` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189176 has offset 0).

The definition of A189176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189176.P2914353405765729826

`floor((n+3)/2*A000108(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189176

/-- `floor((n+3)/2*A000108(n))` -/
def P2914353405765729826.Spec : Prop :=
  ∀ n, P2914353405765729826.a n = A189176 n

theorem P2914353405765729826.correct : P2914353405765729826.Spec := by
  intro n
  simp only [A189176]

end A189176

/-! ## A189176.P4168694377955940377

`floor((n+3)*A057977(2*n)/2)`
-/

namespace A189176.P4168694377955940377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) * ((A057977 (2 * n) : ℚ) / 2)⌋

end

end A189176.P4168694377955940377

namespace A189176

/-- `floor((n+3)*A057977(2*n)/2)` -/
def P4168694377955940377.Spec : Prop :=
  ∀ n, P4168694377955940377.a n = A189176 n

end A189176

/-! ## A189176.P6606437945669606447

`floor((n+3)*A126120(2*n)/2)`
-/

namespace A189176.P6606437945669606447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) * ((A126120 (2 * n) : ℚ) / 2)⌋

end

end A189176.P6606437945669606447

namespace A189176

/-- `floor((n+3)*A126120(2*n)/2)` -/
def P6606437945669606447.Spec : Prop :=
  ∀ n, P6606437945669606447.a n = A189176 n

end A189176

/-! ## A189176.P14623858549996040554

`A125107(n)+A005317(n)`
-/

namespace A189176.P14623858549996040554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125107 n + A005317 n

end

end A189176.P14623858549996040554

namespace A189176

/-- `A125107(n)+A005317(n)` -/
def P14623858549996040554.Spec : Prop :=
  ∀ n, P14623858549996040554.a n = A189176 n

end A189176

/-! ## A189176.P14727225223092475320

`A029651(n)-A001791(n)`
-/

namespace A189176.P14727225223092475320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A001791 n

end

end A189176.P14727225223092475320

namespace A189176

/-- `A029651(n)-A001791(n)` -/
def P14727225223092475320.Spec : Prop :=
  ∀ n, P14727225223092475320.a n = A189176 n

end A189176

/-! ## A189176.P996588726662266574

`A024718(n)-A371963(n)`
-/

namespace A189176.P996588726662266574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - A371963 n

end

end A189176.P996588726662266574

namespace A189176

/-- `A024718(n)-A371963(n)` -/
def P996588726662266574.Spec : Prop :=
  ∀ n, P996588726662266574.a n = A189176 n

end A189176

/-! ## A189176.P15940982472313735182

`A000108(n)+record[A138364(n)]`
-/

namespace A189176.P15940982472313735182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189176.P15940982472313735182

namespace A189176

/-- `A000108(n)+record[A138364(n)]` -/
def P15940982472313735182.Spec : Prop :=
  ∀ n, P15940982472313735182.a n = A189176 n

end A189176

/-! ## A189176.P3368662455835292326

`record[A208355(n)+A138364(n)]`
-/

namespace A189176.P3368662455835292326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n + A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189176.P3368662455835292326

namespace A189176

/-- `record[A208355(n)+A138364(n)]` -/
def P3368662455835292326.Spec : Prop :=
  ∀ n, P3368662455835292326.a n = A189176 n

end A189176

/-! ## A189176.P9268428934129105295

`A050168(2*n)-A001791(n)`
-/

namespace A189176.P9268428934129105295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n) - A001791 n

end

end A189176.P9268428934129105295

namespace A189176

/-- `A050168(2*n)-A001791(n)` -/
def P9268428934129105295.Spec : Prop :=
  ∀ n, P9268428934129105295.a n = A189176 n

end A189176

/-! ## A189176.P9909990634139819317

`A029651(n)-A037955(2*n)`
-/

namespace A189176.P9909990634139819317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A037955 (2 * n)

end

end A189176.P9909990634139819317

namespace A189176

/-- `A029651(n)-A037955(2*n)` -/
def P9909990634139819317.Spec : Prop :=
  ∀ n, P9909990634139819317.a n = A189176 n

end A189176

/-! ## A189176.P14684854088321594573

`(A068875(n)+A000984(n))/2`
-/

namespace A189176.P14684854088321594573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 n + A000984 n : ℚ) / 2

end

end A189176.P14684854088321594573

namespace A189176

/-- `(A068875(n)+A000984(n))/2` -/
def P14684854088321594573.Spec : Prop :=
  ∀ n, P14684854088321594573.a n = (A189176 n : ℚ)

end A189176

/-! ## A189176.P14569951651579376073

`A029651(n)-n*A000108(n)`
-/

namespace A189176.P14569951651579376073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - (n : ℤ) * A000108 n

end

end A189176.P14569951651579376073

namespace A189176

/-- `A029651(n)-n*A000108(n)` -/
def P14569951651579376073.Spec : Prop :=
  ∀ n, P14569951651579376073.a n = A189176 n

end A189176

/-! ## A189176.P1420811946163164625

`floor(A000108(n)+A000984(n)/2)`
-/

namespace A189176.P1420811946163164625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 n : ℚ) + (A000984 n : ℚ) / 2⌋

end

end A189176.P1420811946163164625

namespace A189176

/-- `floor(A000108(n)+A000984(n)/2)` -/
def P1420811946163164625.Spec : Prop :=
  ∀ n, P1420811946163164625.a n = A189176 n

end A189176

/-! ## A189176.P4068696144811677505

`A120588(n+1)+record[A138364(n)]`
-/

namespace A189176.P4068696144811677505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189176.P4068696144811677505

namespace A189176

/-- `A120588(n+1)+record[A138364(n)]` -/
def P4068696144811677505.Spec : Prop :=
  ∀ n, P4068696144811677505.a n = A189176 n

end A189176

/-! ## A189176.P8443311747339986829

`A057977(2*n)+record[A138364(n)]`
-/

namespace A189176.P8443311747339986829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189176.P8443311747339986829

namespace A189176

/-- `A057977(2*n)+record[A138364(n)]` -/
def P8443311747339986829.Spec : Prop :=
  ∀ n, P8443311747339986829.a n = A189176 n

end A189176

/-! ## A189176.P13476467108150522843

`A126120(2*n)+record[A138364(n)]`
-/

namespace A189176.P13476467108150522843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189176.P13476467108150522843

namespace A189176

/-- `A126120(2*n)+record[A138364(n)]` -/
def P13476467108150522843.Spec : Prop :=
  ∀ n, P13476467108150522843.a n = A189176 n

end A189176

/-! ## A189176.P7085429215561498818

`record[n*A097331(n)]+A000108(n)`
-/

namespace A189176.P7085429215561498818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000108 n

end

end A189176.P7085429215561498818

namespace A189176

/-- `record[n*A097331(n)]+A000108(n)` -/
def P7085429215561498818.Spec : Prop :=
  ∀ n, P7085429215561498818.a n = A189176 n

end A189176

/-! ## A189176.P9692338321458460850

`A000984(n)-A191529(2*n+1)`
-/

namespace A189176.P9692338321458460850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A191529 (2 * n + 1)

end

end A189176.P9692338321458460850

namespace A189176

/-- `A000984(n)-A191529(2*n+1)` -/
def P9692338321458460850.Spec : Prop :=
  ∀ n, P9692338321458460850.a n = A189176 n

end A189176

/-! ## A189176.P9025301994069428820

`A050168(2*n)-A037952(2*n)`
-/

namespace A189176.P9025301994069428820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n) - A037952 (2 * n)

end

end A189176.P9025301994069428820

namespace A189176

/-- `A050168(2*n)-A037952(2*n)` -/
def P9025301994069428820.Spec : Prop :=
  ∀ n, P9025301994069428820.a n = A189176 n

end A189176

/-! ## A189176.P17358261669097903608

`A050168(2*n)-n*A000108(n)`
-/

namespace A189176.P17358261669097903608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n) - (n : ℤ) * A000108 n

end

end A189176.P17358261669097903608

namespace A189176

/-- `A050168(2*n)-n*A000108(n)` -/
def P17358261669097903608.Spec : Prop :=
  ∀ n, P17358261669097903608.a n = A189176 n

end A189176

/-!
# A189177: Diagonal sums of the Riordan matrix (1+x/sqrt(1-4*x),(1-sqrt(1-4*x))/2) (A189175).

The programs for A189177, there is no canonical definition to state claims against.
-/

/-! ## A189177.P11750286238184658660

`A270363(n)-Δ[A132364(n)]`
-/

namespace A189177.P11750286238184658660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270363 n - (f1 (n + 1) - f1 n)

end

end A189177.P11750286238184658660

/-! ## A189177.P7227301056002974324

`A023193(A150719(n))`
-/

namespace A189177.P7227301056002974324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150719 n).toNat

end

end A189177.P7227301056002974324

/-! ## A189177.P9656025169714375308

`A151444(A073788(n))`
-/

namespace A189177.P9656025169714375308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151444 (A073788 n).toNat

end

end A189177.P9656025169714375308

/-!
# A189178: Number of n X n array permutations with each element making a single king move.

The programs for A189178, there is no canonical definition to state claims against.
-/

/-! ## A189178.P680544226872229896

`A189186((n+1)²+n²)`
-/

namespace A189178.P680544226872229896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 ((n + 1) ^ 2 + n ^ 2)

end

end A189178.P680544226872229896

/-!
# A189179: Number of n X 2 array permutations with each element making a single king move.

The programs for A189179, the canonical program `A189179.P8314738962071562500` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189179 has offset 1).

The definition of A189179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189179.P8314738962071562500

`5*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=9, a(2)=33`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A189179

/-- `5*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P8314738962071562500.Spec : Prop :=
  ∀ n, P8314738962071562500.a n = A189179 (n + 1)

theorem P8314738962071562500.correct : P8314738962071562500.Spec := by
  intro n
  simp only [A189179, Nat.add_sub_cancel]

end A189179

/-! ## A189179.P9058929037655342952

`A189186(∑[n+1]+2)`
-/

namespace A189179.P9058929037655342952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A189179.P9058929037655342952

namespace A189179

/-- `A189186(∑[n+1]+2)` -/
def P9058929037655342952.Spec : Prop :=
  ∀ n, P9058929037655342952.a n = A189179 (n + 1)

end A189179

/-! ## A189179.P16192678370198128046

`A189650(∑[n+1]+2)`
-/

namespace A189179.P16192678370198128046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A189179.P16192678370198128046

namespace A189179

/-- `A189650(∑[n+1]+2)` -/
def P16192678370198128046.Spec : Prop :=
  ∀ n, P16192678370198128046.a n = A189179 (n + 1)

end A189179

/-! ## A189179.P556712421387842819

`record[ratio[or(1, A189186(n+1))]]`
-/

namespace A189179.P556712421387842819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189186 (n + 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189179.P556712421387842819

namespace A189179

/-- `record[ratio[or(1, A189186(n+1))]]` -/
def P556712421387842819.Spec : Prop :=
  ∀ n, P556712421387842819.a n = (A189179 (n + 1) : ℚ)

end A189179

/-! ## A189179.P7459706676842574586

`record[ratio[A189650(A080036(n))]]`
-/

namespace A189179.P7459706676842574586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189179.P7459706676842574586

namespace A189179

/-- `record[ratio[A189650(A080036(n))]]` -/
def P7459706676842574586.Spec : Prop :=
  ∀ n, P7459706676842574586.a n = (A189179 (n + 1) : ℚ)

end A189179

/-!
# A189180: Number of nX3 array permutations with each element making a single king move.

The programs for A189180, there is no canonical definition to state claims against.
-/

/-! ## A189180.P101719324934849049

`A189186(∑[n+2]+4)`
-/

namespace A189180.P101719324934849049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189180.P101719324934849049

/-! ## A189180.P5078169192448605425

`or(n%2, A189186(A167614(n+1)))`
-/

namespace A189180.P5078169192448605425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A189186 (A167614 (n + 1)).toNat)

end

end A189180.P5078169192448605425

/-! ## A189180.P8138711568253799343

`A178334(n)*A189186(A167614(n+1))`
-/

namespace A189180.P8138711568253799343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A189186 (A167614 (n + 1)).toNat

end

end A189180.P8138711568253799343

/-! ## A189180.P3283907210651030261

`A189186(A167614(n+1))*A278657(n)`
-/

namespace A189180.P3283907210651030261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A167614 (n + 1)).toNat * A278657 n

end

end A189180.P3283907210651030261

/-! ## A189180.P8601402884096486559

`A189186(A167614(n+1))%A298677(n)`
-/

namespace A189180.P8601402884096486559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189186 (A167614 (n + 1)).toNat) (A298677 n)

end

end A189180.P8601402884096486559

/-!
# A189181: Number of nX4 array permutations with each element making a single king move.

The programs for A189181, there is no canonical definition to state claims against.
-/

/-! ## A189181.P14951329330417976116

`A189186(A374004(n+1))`
-/

namespace A189181.P14951329330417976116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A374004 (n + 1)).toNat

end

end A189181.P14951329330417976116

/-! ## A189181.P3322056218719597312

`A189186(A141214(n)+7)`
-/

namespace A189181.P3322056218719597312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A141214 n + 7).toNat

end

end A189181.P3322056218719597312

/-! ## A189181.P5640047224312911832

`A189186(A052905(n)+9)`
-/

namespace A189181.P5640047224312911832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A052905 n + 9).toNat

end

end A189181.P5640047224312911832

/-! ## A189181.P836274702446302763

`A189186(A055999(n)+10)`
-/

namespace A189181.P836274702446302763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A055999 n + 10).toNat

end

end A189181.P836274702446302763

/-! ## A189181.P7424701365303565507

`A189186(A167614(n+2)+1)`
-/

namespace A189181.P7424701365303565507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A167614 (n + 2) + 1).toNat

end

end A189181.P7424701365303565507

/-!
# A189182: Number of nX5 array permutations with each element making a single king move.

The programs for A189182, there is no canonical definition to state claims against.
-/

/-! ## A189182.P2242044609821937947

`A189186(A374005(n+1))`
-/

namespace A189182.P2242044609821937947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A374005 (n + 1)).toNat

end

end A189182.P2242044609821937947

/-! ## A189182.P1287656891152985692

`A189186(A173036(n)+A016825(n))`
-/

namespace A189182.P1287656891152985692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A173036 n + A016825 n).toNat

end

end A189182.P1287656891152985692

/-! ## A189182.P18298627172698974762

`A189186(A046691(n+3))`
-/

namespace A189182.P18298627172698974762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A046691 (n + 3)).toNat

end

end A189182.P18298627172698974762

/-! ## A189182.P4116114485671857851

`A189186(eq[8, A140996(n)])`
-/

namespace A189182.P4116114485671857851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189182.P4116114485671857851

/-! ## A189182.P8512006728418706809

`A189186(Δ[A023545(n+1)])`
-/

namespace A189182.P8512006728418706809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (f1 (n + 1) - f1 n).toNat

end

end A189182.P8512006728418706809

/-!
# A189183: Number of nX6 array permutations with each element making a single king move.

The programs for A189183, there is no canonical definition to state claims against.
-/

/-! ## A189183.P8088146413422844388

`A189186(A374007(n+1))`
-/

namespace A189183.P8088146413422844388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A374007 (n + 1)).toNat

end

end A189183.P8088146413422844388

/-! ## A189183.P17428039650182638536

`A189186(A052905(n+3))`
-/

namespace A189183.P17428039650182638536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A052905 (n + 3)).toNat

end

end A189183.P17428039650182638536

/-! ## A189183.P6019234520844138810

`A189186(Δ[A023551(n+1)]+1)`
-/

namespace A189183.P6019234520844138810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (f1 (n + 1) - f1 n + 1).toNat

end

end A189183.P6019234520844138810

/-!
# A189184: Number of nX7 array permutations with each element making a single king move.

The programs for A189184, there is no canonical definition to state claims against.
-/

/-! ## A189184.P862994906193438590

`A189186(A374008(n+1))`
-/

namespace A189184.P862994906193438590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A374008 (n + 1)).toNat

end

end A189184.P862994906193438590

/-! ## A189184.P3685799909777168480

`A189186(A055999(n+4))`
-/

namespace A189184.P3685799909777168480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A055999 (n + 4)).toNat

end

end A189184.P3685799909777168480

/-! ## A189184.P2057757492312268443

`A189186(eq[4, A219347(n)])`
-/

namespace A189184.P2057757492312268443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189184.P2057757492312268443

/-! ## A189184.P7242463056212791301

`A189186(Δ[A023551(n+2)])`
-/

namespace A189184.P7242463056212791301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (f1 (n + 1) - f1 n).toNat

end

end A189184.P7242463056212791301

/-!
# A189185: Number of nX8 array permutations with each element making a single king move.

The programs for A189185, there is no canonical definition to state claims against.
-/

/-! ## A189185.P8854639923083985727

`A189186(A374009(n+1))`
-/

namespace A189185.P8854639923083985727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (A374009 (n + 1)).toNat

end

end A189185.P8854639923083985727

/-! ## A189185.P5958052718547334263

`A189186(Δ[A023551(n+2)]+14)`
-/

namespace A189185.P5958052718547334263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (f1 (n + 1) - f1 n + 14).toNat

end

end A189185.P5958052718547334263

/-! ## A189185.P10526276265027045270

`A189186(eq[5, A219347(n)])`
-/

namespace A189185.P10526276265027045270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189185.P10526276265027045270

/-!
# A189186: T(n,k) = Number of n X k array permutations with each element making a single king move.

The programs for A189186, there is no canonical definition to state claims against.
-/

/-! ## A189186.P830410314875715929

`and(A328544(n+1)², A288151(n+1))`
-/

namespace A189186.P830410314875715929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A328544 (n + 1) ^ 2) (A288151 (n + 1))

end

end A189186.P830410314875715929

/-! ## A189186.P8653455788586189799

`A047608(A003946(n))%A178343(n)`
-/

namespace A189186.P8653455788586189799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047608 (A003946 n).toNat) (A178343 n)

end

end A189186.P8653455788586189799

/-! ## A189186.P6864362967766301481

`A027676(A052192(n+1))%A135065(n)`
-/

namespace A189186.P6864362967766301481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027676 (A052192 (n + 1)).toNat) (A135065 n)

end

end A189186.P6864362967766301481

/-! ## A189186.P9704167481741637847

`A133472(A306360(n+1))%A178343(n)`
-/

namespace A189186.P9704167481741637847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133472 (A306360 (n + 1)).toNat) (A178343 n)

end

end A189186.P9704167481741637847

/-!
# A189187: Riordan matrix (1/(1-x-x^2-x^3),(x+x^2)/(1-x-x^2-x^3)).

The programs for A189187, there is no canonical definition to state claims against.
-/

/-! ## A189187.P2754620121976623683

`A127757(A002024(A117317(n)²))`
-/

namespace A189187.P2754620121976623683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A002024 (A117317 n ^ 2).toNat).toNat

end

end A189187.P2754620121976623683

/-!
# A189189: Number of n X n binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189189, there is no canonical definition to state claims against.
-/

/-! ## A189189.P1256798290880570517

`A189196((n+1)²+n²)`
-/

namespace A189189.P1256798290880570517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 ((n + 1) ^ 2 + n ^ 2)

end

end A189189.P1256798290880570517

/-! ## A189189.P10928983614603517881

`record[gcd(A049581(n), A189196(n+1))]`
-/

namespace A189189.P10928983614603517881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A189196 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189189.P10928983614603517881

/-! ## A189189.P4016200936853376031

`record[A189196(A008619((lcm(4, n)/4)²))]`
-/

namespace A189189.P4016200936853376031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A008619 (SequenceMachineLib.roundAway (((Nat.lcm 4 n : ℚ) / 4) ^ 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189189.P4016200936853376031

/-! ## A189189.P15975452745044117459

`A007318(∑[n])*A189196(A001844(n))`
-/

namespace A189189.P15975452745044117459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A189196 (A001844 n).toNat

end

end A189189.P15975452745044117459

/-! ## A189189.P3152186738175835061

`A014963(C(n+5, 2))*A189196(A001844(n))`
-/

namespace A189189.P3152186738175835061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 2) * A189196 (A001844 n).toNat

end

end A189189.P3152186738175835061

/-!
# A189190: Number of nX3 binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189190, there is no canonical definition to state claims against.
-/

/-! ## A189190.P5459869237101419810

`A189196(∑[n+3]+1)`
-/

namespace A189190.P5459869237101419810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189190.P5459869237101419810

/-!
# A189191: Number of nX4 binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189191, there is no canonical definition to state claims against.
-/

/-! ## A189191.P11597925798985454911

`A189196(A055998(n+2))`
-/

namespace A189191.P11597925798985454911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A055998 (n + 2)).toNat

end

end A189191.P11597925798985454911

/-! ## A189191.P13410438916077376938

`A189196(A056000(n)+7)`
-/

namespace A189191.P13410438916077376938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A056000 n + 7).toNat

end

end A189191.P13410438916077376938

/-! ## A189191.P5860994925287360343

`A189196(eq[3, A193592(n)])`
-/

namespace A189191.P5860994925287360343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189191.P5860994925287360343

/-! ## A189191.P11380028162202077645

`A189196(A052905(n+1)+2)`
-/

namespace A189191.P11380028162202077645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A052905 (n + 1) + 2).toNat

end

end A189191.P11380028162202077645

/-! ## A189191.P1950583377380304513

`A189196(eq[4, A057728(n+1)])`
-/

namespace A189191.P1950583377380304513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189191.P1950583377380304513

/-!
# A189192: Number of nX5 binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189192, there is no canonical definition to state claims against.
-/

/-! ## A189192.P7064524495530123527

`A189196(A046691(n+3))`
-/

namespace A189192.P7064524495530123527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A046691 (n + 3)).toNat

end

end A189192.P7064524495530123527

/-! ## A189192.P2060155362829568632

`A189196(eq[4, A193592(n)])`
-/

namespace A189192.P2060155362829568632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189192.P2060155362829568632

/-! ## A189192.P10706293945766109099

`A189196(Δ[A023545(n+1)])`
-/

namespace A189192.P10706293945766109099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (f1 (n + 1) - f1 n).toNat

end

end A189192.P10706293945766109099

/-! ## A189192.P11415108800235663830

`A189196(eq[4, A049286(n+1)])`
-/

namespace A189192.P11415108800235663830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189192.P11415108800235663830

/-! ## A189192.P6927995318016707968

`A189196(eq[8, A057728(n+1)])`
-/

namespace A189192.P6927995318016707968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189192.P6927995318016707968

/-!
# A189193: Number of nX6 binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189193, there is no canonical definition to state claims against.
-/

/-! ## A189193.P1837173217511092724

`A189196(A052905(n+3))`
-/

namespace A189193.P1837173217511092724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A052905 (n + 3)).toNat

end

end A189193.P1837173217511092724

/-! ## A189193.P5081160645381904327

`A189196(eq[3, A219347(n)])`
-/

namespace A189193.P5081160645381904327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189193.P5081160645381904327

/-! ## A189193.P8186736781788940847

`A189196(eq[5, A193592(n)])`
-/

namespace A189193.P8186736781788940847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189193.P8186736781788940847

/-! ## A189193.P2224679665147251331

`A189196(eq[7, A049286(n+1)])`
-/

namespace A189193.P2224679665147251331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189193.P2224679665147251331

/-! ## A189193.P11956021202976479470

`A189196(eq[16, A057728(n+1)])`
-/

namespace A189193.P11956021202976479470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189193.P11956021202976479470

/-!
# A189194: Number of nX7 binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189194, there is no canonical definition to state claims against.
-/

/-! ## A189194.P16044158952043260977

`A189196(A055999(n+4))`
-/

namespace A189194.P16044158952043260977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A055999 (n + 4)).toNat

end

end A189194.P16044158952043260977

/-! ## A189194.P11700788460984645770

`A189196(eq[4, A219347(n)])`
-/

namespace A189194.P11700788460984645770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189194.P11700788460984645770

/-! ## A189194.P8693407692221916430

`A189196(eq[6, A193592(n)])`
-/

namespace A189194.P8693407692221916430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189194.P8693407692221916430

/-! ## A189194.P3428184570093897239

`A189196(eq[32, A057728(n+1)])`
-/

namespace A189194.P3428184570093897239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189194.P3428184570093897239

/-! ## A189194.P13355809533887612869

`A189196(A005408(n)+A167499(n+4)+1)`
-/

namespace A189194.P13355809533887612869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A005408 n + (A167499 (n + 4) + 1)).toNat

end

end A189194.P13355809533887612869

/-!
# A189195: Number of n X 8 binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189195, there is no canonical definition to state claims against.
-/

/-! ## A189195.P6753439360759111764

`A189196(eq[5, A219347(n)])`
-/

namespace A189195.P6753439360759111764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189195.P6753439360759111764

/-! ## A189195.P18153755405813949585

`A189196(eq[7, A193592(n)])`
-/

namespace A189195.P18153755405813949585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189195.P18153755405813949585

/-! ## A189195.P15934527308762608805

`A189196(A000096(n+7)-6)`
-/

namespace A189195.P15934527308762608805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A000096 (n + 7) - 6).toNat

end

end A189195.P15934527308762608805

/-! ## A189195.P12954530608784079090

`A189196(A000124(n+8)-8)`
-/

namespace A189195.P12954530608784079090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A000124 (n + 8) - 8).toNat

end

end A189195.P12954530608784079090

/-! ## A189195.P4632837729773891572

`A189196(eq[12, A185782(n+1)])`
-/

namespace A189195.P4632837729773891572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189195.P4632837729773891572

/-!
# A189196: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189196, there is no canonical definition to state claims against.
-/

/-! ## A189196.P14473203016426530552

`A189064(A114327(n)+A077168(n))`
-/

namespace A189196.P14473203016426530552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A114327 n + A077168 n).toNat

end

end A189196.P14473203016426530552

/-! ## A189196.P13414572324613155058

`A189064(A038722(n+1)%A095505(n))`
-/

namespace A189196.P13414572324613155058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (Int.tmod (A038722 (n + 1)) (A095505 n)).toNat

end

end A189196.P13414572324613155058

/-! ## A189196.P11863363562868633777

`A189064(A151839(n+1)+A038722(n+1))`
-/

namespace A189196.P11863363562868633777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A151839 (n + 1) + A038722 (n + 1)).toNat

end

end A189196.P11863363562868633777

/-! ## A189196.P1252252616766371129

`A189064(A038722(n+1))%A004896(A010901(n))`
-/

namespace A189196.P1252252616766371129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189064 (A038722 (n + 1)).toNat) (A004896 (A010901 n).toNat)

end

end A189196.P1252252616766371129

/-! ## A189196.P14482017692418611051

`A189696(A193897(∑[n]))`
-/

namespace A189196.P14482017692418611051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A193897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A189196.P14482017692418611051

/-!
# A189197: Number of 4 X n binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189197, there is no canonical definition to state claims against.
-/

/-! ## A189197.P7839799709020732614

`A189196(A052905(n)+9)`
-/

namespace A189197.P7839799709020732614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A052905 n + 9).toNat

end

end A189197.P7839799709020732614

/-! ## A189197.P15894906628170790051

`A189196(A055999(n)+10)`
-/

namespace A189197.P15894906628170790051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A055999 n + 10).toNat

end

end A189197.P15894906628170790051

/-! ## A189197.P8437588294034969475

`A189196(A167614(n+2)+1)`
-/

namespace A189197.P8437588294034969475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A167614 (n + 2) + 1).toNat

end

end A189197.P8437588294034969475

/-! ## A189197.P7341772764484814397

`A189196(A340266(n+2)+2)`
-/

namespace A189197.P7341772764484814397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A340266 (n + 2) + 2).toNat

end

end A189197.P7341772764484814397

/-! ## A189197.P3731582585929405487

`A189196(A166136(n+2)-2)`
-/

namespace A189197.P3731582585929405487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A166136 (n + 2) - 2).toNat

end

end A189197.P3731582585929405487

/-!
# A189198: Number of 5Xn binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189198, there is no canonical definition to state claims against.
-/

/-! ## A189198.P4383019944680340594

`A189196(A167499(n+3))`
-/

namespace A189198.P4383019944680340594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A167499 (n + 3)).toNat

end

end A189198.P4383019944680340594

/-! ## A189198.P16769361845194743990

`A189196(A155212(n)+13)`
-/

namespace A189198.P16769361845194743990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A155212 n + 13).toNat

end

end A189198.P16769361845194743990

/-! ## A189198.P10355860612610377337

`A189196(A056000(n)+15)`
-/

namespace A189198.P10355860612610377337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A056000 n + 15).toNat

end

end A189198.P10355860612610377337

/-! ## A189198.P15028967027271171282

`A189196(A055999(n+1)+11)`
-/

namespace A189198.P15028967027271171282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A055999 (n + 1) + 11).toNat

end

end A189198.P15028967027271171282

/-! ## A189198.P6861952201001991773

`A189196(eq[6, A131818(n+1)])`
-/

namespace A189198.P6861952201001991773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189198.P6861952201001991773

/-!
# A189199: Number of 6Xn binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189199, there is no canonical definition to state claims against.
-/

/-! ## A189199.P1608577934552559787

`A189196(A056115(n)+21)`
-/

namespace A189199.P1608577934552559787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A056115 n + 21).toNat

end

end A189199.P1608577934552559787

/-! ## A189199.P6778781094157067188

`A189196(A167499(n+4)+1)`
-/

namespace A189199.P6778781094157067188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A167499 (n + 4) + 1).toNat

end

end A189199.P6778781094157067188

/-! ## A189199.P17849116506160836078

`A189196(A000124(n+5)+5)`
-/

namespace A189199.P17849116506160836078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A000124 (n + 5) + 5).toNat

end

end A189199.P17849116506160836078

/-! ## A189199.P6370270785438188752

`A189196(A000217(n+5)+6)`
-/

namespace A189199.P6370270785438188752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A000217 (n + 5) + 6).toNat

end

end A189199.P6370270785438188752

/-! ## A189199.P7697107439820518520

`A189196(eq[7, A131818(n+1)])`
-/

namespace A189199.P7697107439820518520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189199.P7697107439820518520

