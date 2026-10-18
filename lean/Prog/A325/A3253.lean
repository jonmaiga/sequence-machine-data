import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

/-!
# A325300: a(n) is the number of faces of the stepped pyramid with n levels described in A245092.

The programs for A325300, there is no canonical definition to state claims against.
-/

/-! ## A325300.P16537567102679136440

`A323645(n+1)+3`
-/

namespace A325300.P16537567102679136440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323645 (n + 1) + 3

end

end A325300.P16537567102679136440

/-! ## A325300.P453917614816713790

`A325301(n+1)-A325302(n+1)+2`
-/

namespace A325300.P453917614816713790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325301 (n + 1) - A325302 (n + 1) + 2

end

end A325300.P453917614816713790

/-! ## A325300.P9054217117239849739

`A009005(A323645(n+1))`
-/

namespace A325300.P9054217117239849739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A323645 (n + 1)).toNat

end

end A325300.P9054217117239849739

/-! ## A325300.P3031277927659207865

`A325301(n+1)-A023444(A325302(n+1))`
-/

namespace A325300.P3031277927659207865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325301 (n + 1) - A023444 (A325302 (n + 1)).toNat

end

end A325300.P3031277927659207865

/-! ## A325300.P6723592749436157079

`A171463(A325301(n+1)-A325302(n+1))`
-/

namespace A325300.P6723592749436157079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A325301 (n + 1) - A325302 (n + 1)).toNat

end

end A325300.P6723592749436157079

/-!
# A325301: a(n) is the number of edges of the stepped pyramid with n levels described in A245092.

The programs for A325301, there is no canonical definition to state claims against.
-/

/-! ## A325301.P4928308388360083869

`A325300(n+1)+A325302(n+1)-2`
-/

namespace A325301.P4928308388360083869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325300 (n + 1) + A325302 (n + 1) - 2

end

end A325301.P4928308388360083869

/-! ## A325301.P6062257931717495608

`A325300(n+1)+A023444(A325302(n+1))`
-/

namespace A325301.P6062257931717495608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325300 (n + 1) + A023444 (A325302 (n + 1)).toNat

end

end A325301.P6062257931717495608

/-!
# A325302: a(n) is the number of vertices of the stepped pyramid with n levels described in A245092.

The programs for A325302, there is no canonical definition to state claims against.
-/

/-! ## A325302.P14229964533688468130

`A325301(n+1)-A325300(n+1)+2`
-/

namespace A325302.P14229964533688468130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325301 (n + 1) - A325300 (n + 1) + 2

end

end A325302.P14229964533688468130

/-! ## A325302.P9257501040599439093

`A325301(n+1)-(A323645(n+1)+1)`
-/

namespace A325302.P9257501040599439093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325301 (n + 1) - (A323645 (n + 1) + 1)

end

end A325302.P9257501040599439093

/-! ## A325302.P10734521612319391980

`A325301(n+1)-A023444(A325300(n+1))`
-/

namespace A325302.P10734521612319391980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325301 (n + 1) - A023444 (A325300 (n + 1)).toNat

end

end A325302.P10734521612319391980

/-! ## A325302.P10378721700763313953

`A233583(A325301(n+1)-A323645(n+1))`
-/

namespace A325302.P10378721700763313953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A325301 (n + 1) - A323645 (n + 1)).toNat

end

end A325302.P10378721700763313953

/-!
# A325304: Irregular triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled nodes with matching number k, (0 <= k <= floor(n/2)).

The programs for A325304, there is no canonical definition to state claims against.
-/

/-! ## A325304.P793264828309000760

`round(A086364(2*(n+1))/A086339(3*n+2))`
-/

namespace A325304.P793264828309000760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086364 (2 * (n + 1)) : ℚ) / (A086339 (3 * n + 2) : ℚ))

end

end A325304.P793264828309000760

/-!
# A325306: Numbers which are represented by more than one partition of the same integer.

The programs for A325306, there is no canonical definition to state claims against.
-/

/-! ## A325306.P9880127986212468539

`lcm(A094853(n+1), A376669(n+1))`
-/

namespace A325306.P9880127986212468539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094853 (n + 1)) (A376669 (n + 1))

end

end A325306.P9880127986212468539

/-! ## A325306.P2144802587947860970

`A376669(n+1)+A000007(A000041(n))`
-/

namespace A325306.P2144802587947860970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376669 (n + 1) + A000007 (A000041 n).toNat

end

end A325306.P2144802587947860970

/-! ## A325306.P6963678630601667957

`A376663(A259844(n))*A376669(n+1)`
-/

namespace A325306.P6963678630601667957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (A259844 n).toNat * A376669 (n + 1)

end

end A325306.P6963678630601667957

/-! ## A325306.P4211804536941010236

`A376669(n+1)+A010815(A134602(n+1))`
-/

namespace A325306.P4211804536941010236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376669 (n + 1) + A010815 (A134602 (n + 1)).toNat

end

end A325306.P4211804536941010236

/-! ## A325306.P15696806227860587938

`A376669(n+1)+A000122(A388019(n+4))`
-/

namespace A325306.P15696806227860587938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376669 (n + 1) + A000122 (A388019 (n + 4)).toNat

end

end A325306.P15696806227860587938

/-!
# A325307: a(n) = k / (sum of prime factors of k, counted with multiplicity) where k is the n-th number for which the ratio is an integer.

The programs for A325307, the canonical program `A325307.P4090948377986325988` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325307 has offset 1).

The definition of A325307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325307.P4090948377986325988

`A036844(n+1)/A001414(A036844(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A325307

/-- `A036844(n+1)/A001414(A036844(n+1))` -/
def P4090948377986325988.Spec : Prop :=
  ∀ n, P4090948377986325988.a n = (A325307 (n + 1) : ℚ)

end A325307

/-! ## A325307.P7878008322354676454

`A082344(A036844(n+1))`
-/

namespace A325307.P7878008322354676454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A036844 (n + 1)).toNat

end

end A325307.P7878008322354676454

namespace A325307

/-- `A082344(A036844(n+1))` -/
def P7878008322354676454.Spec : Prop :=
  ∀ n, P7878008322354676454.a n = A325307 (n + 1)

end A325307

/-! ## A325307.P11992035801946197300

`A082344(∪[A000040(n+1), A046346(n+1)])`
-/

namespace A325307.P11992035801946197300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A325307.P11992035801946197300

namespace A325307

/-- `A082344(∪[A000040(n+1), A046346(n+1)])` -/
def P11992035801946197300.Spec : Prop :=
  ∀ n, P11992035801946197300.a n = A325307 (n + 1)

end A325307

/-! ## A325307.P4387375543937411503

`A082344(∪[A046346(n+1), A175787(n+1)])`
-/

namespace A325307.P4387375543937411503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A325307.P4387375543937411503

namespace A325307

/-- `A082344(∪[A046346(n+1), A175787(n+1)])` -/
def P4387375543937411503.Spec : Prop :=
  ∀ n, P4387375543937411503.a n = A325307 (n + 1)

end A325307

/-! ## A325307.P12951650097696940832

`A082344(eq[1, A329656(n+1)]+1)`
-/

namespace A325307.P12951650097696940832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A325307.P12951650097696940832

namespace A325307

/-- `A082344(eq[1, A329656(n+1)]+1)` -/
def P12951650097696940832.Spec : Prop :=
  ∀ n, P12951650097696940832.a n = A325307 (n + 1)

end A325307

/-! ## A325307.P15616410669566662306

`A082344(eq[0, A238525(n+2)]+2)`
-/

namespace A325307.P15616410669566662306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A325307.P15616410669566662306

namespace A325307

/-- `A082344(eq[0, A238525(n+2)]+2)` -/
def P15616410669566662306.Spec : Prop :=
  ∀ n, P15616410669566662306.a n = A325307 (n + 1)

end A325307

/-! ## A325307.P5863769815098143207

`A082344(record[(n+2)/A329656(n+2)])`
-/

namespace A325307.P5863769815098143207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A329656 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A325307.P5863769815098143207

namespace A325307

/-- `A082344(record[(n+2)/A329656(n+2)])` -/
def P5863769815098143207.Spec : Prop :=
  ∀ n, P5863769815098143207.a n = A325307 (n + 1)

end A325307

/-!
# A325309: Square array read by downward antidiagonals: A(n, k) is the k-th Niven number (or Harshad number) in base n.

The programs for A325309, there is no canonical definition to state claims against.
-/

/-! ## A325309.P3594000309357607014

`A070939(A001399(A169659(n+1)))`
-/

namespace A325309.P3594000309357607014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A001399 (A169659 (n + 1)).toNat).toNat

end

end A325309.P3594000309357607014

/-! ## A325309.P8012078367102183492

`A000026(A348533(n+1)%A127598(n+1))`
-/

namespace A325309.P8012078367102183492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (Int.tmod (A348533 (n + 1)) (A127598 (n + 1))).toNat

end

end A325309.P8012078367102183492

/-! ## A325309.P1643403892846125326

`A349983(A388718(n+1))`
-/

namespace A325309.P1643403892846125326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349983 (A388718 (n + 1)).toNat

end

end A325309.P1643403892846125326

/-! ## A325309.P6731403186352166393

`A088519(A092288(n+1))`
-/

namespace A325309.P6731403186352166393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A092288 (n + 1)).toNat

end

end A325309.P6731403186352166393

/-! ## A325309.P5778381409351563280

`A152724(A143565(n+1))`
-/

namespace A325309.P5778381409351563280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152724 (A143565 (n + 1)).toNat

end

end A325309.P5778381409351563280

/-!
# A325310: a(n) = A001511(A325315(n)), except when A325315(n) = 0, then a(n) = 0.

The programs for A325310, there is no canonical definition to state claims against.
-/

/-! ## A325310.P15476195284828619111

`∑{d}[A325315(n+1), A209229(#)]`
-/

namespace A325310.P15476195284828619111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A325310.P15476195284828619111

/-! ## A325310.P15161073442288636948

`∑{d}[A325315(n+1), A048298(#)/#]`
-/

namespace A325310.P15161073442288636948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A048298 d : ℚ) / (d : ℚ)

end

end A325310.P15161073442288636948

/-! ## A325310.P17230443991598306328

`∑{d}[A325315(n+1), A048298(A000265(#))]`
-/

namespace A325310.P17230443991598306328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048298 (A000265 d).toNat

end

end A325310.P17230443991598306328

/-! ## A325310.P11965980944909177273

`∑{d}[A325315(n+1), A000035(A048250(#))]`
-/

namespace A325310.P11965980944909177273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A048250 d).toNat

end

end A325310.P11965980944909177273

/-! ## A325310.P3858301729101406727

`A327491(2*A325315(n+1))`
-/

namespace A325310.P3858301729101406727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (2 * A325315 (n + 1)).toNat

end

end A325310.P3858301729101406727

/-! ## A325310.P7969294793967237302

`A089263(20*A325315(n+1))`
-/

namespace A325310.P7969294793967237302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (20 * A325315 (n + 1)).toNat

end

end A325310.P7969294793967237302

/-! ## A325310.P18109826382861763719

`∑{d}[A325315(n+1), A048298(A325315(#²))]`
-/

namespace A325310.P18109826382861763719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048298 (A325315 (d ^ 2)).toNat

end

end A325310.P18109826382861763719

/-!
# A325311: Odd abundant numbers k for which sigma(k) == 3 (mod 4).

The programs for A325311, there is no canonical definition to state claims against.
-/

/-! ## A325311.P3084979813849426446

`A325312(n+1)²`
-/

namespace A325311.P3084979813849426446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325312 (n + 1) ^ 2

end

end A325311.P3084979813849426446

/-! ## A325311.P15852322953299325031

`A325312(2*(n+1)-(n+1))^2`
-/

namespace A325311.P15852322953299325031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325312 (2 * (n + 1) - (n + 1)) ^ 2

end

end A325311.P15852322953299325031

/-! ## A325311.P535443068402865715

`(A008836(n+1)*A325312(n+1))^2`
-/

namespace A325311.P535443068402865715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) * A325312 (n + 1)) ^ 2

end

end A325311.P535443068402865715

/-! ## A325311.P16218836717170793282

`A325312(A000027(n+1))*A325312(n+1)`
-/

namespace A325311.P16218836717170793282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325312 (A000027 (n + 1)).toNat * A325312 (n + 1)

end

end A325311.P16218836717170793282

/-! ## A325311.P11722464991549099942

`A325312(n+1)*A325312((n+1)%A325312(n+1))`
-/

namespace A325311.P11722464991549099942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325312 (n + 1) * A325312 (Int.tmod (n + 1 : ℤ) (A325312 (n + 1))).toNat

end

end A325311.P11722464991549099942

/-! ## A325311.P5153682582282118285

`∩[A156942(n+1), A324899(n+1)]`
-/

namespace A325311.P5153682582282118285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325311.P5153682582282118285

/-!
# A325312: Odd numbers k for which sigma(k^2) == 3 (mod 4) and sigma(k^2) > 2*k^2.

The programs for A325312, there is no canonical definition to state claims against.
-/

/-! ## A325312.P3303189523606947327

`sqrt(A325311(n+1))`
-/

namespace A325312.P3303189523606947327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A325311 (n + 1) : ℝ)

end

end A325312.P3303189523606947327

/-! ## A325312.P15849188057767299660

`root(A325311(n+1), and(2, A004771(n)))`
-/

namespace A325312.P15849188057767299660
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325311 (n + 1) : ℝ) ^ (1 / (Int.land 2 (A004771 n) : ℝ))

end

end A325312.P15849188057767299660

/-! ## A325312.P13485701528029260293

`root(A325311(n+1), 2)*char[A004488(n)]`
-/

namespace A325312.P13485701528029260293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325311 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

end

end A325312.P13485701528029260293

/-! ## A325312.P14882289161626893398

`root(A325311(n+1), A020639(2*(n+1)))`
-/

namespace A325312.P14882289161626893398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325311 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A325312.P14882289161626893398

/-! ## A325312.P9701108689547557952

`A008683(27*(n+1))+root(A325311(n+1), 2)`
-/

namespace A325312.P9701108689547557952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (27 * (n + 1)) : ℝ) + (A325311 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A325312.P9701108689547557952

/-! ## A325312.P11855948966694032470

`root(A325311(n+1), 2)*A001221(A139317(n+1))`
-/

namespace A325312.P11855948966694032470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325311 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001221 (A139317 (n + 1)).toNat : ℝ)

end

end A325312.P11855948966694032470

/-! ## A325312.P18296651995873889398

`root(A325311(n+1), 2)*A001221(A037155(n+3))`
-/

namespace A325312.P18296651995873889398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325311 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001221 (A037155 (n + 3)).toNat : ℝ)

end

end A325312.P18296651995873889398

/-! ## A325312.P10147868934057923602

`A000265(root(A325311(n+1), 2))`
-/

namespace A325312.P10147868934057923602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A325311 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A325312.P10147868934057923602

/-! ## A325312.P9060854571969775457

`root(A325311(n+1), ratio[A000079(n)])`
-/

namespace A325312.P9060854571969775457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325311 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A325312.P9060854571969775457

/-! ## A325312.P1231268112084503070

`filter[A174830(n+1), A354035(#)]`
-/

namespace A325312.P1231268112084503070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A325312.P1231268112084503070

/-!
# A325313: a(n) = A048250(n) - n, where A048250(n) is the sum of squarefree divisors of n.

The programs for A325313, the canonical program `A325313.P215450417815666136` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325313 has offset 1).

The definition of A325313 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325313.P16190563631669618661

`A048250(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325313.P16190563631669618661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - (n + 1 : ℤ)

end

end A325313.P16190563631669618661

namespace A325313

/-- `A048250(n+1)-(n+1)` -/
def P16190563631669618661.Spec : Prop :=
  ∀ n, P16190563631669618661.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P215450417815666136

`A325314(n+1)-A033879(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A325313

/-- `A325314(n+1)-A033879(n+1)` -/
def P215450417815666136.Spec : Prop :=
  ∀ n, P215450417815666136.a n = A325313 (n + 1)

theorem P215450417815666136.correct : P215450417815666136.Spec := by
  intro n
  simp only [A325313, Nat.add_sub_cancel]

end A325313

/-! ## A325313.P13918374799711713897

`∏{p}[n+1, #+1]-(n+1)`
-/

namespace A325313.P13918374799711713897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A325313.P13918374799711713897

namespace A325313

/-- `∏{p}[n+1, #+1]-(n+1)` -/
def P13918374799711713897.Spec : Prop :=
  ∀ n, P13918374799711713897.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P13677693121104202842

`abs(A323363(n+1))-(n+1)`
-/

namespace A325313.P13677693121104202842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323363 (n + 1)| - (n + 1 : ℤ)

end

end A325313.P13677693121104202842

namespace A325313

/-- `abs(A323363(n+1))-(n+1)` -/
def P13677693121104202842.Spec : Prop :=
  ∀ n, P13677693121104202842.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P1556584992854174122

`∑{d}[A007947(n+1), #]-(n+1)`
-/

namespace A325313.P1556584992854174122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A325313.P1556584992854174122

namespace A325313

/-- `∑{d}[A007947(n+1), #]-(n+1)` -/
def P1556584992854174122.Spec : Prop :=
  ∀ n, P1556584992854174122.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P18161745277305326525

`A001615(∏{p}[n+1, #])-(n+1)`
-/

namespace A325313.P18161745277305326525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∏ p ∈ Nat.primeFactors (f1 n), p) - (n + 1 : ℤ)

end

end A325313.P18161745277305326525

namespace A325313

/-- `A001615(∏{p}[n+1, #])-(n+1)` -/
def P18161745277305326525.Spec : Prop :=
  ∀ n, P18161745277305326525.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P6170724884948270457

`A344695(∏{p}[n+1, #])-(n+1)`
-/

namespace A325313.P6170724884948270457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (∏ p ∈ Nat.primeFactors (f1 n), p) - (n + 1 : ℤ)

end

end A325313.P6170724884948270457

namespace A325313

/-- `A344695(∏{p}[n+1, #])-(n+1)` -/
def P6170724884948270457.Spec : Prop :=
  ∀ n, P6170724884948270457.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P13462905888300682687

`A181797(n+1)/(n+1)-(n+1)`
-/

namespace A325313.P13462905888300682687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A325313.P13462905888300682687

namespace A325313

/-- `A181797(n+1)/(n+1)-(n+1)` -/
def P13462905888300682687.Spec : Prop :=
  ∀ n, P13462905888300682687.a n = (A325313 (n + 1) : ℚ)

end A325313

/-! ## A325313.P2184567348959645072

`A039653(A007947(n+1))-n`
-/

namespace A325313.P2184567348959645072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A007947 (n + 1)).toNat - (n : ℤ)

end

end A325313.P2184567348959645072

namespace A325313

/-- `A039653(A007947(n+1))-n` -/
def P2184567348959645072.Spec : Prop :=
  ∀ n, P2184567348959645072.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P9102763914690738452

`A325314(n+1)+A033880(n+1)`
-/

namespace A325313.P9102763914690738452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) + A033880 (n + 1)

end

end A325313.P9102763914690738452

namespace A325313

/-- `A325314(n+1)+A033880(n+1)` -/
def P9102763914690738452.Spec : Prop :=
  ∀ n, P9102763914690738452.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P11021343765217697638

`A033634(A007948(n+1))-(n+1)`
-/

namespace A325313.P11021343765217697638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A007948 (n + 1)).toNat - (n + 1 : ℤ)

end

end A325313.P11021343765217697638

namespace A325313

/-- `A033634(A007948(n+1))-(n+1)` -/
def P11021343765217697638.Spec : Prop :=
  ∀ n, P11021343765217697638.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P939710645454034734

`A033634(A066990(n+1))-(n+1)`
-/

namespace A325313.P939710645454034734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A066990 (n + 1)).toNat - (n + 1 : ℤ)

end

end A325313.P939710645454034734

namespace A325313

/-- `A033634(A066990(n+1))-(n+1)` -/
def P939710645454034734.Spec : Prop :=
  ∀ n, P939710645454034734.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P8353180372561777779

`A001065(n+1)-A162296(n+1)`
-/

namespace A325313.P8353180372561777779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A162296 (n + 1)

end

end A325313.P8353180372561777779

namespace A325313

/-- `A001065(n+1)-A162296(n+1)` -/
def P8353180372561777779.Spec : Prop :=
  ∀ n, P8353180372561777779.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P1642425048911020206

`A034460(n+1)-A389162(n+1)`
-/

namespace A325313.P1642425048911020206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) - A389162 (n + 1)

end

end A325313.P1642425048911020206

namespace A325313

/-- `A034460(n+1)-A389162(n+1)` -/
def P1642425048911020206.Spec : Prop :=
  ∀ n, P1642425048911020206.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P7302086766081669709

`A366743(A372379(n+1))-(n+1)`
-/

namespace A325313.P7302086766081669709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366743 (A372379 (n + 1)).toNat - (n + 1 : ℤ)

end

end A325313.P7302086766081669709

namespace A325313

/-- `A366743(A372379(n+1))-(n+1)` -/
def P7302086766081669709.Spec : Prop :=
  ∀ n, P7302086766081669709.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P6458587018007724748

`2*A325977(n+1)-A034460(n+1)`
-/

namespace A325313.P6458587018007724748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325977 (n + 1) - A034460 (n + 1)

end

end A325313.P6458587018007724748

namespace A325313

/-- `2*A325977(n+1)-A034460(n+1)` -/
def P6458587018007724748.Spec : Prop :=
  ∀ n, P6458587018007724748.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P17520584546037253417

`∑{d}[n+1, A086156(#)*A334657((n+1)/#)]`
-/

namespace A325313.P17520584546037253417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086156 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325313.P17520584546037253417

namespace A325313

/-- `∑{d}[n+1, A086156(#)*A334657((n+1)/#)]` -/
def P17520584546037253417.Spec : Prop :=
  ∀ n, P17520584546037253417.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P17203138132826108028

`A000203(A007947(n+1))-A000027(n+1)`
-/

namespace A325313.P17203138132826108028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - A000027 (n + 1)

end

end A325313.P17203138132826108028

namespace A325313

/-- `A000203(A007947(n+1))-A000027(n+1)` -/
def P17203138132826108028.Spec : Prop :=
  ∀ n, P17203138132826108028.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P15332145025137773497

`A008473(A007947(A304776(n+1)))-(n+1)`
-/

namespace A325313.P15332145025137773497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008473 (A007947 (A304776 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A325313.P15332145025137773497

namespace A325313

/-- `A008473(A007947(A304776(n+1)))-(n+1)` -/
def P15332145025137773497.Spec : Prop :=
  ∀ n, P15332145025137773497.a n = A325313 (n + 1)

end A325313

/-! ## A325313.P6840996786882274015

`A003959(A007947(A348036(n+1)))-(n+1)`
-/

namespace A325313.P6840996786882274015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A007947 (A348036 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A325313.P6840996786882274015

namespace A325313

/-- `A003959(A007947(A348036(n+1)))-(n+1)` -/
def P6840996786882274015.Spec : Prop :=
  ∀ n, P6840996786882274015.a n = A325313 (n + 1)

end A325313

/-!
# A325314: a(n) = n - A162296(n), where A162296(n) is the sum of divisors of n that have a square factor.

The programs for A325314, the canonical program `A325314.P1683321656325189174` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325314 has offset 1).

The definition of A325314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325314.P1683321656325189174

`n+1-A162296(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A325314

/-- `n+1-A162296(n+1)` -/
def P1683321656325189174.Spec : Prop :=
  ∀ n, P1683321656325189174.a n = A325314 (n + 1)

theorem P1683321656325189174.correct : P1683321656325189174.Spec := by
  intro n
  simp only [A325314, Nat.add_sub_cancel]

end A325314

/-! ## A325314.P6183718190528542032

`A033879(n+1)+A325313(n+1)`
-/

namespace A325314.P6183718190528542032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A325313 (n + 1)

end

end A325314.P6183718190528542032

namespace A325314

/-- `A033879(n+1)+A325313(n+1)` -/
def P6183718190528542032.Spec : Prop :=
  ∀ n, P6183718190528542032.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P3621141196866817944

`1-(∑{d}[n+1, #]-∏{p}[n+1, #+1])+n`
-/

namespace A325314.P3621141196866817944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)) + (n : ℤ)

end

end A325314.P3621141196866817944

namespace A325314

/-- `1-(∑{d}[n+1, #]-∏{p}[n+1, #+1])+n` -/
def P3621141196866817944.Spec : Prop :=
  ∀ n, P3621141196866817944.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P4813482079671642154

`1-∑{d}[n+1, A105570(#)]+n`
-/

namespace A325314.P4813482079671642154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A105570 d + (n : ℤ)

end

end A325314.P4813482079671642154

namespace A325314

/-- `1-∑{d}[n+1, A105570(#)]+n` -/
def P4813482079671642154.Spec : Prop :=
  ∀ n, P4813482079671642154.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P5143718373174097619

`A000203(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))`
-/

namespace A325314.P5143718373174097619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A325314.P5143718373174097619

namespace A325314

/-- `A000203(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))` -/
def P5143718373174097619.Spec : Prop :=
  ∀ n, P5143718373174097619.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P16351840974353034206

`A001615(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))`
-/

namespace A325314.P16351840974353034206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∏ p ∈ Nat.primeFactors (f1 n), p) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A325314.P16351840974353034206

namespace A325314

/-- `A001615(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))` -/
def P16351840974353034206.Spec : Prop :=
  ∀ n, P16351840974353034206.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P1321284775363318122

`A034448(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))`
-/

namespace A325314.P1321284775363318122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (∏ p ∈ Nat.primeFactors (f1 n), p) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A325314.P1321284775363318122

namespace A325314

/-- `A034448(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))` -/
def P1321284775363318122.Spec : Prop :=
  ∀ n, P1321284775363318122.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P10573652968849578053

`A344695(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))`
-/

namespace A325314.P10573652968849578053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (∏ p ∈ Nat.primeFactors (f1 n), p) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A325314.P10573652968849578053

namespace A325314

/-- `A344695(∏{p}[n+1, #])-(∑{d}[n+1, #]-(n+1))` -/
def P10573652968849578053.Spec : Prop :=
  ∀ n, P10573652968849578053.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P3672437551181017381

`A048250(n+1)-A001065(n+1)`
-/

namespace A325314.P3672437551181017381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A001065 (n + 1)

end

end A325314.P3672437551181017381

namespace A325314

/-- `A048250(n+1)-A001065(n+1)` -/
def P3672437551181017381.Spec : Prop :=
  ∀ n, P3672437551181017381.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P11842851706431228949

`A325313(n+1)-A033880(n+1)`
-/

namespace A325314.P11842851706431228949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (n + 1) - A033880 (n + 1)

end

end A325314.P11842851706431228949

namespace A325314

/-- `A325313(n+1)-A033880(n+1)` -/
def P11842851706431228949.Spec : Prop :=
  ∀ n, P11842851706431228949.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P1016797235264145416

`A389204(n+1)-A034460(n+1)`
-/

namespace A325314.P1016797235264145416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389204 (n + 1) - A034460 (n + 1)

end

end A325314.P1016797235264145416

namespace A325314

/-- `A389204(n+1)-A034460(n+1)` -/
def P1016797235264145416.Spec : Prop :=
  ∀ n, P1016797235264145416.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P17757110647747997619

`2*A325978(n+1)-A325814(n+1)`
-/

namespace A325314.P17757110647747997619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325978 (n + 1) - A325814 (n + 1)

end

end A325314.P17757110647747997619

namespace A325314

/-- `2*A325978(n+1)-A325814(n+1)` -/
def P17757110647747997619.Spec : Prop :=
  ∀ n, P17757110647747997619.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P18415686595043658229

`A000203(∏{p}[n+1, #])-A001065(n+1)`
-/

namespace A325314.P18415686595043658229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) - A001065 (n + 1)

end

end A325314.P18415686595043658229

namespace A325314

/-- `A000203(∏{p}[n+1, #])-A001065(n+1)` -/
def P18415686595043658229.Spec : Prop :=
  ∀ n, P18415686595043658229.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P6263626769310667049

`n+1+A048250(n+1)-A000203(n+1)`
-/

namespace A325314.P6263626769310667049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A048250 (n + 1) - A000203 (n + 1)

end

end A325314.P6263626769310667049

namespace A325314

/-- `n+1+A048250(n+1)-A000203(n+1)` -/
def P6263626769310667049.Spec : Prop :=
  ∀ n, P6263626769310667049.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P13805953671055820533

`A000203(A007947(n+1))-A001065(n+1)`
-/

namespace A325314.P13805953671055820533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - A001065 (n + 1)

end

end A325314.P13805953671055820533

namespace A325314

/-- `A000203(A007947(n+1))-A001065(n+1)` -/
def P13805953671055820533.Spec : Prop :=
  ∀ n, P13805953671055820533.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P442158278181638637

`A001065(A007947(n+1))-A326143(n+1)`
-/

namespace A325314.P442158278181638637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A007947 (n + 1)).toNat - A326143 (n + 1)

end

end A325314.P442158278181638637

namespace A325314

/-- `A001065(A007947(n+1))-A326143(n+1)` -/
def P442158278181638637.Spec : Prop :=
  ∀ n, P442158278181638637.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P5955478492628496914

`A389460(A007947(n+1))-A389461(n+1)`
-/

namespace A325314.P5955478492628496914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389460 (A007947 (n + 1)).toNat - A389461 (n + 1)

end

end A325314.P5955478492628496914

namespace A325314

/-- `A389460(A007947(n+1))-A389461(n+1)` -/
def P5955478492628496914.Spec : Prop :=
  ∀ n, P5955478492628496914.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P11809394400610261227

`n+1+A000203(A007947(n+1))-A000203(n+1)`
-/

namespace A325314.P11809394400610261227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A000203 (A007947 (n + 1)).toNat - A000203 (n + 1))

end

end A325314.P11809394400610261227

namespace A325314

/-- `n+1+A000203(A007947(n+1))-A000203(n+1)` -/
def P11809394400610261227.Spec : Prop :=
  ∀ n, P11809394400610261227.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P9259154381471365018

`A048250(n+1)-(A048146(n+1)+A034460(n+1))`
-/

namespace A325314.P9259154381471365018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - (A048146 (n + 1) + A034460 (n + 1))

end

end A325314.P9259154381471365018

namespace A325314

/-- `A048250(n+1)-(A048146(n+1)+A034460(n+1))` -/
def P9259154381471365018.Spec : Prop :=
  ∀ n, P9259154381471365018.a n = A325314 (n + 1)

end A325314

/-! ## A325314.P7403583360972734873

`A048250(n+1)+A344705(n+1)-A001615(n+1)`
-/

namespace A325314.P7403583360972734873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A344705 (n + 1) - A001615 (n + 1))

end

end A325314.P7403583360972734873

namespace A325314

/-- `A048250(n+1)+A344705(n+1)-A001615(n+1)` -/
def P7403583360972734873.Spec : Prop :=
  ∀ n, P7403583360972734873.a n = A325314 (n + 1)

end A325314

/-!
# A325315: Bitwise-XOR of absolute values of (n - A048250(n)) and (n - A162296(n)).

The programs for A325315, there is no canonical definition to state claims against.
-/

/-! ## A325315.P17850910332651672774

`lcm(∑{d}[n+1, #]-2*(n+1), A165018(A166101(n+4)))`
-/

namespace A325315.P17850910332651672774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)) (A165018 (A166101 (n + 4)).toNat)

end

end A325315.P17850910332651672774

/-! ## A325315.P17227642285391555218

`lcm(A033879(n+1), A324198(A014210(n)))`
-/

namespace A325315.P17227642285391555218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033879 (n + 1)) (A324198 (A014210 n).toNat)

end

end A325315.P17227642285391555218

/-! ## A325315.P8697449764134797797

`lcm(∑{d}[n+1, #]-2*(n+1), A328578(A075058(n)))`
-/

namespace A325315.P8697449764134797797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)) (A328578 (A075058 n).toNat)

end

end A325315.P8697449764134797797

/-! ## A325315.P7542643445250425667

`lcm(2*(n+1)-∑{d}[n+1, #], A358692(A044821(n+1)))`
-/

namespace A325315.P7542643445250425667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) (A358692 (A044821 (n + 1)).toNat)

end

end A325315.P7542643445250425667

/-! ## A325315.P1611034206781780086

`lcm(A033880(n+1), A365805(A052548(n)))`
-/

namespace A325315.P1611034206781780086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033880 (n + 1)) (A365805 (A052548 n).toNat)

end

end A325315.P1611034206781780086

/-!
# A325316: a(n) = A048250(n) OR A162296(n), where OR is the bitwise-OR, A003986.

The programs for A325316, the canonical program `A325316.P12631045043239332165` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325316 has offset 1).

The definition of A325316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325316.P18017442987713031972

`A325317(n+1)+A325318(n+1)`
-/

namespace A325316.P18017442987713031972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325317 (n + 1) + A325318 (n + 1)

end

end A325316.P18017442987713031972

namespace A325316

/-- `A325317(n+1)+A325318(n+1)` -/
def P18017442987713031972.Spec : Prop :=
  ∀ n, P18017442987713031972.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P9356538635908881017

`A000203(n+1)-A325318(n+1)`
-/

namespace A325316.P9356538635908881017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325318 (n + 1)

end

end A325316.P9356538635908881017

namespace A325316

/-- `A000203(n+1)-A325318(n+1)` -/
def P9356538635908881017.Spec : Prop :=
  ∀ n, P9356538635908881017.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P12631045043239332165

`or(∑{d}[n+1, #]-∏{p}[n+1, #+1], ∏{p}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325316

/-- `or(∑{d}[n+1, #]-∏{p}[n+1, #+1], ∏{p}[n+1, #+1])` -/
def P12631045043239332165.Spec : Prop :=
  ∀ n, P12631045043239332165.a n = A325316 (n + 1)

theorem P12631045043239332165.correct : P12631045043239332165.Spec := by
  intro n
  simp only [A325316, Nat.add_sub_cancel]

end A325316

/-! ## A325316.P3009057492499015487

`or(∑{d}[n+1, #]-∏{p}[n+1, #+1], A048250(n+1))`
-/

namespace A325316.P3009057492499015487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)) (A048250 (n + 1))

end

end A325316.P3009057492499015487

namespace A325316

/-- `or(∑{d}[n+1, #]-∏{p}[n+1, #+1], A048250(n+1))` -/
def P3009057492499015487.Spec : Prop :=
  ∀ n, P3009057492499015487.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P4536201652722982420

`or(A048250(n+1), A162296(n+1))`
-/

namespace A325316.P4536201652722982420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048250 (n + 1)) (A162296 (n + 1))

end

end A325316.P4536201652722982420

namespace A325316

/-- `or(A048250(n+1), A162296(n+1))` -/
def P4536201652722982420.Spec : Prop :=
  ∀ n, P4536201652722982420.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P15764340595368892576

`(A325317(n+1)+A000203(n+1))/2`
-/

namespace A325316.P15764340595368892576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325317 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A325316.P15764340595368892576

namespace A325316

/-- `(A325317(n+1)+A000203(n+1))/2` -/
def P15764340595368892576.Spec : Prop :=
  ∀ n, P15764340595368892576.a n = (A325316 (n + 1) : ℚ)

end A325316

/-! ## A325316.P10509406285105389313

`or(A034448(∏{p}[n+1, #]), A162296(n+1))`
-/

namespace A325316.P10509406285105389313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034448 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A162296 (n + 1))

end

end A325316.P10509406285105389313

namespace A325316

/-- `or(A034448(∏{p}[n+1, #]), A162296(n+1))` -/
def P10509406285105389313.Spec : Prop :=
  ∀ n, P10509406285105389313.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P11520494108742184383

`A000217(n+1)-(A325318(n+1)+A024816(n+1))`
-/

namespace A325316.P11520494108742184383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A325318 (n + 1) + A024816 (n + 1))

end

end A325316.P11520494108742184383

namespace A325316

/-- `A000217(n+1)-(A325318(n+1)+A024816(n+1))` -/
def P11520494108742184383.Spec : Prop :=
  ∀ n, P11520494108742184383.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P6361487042275880205

`A057640(n+1)-(A325318(n+1)+A057641(n+1))`
-/

namespace A325316.P6361487042275880205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - (A325318 (n + 1) + A057641 (n + 1))

end

end A325316.P6361487042275880205

namespace A325316

/-- `A057640(n+1)-(A325318(n+1)+A057641(n+1))` -/
def P6361487042275880205.Spec : Prop :=
  ∀ n, P6361487042275880205.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P18307086681876298297

`A048250(n+1)+A162296(n+1)-A325318(n+1)`
-/

namespace A325316.P18307086681876298297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A325318 (n + 1))

end

end A325316.P18307086681876298297

namespace A325316

/-- `A048250(n+1)+A162296(n+1)-A325318(n+1)` -/
def P18307086681876298297.Spec : Prop :=
  ∀ n, P18307086681876298297.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P2734388682935331420

`A064987(n+1)-(A334136(n+1)+A325318(n+1))`
-/

namespace A325316.P2734388682935331420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - (A334136 (n + 1) + A325318 (n + 1))

end

end A325316.P2734388682935331420

namespace A325316

/-- `A064987(n+1)-(A334136(n+1)+A325318(n+1))` -/
def P2734388682935331420.Spec : Prop :=
  ∀ n, P2734388682935331420.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P7233142852751936122

`A069290(n+1)+A345320(n+1)-A325318(n+1)`
-/

namespace A325316.P7233142852751936122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (n + 1) + (A345320 (n + 1) - A325318 (n + 1))

end

end A325316.P7233142852751936122

namespace A325316

/-- `A069290(n+1)+A345320(n+1)-A325318(n+1)` -/
def P7233142852751936122.Spec : Prop :=
  ∀ n, P7233142852751936122.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P6511213061583238538

`A227873(n+1)+A260934(n+1)-A325318(n+1)`
-/

namespace A325316.P6511213061583238538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227873 (n + 1) + (A260934 (n + 1) - A325318 (n + 1))

end

end A325316.P6511213061583238538

namespace A325316

/-- `A227873(n+1)+A260934(n+1)-A325318(n+1)` -/
def P6511213061583238538.Spec : Prop :=
  ∀ n, P6511213061583238538.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P9486279824342584982

`A143238(n+1)/A024916(n+1)-A325318(n+1)`
-/

namespace A325316.P9486279824342584982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143238 (n + 1) : ℚ) / (A024916 (n + 1) : ℚ) - (A325318 (n + 1) : ℚ)

end

end A325316.P9486279824342584982

namespace A325316

/-- `A143238(n+1)/A024916(n+1)-A325318(n+1)` -/
def P9486279824342584982.Spec : Prop :=
  ∀ n, P9486279824342584982.a n = (A325316 (n + 1) : ℚ)

end A325316

/-! ## A325316.P936506274915851664

`A092346(n+1)-(A325318(n+1)+A001157(n+1))`
-/

namespace A325316.P936506274915851664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092346 (n + 1) - (A325318 (n + 1) + A001157 (n + 1))

end

end A325316.P936506274915851664

namespace A325316

/-- `A092346(n+1)-(A325318(n+1)+A001157(n+1))` -/
def P936506274915851664.Spec : Prop :=
  ∀ n, P936506274915851664.a n = A325316 (n + 1)

end A325316

/-! ## A325316.P6759630649871394510

`A348688(n+1)-(A348689(n+2)+A325318(n+1))`
-/

namespace A325316.P6759630649871394510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348688 (n + 1) - (A348689 (n + 2) + A325318 (n + 1))

end

end A325316.P6759630649871394510

namespace A325316

/-- `A348688(n+1)-(A348689(n+2)+A325318(n+1))` -/
def P6759630649871394510.Spec : Prop :=
  ∀ n, P6759630649871394510.a n = A325316 (n + 1)

end A325316

/-!
# A325317: a(n) = A048250(n) XOR A162296(n), where XOR is the bitwise-XOR, A003987.

The programs for A325317, the canonical program `A325317.P3726811727158540044` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325317 has offset 1).

The definition of A325317 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, A325318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325317.P3726811727158540044

`A325316(n+1)-A325318(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A325317

/-- `A325316(n+1)-A325318(n+1)` -/
def P3726811727158540044.Spec : Prop :=
  ∀ n, P3726811727158540044.a n = A325317 (n + 1)

theorem P3726811727158540044.correct : P3726811727158540044.Spec := by
  intro n
  simp only [A325317, Nat.add_sub_cancel]

end A325317

/-! ## A325317.P16808110280088145272

`A000203(n+1)-2*A325318(n+1)`
-/

namespace A325317.P16808110280088145272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A325318 (n + 1)

end

end A325317.P16808110280088145272

namespace A325317

/-- `A000203(n+1)-2*A325318(n+1)` -/
def P16808110280088145272.Spec : Prop :=
  ∀ n, P16808110280088145272.a n = A325317 (n + 1)

end A325317

/-! ## A325317.P4633666299977513282

`xor(∑{d}[n+1, #]-∏{p}[n+1, #+1], ∏{p}[n+1, #+1])`
-/

namespace A325317.P4633666299977513282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)) ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℤ)

end

end A325317.P4633666299977513282

namespace A325317

/-- `xor(∑{d}[n+1, #]-∏{p}[n+1, #+1], ∏{p}[n+1, #+1])` -/
def P4633666299977513282.Spec : Prop :=
  ∀ n, P4633666299977513282.a n = A325317 (n + 1)

end A325317

/-! ## A325317.P4294340316255326122

`xor(∑{d}[n+1, #]-∏{p}[n+1, #+1], A048250(n+1))`
-/

namespace A325317.P4294340316255326122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)) (A048250 (n + 1))

end

end A325317.P4294340316255326122

namespace A325317

/-- `xor(∑{d}[n+1, #]-∏{p}[n+1, #+1], A048250(n+1))` -/
def P4294340316255326122.Spec : Prop :=
  ∀ n, P4294340316255326122.a n = A325317 (n + 1)

end A325317

/-! ## A325317.P253803118943400048

`xor(A048250(n+1), A162296(n+1))`
-/

namespace A325317.P253803118943400048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048250 (n + 1)) (A162296 (n + 1))

end

end A325317.P253803118943400048

namespace A325317

/-- `xor(A048250(n+1), A162296(n+1))` -/
def P253803118943400048.Spec : Prop :=
  ∀ n, P253803118943400048.a n = A325317 (n + 1)

end A325317

/-! ## A325317.P6650206369725193262

`2*A325316(n+1)-A000203(n+1)`
-/

namespace A325317.P6650206369725193262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325316 (n + 1) - A000203 (n + 1)

end

end A325317.P6650206369725193262

namespace A325317

/-- `2*A325316(n+1)-A000203(n+1)` -/
def P6650206369725193262.Spec : Prop :=
  ∀ n, P6650206369725193262.a n = A325317 (n + 1)

end A325317

/-! ## A325317.P11034966434928891972

`xor(A034448(∏{p}[n+1, #]), A162296(n+1))`
-/

namespace A325317.P11034966434928891972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034448 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A162296 (n + 1))

end

end A325317.P11034966434928891972

namespace A325317

/-- `xor(A034448(∏{p}[n+1, #]), A162296(n+1))` -/
def P11034966434928891972.Spec : Prop :=
  ∀ n, P11034966434928891972.a n = A325317 (n + 1)

end A325317

/-! ## A325317.P427783167580639783

`xor(A325313(n+1)+n+1, A162296(n+1))`
-/

namespace A325317.P427783167580639783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A325313 (n + 1) + (n + 1 : ℤ)) (A162296 (n + 1))

end

end A325317.P427783167580639783

namespace A325317

/-- `xor(A325313(n+1)+n+1, A162296(n+1))` -/
def P427783167580639783.Spec : Prop :=
  ∀ n, P427783167580639783.a n = A325317 (n + 1)

end A325317

/-!
# A325318: a(n) = A048250(n) AND A162296(n), where AND is the bitwise-AND, A004198.

The programs for A325318, the canonical program `A325318.P11183084377846561957` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325318 has offset 1).

The definition of A325318 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325318.P11183084377846561957

`A000203(n+1)-A325316(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A325318

/-- `A000203(n+1)-A325316(n+1)` -/
def P11183084377846561957.Spec : Prop :=
  ∀ n, P11183084377846561957.a n = A325318 (n + 1)

theorem P11183084377846561957.correct : P11183084377846561957.Spec := by
  intro n
  simp only [A325318, Nat.add_sub_cancel]

end A325318

/-! ## A325318.P12440948037556036794

`A325316(n+1)-A325317(n+1)`
-/

namespace A325318.P12440948037556036794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325316 (n + 1) - A325317 (n + 1)

end

end A325318.P12440948037556036794

namespace A325318

/-- `A325316(n+1)-A325317(n+1)` -/
def P12440948037556036794.Spec : Prop :=
  ∀ n, P12440948037556036794.a n = A325318 (n + 1)

end A325318

/-! ## A325318.P14018338411736579967

`(A000203(n+1)-A325317(n+1))/2`
-/

namespace A325318.P14018338411736579967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A325317 (n + 1) : ℚ) / 2

end

end A325318.P14018338411736579967

namespace A325318

/-- `(A000203(n+1)-A325317(n+1))/2` -/
def P14018338411736579967.Spec : Prop :=
  ∀ n, P14018338411736579967.a n = (A325318 (n + 1) : ℚ)

end A325318

/-! ## A325318.P5121346092798515859

`and(∑{d}[n+1, #]-∏{p}[n+1, #+1], ∏{p}[n+1, #+1])`
-/

namespace A325318.P5121346092798515859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)) ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℤ)

end

end A325318.P5121346092798515859

namespace A325318

/-- `and(∑{d}[n+1, #]-∏{p}[n+1, #+1], ∏{p}[n+1, #+1])` -/
def P5121346092798515859.Spec : Prop :=
  ∀ n, P5121346092798515859.a n = A325318 (n + 1)

end A325318

/-! ## A325318.P10772086472177680158

`and(∑{d}[n+1, #]-∏{p}[n+1, #+1], A048250(n+1))`
-/

namespace A325318.P10772086472177680158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)) (A048250 (n + 1))

end

end A325318.P10772086472177680158

namespace A325318

/-- `and(∑{d}[n+1, #]-∏{p}[n+1, #+1], A048250(n+1))` -/
def P10772086472177680158.Spec : Prop :=
  ∀ n, P10772086472177680158.a n = A325318 (n + 1)

end A325318

/-! ## A325318.P11044625268452834688

`and(A048250(n+1), A162296(n+1))`
-/

namespace A325318.P11044625268452834688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048250 (n + 1)) (A162296 (n + 1))

end

end A325318.P11044625268452834688

namespace A325318

/-- `and(A048250(n+1), A162296(n+1))` -/
def P11044625268452834688.Spec : Prop :=
  ∀ n, P11044625268452834688.a n = A325318 (n + 1)

end A325318

/-! ## A325318.P9010109943221109404

`and(A162296(n+1), A293228(n+1))`
-/

namespace A325318.P9010109943221109404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A162296 (n + 1)) (A293228 (n + 1))

end

end A325318.P9010109943221109404

namespace A325318

/-- `and(A162296(n+1), A293228(n+1))` -/
def P9010109943221109404.Spec : Prop :=
  ∀ n, P9010109943221109404.a n = A325318 (n + 1)

end A325318

/-! ## A325318.P9963942013663885088

`and(A034448(∏{p}[n+1, #]), A162296(n+1))`
-/

namespace A325318.P9963942013663885088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034448 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A162296 (n + 1))

end

end A325318.P9963942013663885088

namespace A325318

/-- `and(A034448(∏{p}[n+1, #]), A162296(n+1))` -/
def P9963942013663885088.Spec : Prop :=
  ∀ n, P9963942013663885088.a n = A325318 (n + 1)

end A325318

/-! ## A325318.P17163406049379465443

`A048250(n+1)+A162296(n+1)-A325316(n+1)`
-/

namespace A325318.P17163406049379465443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A325316 (n + 1))

end

end A325318.P17163406049379465443

namespace A325318

/-- `A048250(n+1)+A162296(n+1)-A325316(n+1)` -/
def P17163406049379465443.Spec : Prop :=
  ∀ n, P17163406049379465443.a n = A325318 (n + 1)

end A325318

/-! ## A325318.P9230416043348516942

`and(A000203(n+1)-A048250(n+1), A048250(n+1))`
-/

namespace A325318.P9230416043348516942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1) - A048250 (n + 1)) (A048250 (n + 1))

end

end A325318.P9230416043348516942

namespace A325318

/-- `and(A000203(n+1)-A048250(n+1), A048250(n+1))` -/
def P9230416043348516942.Spec : Prop :=
  ∀ n, P9230416043348516942.a n = A325318 (n + 1)

end A325318

/-!
# A325319: a(n) = -A325313(A228058(n)).

The programs for A325319, there is no canonical definition to state claims against.
-/

/-! ## A325319.P14312741005899286164

`A325320(n+1)+A325379(n+1)`
-/

namespace A325319.P14312741005899286164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + A325379 (n + 1)

end

end A325319.P14312741005899286164

/-! ## A325319.P4590779245187736375

`A325378(n+1)-A325320(n+1)`
-/

namespace A325319.P4590779245187736375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) - A325320 (n + 1)

end

end A325319.P4590779245187736375

/-! ## A325319.P13030410980905254474

`-A325313(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325319.P13030410980905254474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A325313 (A228058 (n + 1)).toNat

end

end A325319.P13030410980905254474

/-! ## A325319.P14864394486943813209

`A228058(n+1)-A389164(n+1)`
-/

namespace A325319.P14864394486943813209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - A389164 (n + 1)

end

end A325319.P14864394486943813209

/-! ## A325319.P6919802100583242737

`A389096(n+1)-A325377(n+1)`
-/

namespace A325319.P6919802100583242737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A325377 (n + 1)

end

end A325319.P6919802100583242737

/-! ## A325319.P2795596117484538654

`(A325379(n+1)+A325378(n+1))/2`
-/

namespace A325319.P2795596117484538654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325379 (n + 1) + A325378 (n + 1) : ℚ) / 2

end

end A325319.P2795596117484538654

/-! ## A325319.P10483183794220814998

`A228058(n+1)+A325320(n+1)-A325377(n+1)`
-/

namespace A325319.P10483183794220814998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325320 (n + 1) - A325377 (n + 1))

end

end A325319.P10483183794220814998

/-! ## A325319.P15947688100105300888

`A228058(n+1)+A325378(n+1)-A389096(n+1)`
-/

namespace A325319.P15947688100105300888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325378 (n + 1) - A389096 (n + 1))

end

end A325319.P15947688100105300888

/-! ## A325319.P8751177440914143809

`A325320(n+1)+A325824(n+1)-A325823(n+1)`
-/

namespace A325319.P8751177440914143809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + (A325824 (n + 1) - A325823 (n + 1))

end

end A325319.P8751177440914143809

/-! ## A325319.P4038014148303058074

`A228058(n+1)+A389096(n+1)-A389203(n+1)`
-/

namespace A325319.P4038014148303058074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A389096 (n + 1) - A389203 (n + 1))

end

end A325319.P4038014148303058074

/-! ## A325319.P9025430481875129558

`A389096(n+1)-(A389164(n+1)+A325320(n+1))`
-/

namespace A325319.P9025430481875129558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - (A389164 (n + 1) + A325320 (n + 1))

end

end A325319.P9025430481875129558

/-! ## A325319.P2379001048815218309

`A389203(n+1)-(A389164(n+1)+A325377(n+1))`
-/

namespace A325319.P2379001048815218309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - (A389164 (n + 1) + A325377 (n + 1))

end

end A325319.P2379001048815218309

/-! ## A325319.P10000400295413017432

`A325824(n+1)-(A389218(n+1)+A389217(n+1))`
-/

namespace A325319.P10000400295413017432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) - (A389218 (n + 1) + A389217 (n + 1))

end

end A325319.P10000400295413017432

/-! ## A325319.P10273992954234141853

`A388997(n+1)*A389167(n+1)-A389164(n+1)`
-/

namespace A325319.P10273992954234141853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388997 (n + 1) * A389167 (n + 1) - A389164 (n + 1)

end

end A325319.P10273992954234141853

/-! ## A325319.P9300968803076172835

`A228058(n+1)-A000203(A389167(n+1))`
-/

namespace A325319.P9300968803076172835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - A000203 (A389167 (n + 1)).toNat

end

end A325319.P9300968803076172835

/-! ## A325319.P6615413045114945513

`A325320(n+1)+A033879(A228058(n+1))`
-/

namespace A325319.P6615413045114945513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + A033879 (A228058 (n + 1)).toNat

end

end A325319.P6615413045114945513

/-! ## A325319.P9015364675973322057

`A325378(n+1)+A325314(A228058(n+1))`
-/

namespace A325319.P9015364675973322057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) + A325314 (A228058 (n + 1)).toNat

end

end A325319.P9015364675973322057

/-! ## A325319.P15392719388473988642

`A325379(n+1)-A325314(A228058(n+1))`
-/

namespace A325319.P15392719388473988642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) - A325314 (A228058 (n + 1)).toNat

end

end A325319.P15392719388473988642

/-!
# A325320: Sum of proper divisors of A228058(n) that are not squarefree; a(n) = -A325314(A228058(n)).

The programs for A325320, there is no canonical definition to state claims against.
-/

/-! ## A325320.P10232003562455299884

`A325319(n+1)-A325379(n+1)`
-/

namespace A325320.P10232003562455299884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) - A325379 (n + 1)

end

end A325320.P10232003562455299884

/-! ## A325320.P2245286658747014656

`A325378(n+1)-A325319(n+1)`
-/

namespace A325320.P2245286658747014656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) - A325319 (n + 1)

end

end A325320.P2245286658747014656

/-! ## A325320.P11755675355927220810

`-A325314(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325320.P11755675355927220810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A325314 (A228058 (n + 1)).toNat

end

end A325320.P11755675355927220810

/-! ## A325320.P13561156974438198060

`A389096(n+1)-A228058(n+1)`
-/

namespace A325320.P13561156974438198060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A228058 (n + 1)

end

end A325320.P13561156974438198060

/-! ## A325320.P6521731525447789523

`A325377(n+1)-A389164(n+1)`
-/

namespace A325320.P6521731525447789523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) - A389164 (n + 1)

end

end A325320.P6521731525447789523

/-! ## A325320.P6223787066734005099

`(A325378(n+1)-A325379(n+1))/2`
-/

namespace A325320.P6223787066734005099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325378 (n + 1) - A325379 (n + 1) : ℚ) / 2

end

end A325320.P6223787066734005099

/-! ## A325320.P11315455928334316940

`A325319(n+1)+A325377(n+1)-A228058(n+1)`
-/

namespace A325320.P11315455928334316940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A325377 (n + 1) - A228058 (n + 1))

end

end A325320.P11315455928334316940

/-! ## A325320.P12737550216998448726

`A228058(n+1)-(A389164(n+1)+A325379(n+1))`
-/

namespace A325320.P12737550216998448726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - (A389164 (n + 1) + A325379 (n + 1))

end

end A325320.P12737550216998448726

/-! ## A325320.P3471778615457950666

`A325378(n+1)+A389164(n+1)-A228058(n+1)`
-/

namespace A325320.P3471778615457950666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) + (A389164 (n + 1) - A228058 (n + 1))

end

end A325320.P3471778615457950666

/-! ## A325320.P3981535830449257142

`A325319(n+1)+A325823(n+1)-A325824(n+1)`
-/

namespace A325320.P3981535830449257142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A325823 (n + 1) - A325824 (n + 1))

end

end A325320.P3981535830449257142

/-! ## A325320.P17082986980985925962

`A389203(n+1)-(A389164(n+1)+A228058(n+1))`
-/

namespace A325320.P17082986980985925962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - (A389164 (n + 1) + A228058 (n + 1))

end

end A325320.P17082986980985925962

/-! ## A325320.P15451409286556273435

`A325377(n+1)+A389096(n+1)-A389203(n+1)`
-/

namespace A325320.P15451409286556273435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A389096 (n + 1) - A389203 (n + 1))

end

end A325320.P15451409286556273435

/-! ## A325320.P2347518202537721327

`A325319(n+1)+A389217(n+1)-A389218(n+1)`
-/

namespace A325320.P2347518202537721327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A389217 (n + 1) - A389218 (n + 1))

end

end A325320.P2347518202537721327

/-! ## A325320.P12667886638510314828

`A325824(n+1)-A389218(n+1)-A389218(n+1)`
-/

namespace A325320.P12667886638510314828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) - A389218 (n + 1) - A389218 (n + 1)

end

end A325320.P12667886638510314828

/-! ## A325320.P12822950098574316035

`A325319(n+1)-A033879(A228058(n+1))`
-/

namespace A325320.P12822950098574316035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) - A033879 (A228058 (n + 1)).toNat

end

end A325320.P12822950098574316035

/-! ## A325320.P795801756682839946

`A325378(n+1)+A325313(A228058(n+1))`
-/

namespace A325320.P795801756682839946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) + A325313 (A228058 (n + 1)).toNat

end

end A325320.P795801756682839946

/-! ## A325320.P12129926361775175531

`A325377(n+1)-A048250(A228058(n+1))`
-/

namespace A325320.P12129926361775175531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) - A048250 (A228058 (n + 1)).toNat

end

end A325320.P12129926361775175531

/-!
# A325321: a(n) = 1 if cototient of n is a square, 0 otherwise.

The programs for A325321, the canonical program `A325321.P4412432402840763013` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325321 has offset 1).

The definition of A325321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325321.P4412432402840763013

`A010052(A051953(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325321

/-- `A010052(A051953(n+1))` -/
def P4412432402840763013.Spec : Prop :=
  ∀ n, P4412432402840763013.a n = A325321 (n + 1)

theorem P4412432402840763013.correct : P4412432402840763013.Spec := by
  intro n
  simp only [A325321, Nat.add_sub_cancel]

end A325321

/-! ## A325321.P18010545583058953063

`char[A063752(n+1)-1]`
-/

namespace A325321.P18010545583058953063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A325321.P18010545583058953063

namespace A325321

/-- `char[A063752(n+1)-1]` -/
def P18010545583058953063.Spec : Prop :=
  ∀ n, (P18010545583058953063.a n : ℤ) = A325321 (n + 1)

end A325321

/-! ## A325321.P18255477682570450750

`and(1, ∏{e}[n-A000010(n+1)+1, #+1])`
-/

namespace A325321.P18255477682570450750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A325321.P18255477682570450750

namespace A325321

/-- `and(1, ∏{e}[n-A000010(n+1)+1, #+1])` -/
def P18255477682570450750.Spec : Prop :=
  ∀ n, (P18255477682570450750.a n : ℤ) = A325321 (n + 1)

end A325321

/-! ## A325321.P4572082568247743703

`char[A023443(A063752(n+1))]`
-/

namespace A325321.P4572082568247743703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063752 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A325321.P4572082568247743703

namespace A325321

/-- `char[A023443(A063752(n+1))]` -/
def P4572082568247743703.Spec : Prop :=
  ∀ n, (P4572082568247743703.a n : ℤ) = A325321 (n + 1)

end A325321

/-! ## A325321.P18348498975106633297

`A010052(A219428(n+1)+1)`
-/

namespace A325321.P18348498975106633297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A219428 (n + 1) + 1).toNat

end

end A325321.P18348498975106633297

namespace A325321

/-- `A010052(A219428(n+1)+1)` -/
def P18348498975106633297.Spec : Prop :=
  ∀ n, P18348498975106633297.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P17678907190303000612

`A010052(n-A109606(n+1))`
-/

namespace A325321.P17678907190303000612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A109606 (n + 1)).toNat

end

end A325321.P17678907190303000612

namespace A325321

/-- `A010052(n-A109606(n+1))` -/
def P17678907190303000612.Spec : Prop :=
  ∀ n, P17678907190303000612.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P5475407631524132170

`and(1, A000005(A016035(n+1)+1))`
-/

namespace A325321.P5475407631524132170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000005 (A016035 (n + 1) + 1).toNat)

end

end A325321.P5475407631524132170

namespace A325321

/-- `and(1, A000005(A016035(n+1)+1))` -/
def P5475407631524132170.Spec : Prop :=
  ∀ n, P5475407631524132170.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P4686392118159409665

`A010052(1-A000010(n+1)+n)`
-/

namespace A325321.P4686392118159409665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (1 - A000010 (n + 1) + (n : ℤ)).toNat

end

end A325321.P4686392118159409665

namespace A325321

/-- `A010052(1-A000010(n+1)+n)` -/
def P4686392118159409665.Spec : Prop :=
  ∀ n, P4686392118159409665.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P17343724676688924077

`A010052(2-A039649(n+1)+n)`
-/

namespace A325321.P17343724676688924077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 - A039649 (n + 1) + (n : ℤ)).toNat

end

end A325321.P17343724676688924077

namespace A325321

/-- `A010052(2-A039649(n+1)+n)` -/
def P17343724676688924077.Spec : Prop :=
  ∀ n, P17343724676688924077.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P13112451196749630896

`A010052(A053650(n+1)/(n+1))`
-/

namespace A325321.P13112451196749630896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A053650 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A325321.P13112451196749630896

namespace A325321

/-- `A010052(A053650(n+1)/(n+1))` -/
def P13112451196749630896.Spec : Prop :=
  ∀ n, P13112451196749630896.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P1230958817392584388

`∏{e}[A051953(n+1), 2-A000034(#)]`
-/

namespace A325321.P1230958817392584388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - A000034 (Nat.factorization (f1 n).natAbs p))

end

end A325321.P1230958817392584388

namespace A325321

/-- `∏{e}[A051953(n+1), 2-A000034(#)]` -/
def P1230958817392584388.Spec : Prop :=
  ∀ n, P1230958817392584388.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P16877220014996881670

`A056594(A032741(A051953(n+1))²)`
-/

namespace A325321.P16877220014996881670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A032741 (A051953 (n + 1)).toNat ^ 2).toNat

end

end A325321.P16877220014996881670

namespace A325321

/-- `A056594(A032741(A051953(n+1))²)` -/
def P16877220014996881670.Spec : Prop :=
  ∀ n, P16877220014996881670.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P13952485824303832898

`A049084(n+1)^A053186(A051953(n+1))`
-/

namespace A325321.P13952485824303832898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049084 (n + 1) : ℚ) ^ (A053186 (A051953 (n + 1)).toNat : ℤ)

end

end A325321.P13952485824303832898

namespace A325321

/-- `A049084(n+1)^A053186(A051953(n+1))` -/
def P13952485824303832898.Spec : Prop :=
  ∀ n, P13952485824303832898.a n = (A325321 (n + 1) : ℚ)

end A325321

/-! ## A325321.P13815678651633261974

`and(A000005(A051953(n+1)), A000005(a(n-1)!))` with `a(0)=1`
-/

namespace A325321.P13815678651633261974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000005 (A051953 (n + 1)).toNat) (A000005 (Nat.factorial (a (n - 1)).toNat))

end

end A325321.P13815678651633261974

namespace A325321

/-- `and(A000005(A051953(n+1)), A000005(a(n-1)!))` -/
def P13815678651633261974.Spec : Prop :=
  ∀ n, P13815678651633261974.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P15390981780641757117

`and(A000005(A051953(n+1)), A032545(a(n-1)+1))` with `a(0)=1`
-/

namespace A325321.P15390981780641757117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000005 (A051953 (n + 1)).toNat) (A032545 (a (n - 1) + 1).toNat)

end

end A325321.P15390981780641757117

namespace A325321

/-- `and(A000005(A051953(n+1)), A032545(a(n-1)+1))` -/
def P15390981780641757117.Spec : Prop :=
  ∀ n, P15390981780641757117.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P6882277739539002479

`A010052(A319700(2*(n+1)))`
-/

namespace A325321.P6882277739539002479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A319700 (2 * (n + 1))).toNat

end

end A325321.P6882277739539002479

namespace A325321

/-- `A010052(A319700(2*(n+1)))` -/
def P6882277739539002479.Spec : Prop :=
  ∀ n, P6882277739539002479.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P4758624951047093013

`A133872(A253641(A051953(n+1)²))`
-/

namespace A325321.P4758624951047093013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A253641 (A051953 (n + 1) ^ 2).toNat).toNat

end

end A325321.P4758624951047093013

namespace A325321

/-- `A133872(A253641(A051953(n+1)²))` -/
def P4758624951047093013.Spec : Prop :=
  ∀ n, P4758624951047093013.a n = A325321 (n + 1)

end A325321

/-! ## A325321.P16913012730851407913

`∏{e}[A014963(n+2)²*A051953(n+1), #+1]%2`
-/

namespace A325321.P16913012730851407913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2 * A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % 2

end

end A325321.P16913012730851407913

namespace A325321

/-- `∏{e}[A014963(n+2)²*A051953(n+1), #+1]%2` -/
def P16913012730851407913.Spec : Prop :=
  ∀ n, (P16913012730851407913.a n : ℤ) = A325321 (n + 1)

end A325321

/-!
# A325322: Palindromes in base 10 that are Brazilian.

The programs for A325322, there is no canonical definition to state claims against.
-/

/-! ## A325322.P12171348701490509228

`lt[A256756(n), A340795(A028310(n))]`
-/

namespace A325322.P12171348701490509228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325322.P12171348701490509228

/-! ## A325322.P16809966104147218734

`A032350(n+4)-A063524(A023029(n+9))`
-/

namespace A325322.P16809966104147218734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 4) - A063524 (A023029 (n + 9)).toNat

end

end A325322.P16809966104147218734

/-! ## A325322.P7896078043314478862

`A032350(n+4)-A063524(A023030(n))`
-/

namespace A325322.P7896078043314478862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 4) - A063524 (A023030 (n + 10)).toNat

end

end A325322.P7896078043314478862

/-! ## A325322.P11040993315297996862

`A032350(n+4)-A147612(A234524(n+1))`
-/

namespace A325322.P11040993315297996862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 4) - A147612 (A234524 (n + 1)).toNat

end

end A325322.P11040993315297996862

/-! ## A325322.P11677972305290959209

`A032350(n+4)-A136522(A037010(n+3))`
-/

namespace A325322.P11677972305290959209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 4) - A136522 (A037010 (n + 3)).toNat

end

end A325322.P11677972305290959209

/-!
# A325323: Palindromes in base 10 that are not Brazilian.

The programs for A325323, there is no canonical definition to state claims against.
-/

/-! ## A325323.P16525194090788674574

`∩[A002113(n+1), A220570(n+1)]`
-/

namespace A325323.P16525194090788674574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325323.P16525194090788674574

/-! ## A325323.P5139012702680744263

`∩[A061917(n+1), A220570(n+1)]`
-/

namespace A325323.P5139012702680744263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325323.P5139012702680744263

/-! ## A325323.P10001358253092095584

`∩[A083136(n+1), A220570(n+1)]`
-/

namespace A325323.P10001358253092095584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325323.P10001358253092095584

/-! ## A325323.P14993649958396499978

`∩[A169824(n+1), A220570(n+1)]`
-/

namespace A325323.P14993649958396499978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325323.P14993649958396499978

/-! ## A325323.P10587838540695890516

`∩[A220570(n+1), A324988(n+1)]`
-/

namespace A325323.P10587838540695890516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325323.P10587838540695890516

/-! ## A325323.P5733500253214860900

`∩[A220570(n+1), A334140(n+1)]`
-/

namespace A325323.P5733500253214860900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325323.P5733500253214860900

/-! ## A325323.P15183683446893984779

`∩[A080716(n+1), A220570(n+1)]`
-/

namespace A325323.P15183683446893984779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325323.P15183683446893984779

/-! ## A325323.P2922983335111536233

`record[A055483(A220570(n+1))]`
-/

namespace A325323.P2922983335111536233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A220570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325323.P2922983335111536233

/-!
# A325324: Number of integer partitions of n whose differences (with the last part taken to be 0) are distinct.

The programs for A325324, there is no canonical definition to state claims against.
-/

/-! ## A325324.P4585870884585309194

`A000009(gcd(2, A036163(n+2))+n)-A240853(n)`
-/

namespace A325324.P4585870884585309194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.gcd 2 (A036163 (n + 2)) + n) - A240853 n

end

end A325324.P4585870884585309194

/-!
# A325325: Number of integer partitions of n with distinct differences between successive parts.

The programs for A325325, there is no canonical definition to state claims against.
-/

/-! ## A325325.P5889399404769478869

`A000041(n)-A389919(n)`
-/

namespace A325325.P5889399404769478869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A389919 n

end

end A325325.P5889399404769478869

/-! ## A325325.P4287801140348781002

`A213598(n)-A389919(n)`
-/

namespace A325325.P4287801140348781002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A389919 n

end

end A325325.P4287801140348781002

/-! ## A325325.P15937946109286761015

`∑[A002865(n)]-A389919(n)`
-/

namespace A325325.P15937946109286761015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A389919 n

end

end A325325.P15937946109286761015

/-! ## A325325.P4036631957710280282

`A133041(n)-n-A389919(n)`
-/

namespace A325325.P4036631957710280282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A389919 n

end

end A325325.P4036631957710280282

/-! ## A325325.P5774539962066667409

`∑[A085811(n+3)]-A389919(n)`
-/

namespace A325325.P5774539962066667409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A389919 n

end

end A325325.P5774539962066667409

/-!
# A325326: Heinz numbers of integer partitions covering an initial interval of positive integers with distinct multiplicities.

The programs for A325326, there is no canonical definition to state claims against.
-/

/-! ## A325326.P3717889698648520758

`record[A071364(A130091(n+1))]`
-/

namespace A325326.P3717889698648520758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A130091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325326.P3717889698648520758

/-! ## A325326.P8912781439190933789

`record[A327498(A055932(n+1))]`
-/

namespace A325326.P8912781439190933789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325326.P8912781439190933789

/-! ## A325326.P11259710480611177521

`record[A071364(A319272(n+1))]`
-/

namespace A325326.P11259710480611177521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A319272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325326.P11259710480611177521

/-! ## A325326.P13078981629340344085

`record[A327498(A083259(n+1))]`
-/

namespace A325326.P13078981629340344085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A083259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325326.P13078981629340344085

/-! ## A325326.P6508427914545090430

`filter[A055932(n+1), A351564(#)]`
-/

namespace A325326.P6508427914545090430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A325326.P6508427914545090430

/-! ## A325326.P1555801270444783186

`filter[A130091(n+1), A341629(#)]`
-/

namespace A325326.P1555801270444783186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A325326.P1555801270444783186

/-! ## A325326.P1091166185326822335

`filter[A319272(n+1), A341629(#)]`
-/

namespace A325326.P1091166185326822335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A325326.P1091166185326822335

/-! ## A325326.P2509057899282083839

`∩[A055932(n+1), A130091(n+1)]`
-/

namespace A325326.P2509057899282083839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325326.P2509057899282083839

/-! ## A325326.P800002445480768845

`∩[A055932(n+1), A319272(n+1)]`
-/

namespace A325326.P800002445480768845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325326.P800002445480768845

/-! ## A325326.P16256422801208253075

`record[A327498(n+1)/A335286(n+1)]`
-/

namespace A325326.P16256422801208253075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327498 (n + 1) : ℚ) / (A335286 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325326.P16256422801208253075

/-!
# A325327: Heinz numbers of multiples of triangular partitions, or finite arithmetic progressions with offset 0.

The programs for A325327, there is no canonical definition to state claims against.
-/

/-! ## A325327.P1516959104157016811

`∩[A243058(n+1), A359397(n+1)]`
-/

namespace A325327.P1516959104157016811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325327.P1516959104157016811

/-! ## A325327.P16878211454291011834

`∩[A242417(n+1), A359397(n+1)]`
-/

namespace A325327.P16878211454291011834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325327.P16878211454291011834

/-! ## A325327.P17553669260178032677

`record[A243057(A325364(n+1))]`
-/

namespace A325327.P17553669260178032677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (A325364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325327.P17553669260178032677

/-! ## A325327.P16537796219265423951

`∩[A243058(n+1), A325364(n+1)]`
-/

namespace A325327.P16537796219265423951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325327.P16537796219265423951

/-! ## A325327.P13103481419287029252

`∩[A243058(n+1), A289997(n+1)]`
-/

namespace A325327.P13103481419287029252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325327.P13103481419287029252

/-!
# A325328: Heinz numbers of finite arithmetic progressions (integer partitions with equal differences).

The programs for A325328, there is no canonical definition to state claims against.
-/

/-! ## A325328.P16963743680977734245

`lt[A355523(n+1), 2]+1`
-/

namespace A325328.P16963743680977734245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355523 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325328.P16963743680977734245

/-! ## A325328.P6188462280199353282

`∪[∑[(n+1)²], A102466(n+1)]`
-/

namespace A325328.P6188462280199353282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A325328.P6188462280199353282

/-! ## A325328.P14202501683293447746

`record[gcd(n+2, A035322(n+1))-1]`
-/

namespace A325328.P14202501683293447746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 2 : ℤ) (A035322 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325328.P14202501683293447746

/-! ## A325328.P16612779604739944478

`∪[A102466(n+1), A005919(n)]`
-/

namespace A325328.P16612779604739944478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325328.P16612779604739944478

/-! ## A325328.P6308131936125759469

`∪[A102466(n+1), A006859(n)]`
-/

namespace A325328.P6308131936125759469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325328.P6308131936125759469

/-! ## A325328.P13708763738748058393

`∪[A102466(n+1), A008038(n)]`
-/

namespace A325328.P13708763738748058393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325328.P13708763738748058393

/-! ## A325328.P11278008573768855048

`∪[A102466(n+1), A008147(n)]`
-/

namespace A325328.P11278008573768855048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008147 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325328.P11278008573768855048

/-! ## A325328.P11411368406646195090

`∪[A102466(n+1), A008385(n)]`
-/

namespace A325328.P11411368406646195090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008385 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325328.P11411368406646195090

/-! ## A325328.P5928717183382039334

`∪[A102466(n+1), A010018(n)]`
-/

namespace A325328.P5928717183382039334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325328.P5928717183382039334

/-! ## A325328.P6619340074478921816

`∪[A102466(n+1), A014696(n)]`
-/

namespace A325328.P6619340074478921816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014696 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325328.P6619340074478921816

/-!
# A325330: Number of integer partitions of n whose multiplicities have multiplicities that cover an initial interval of positive integers.

The programs for A325330, there is no canonical definition to state claims against.
-/

/-! ## A325330.P1411813083352361163

`A112231(A065040(n)+A000041(n))`
-/

namespace A325330.P1411813083352361163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (A065040 n + A000041 n).toNat

end

end A325330.P1411813083352361163

/-! ## A325330.P8794645940964459255

`A347457(A000041(n))-A241735(n)`
-/

namespace A325330.P8794645940964459255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (A000041 n).toNat - A241735 n

end

end A325330.P8794645940964459255

/-! ## A325330.P13347453085505801816

`A055571(A344740(n)+1)`
-/

namespace A325330.P13347453085505801816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A344740 n + 1).toNat

end

end A325330.P13347453085505801816

/-! ## A325330.P8960936649101947073

`A257500(A239945(n+1))`
-/

namespace A325330.P8960936649101947073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (A239945 (n + 1)).toNat

end

end A325330.P8960936649101947073

/-! ## A325330.P4187800603751943906

`A319160(A250266(n+1))`
-/

namespace A325330.P4187800603751943906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319160 (A250266 (n + 1)).toNat

end

end A325330.P4187800603751943906

/-!
# A325331: Number of integer partitions of n whose multiplicities appear with distinct multiplicities that cover an initial interval of positive integers.

The programs for A325331, there is no canonical definition to state claims against.
-/

/-! ## A325331.P17217163747317432289

`A002471(A325537(n+1)+A143448(2*n+3))`
-/

namespace A325331.P17217163747317432289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (A325537 (n + 1) + A143448 (2 * n + 3)).toNat

end

end A325331.P17217163747317432289

/-!
# A325332: Number of totally abnormal integer partitions of n.

The programs for A325332, there is no canonical definition to state claims against.
-/

/-! ## A325332.P3919057130348158662

`A257564(7*A115118(n))`
-/

namespace A325332.P3919057130348158662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (7 * A115118 n).toNat

end

end A325332.P3919057130348158662

/-! ## A325332.P10025528046567756267

`A322390(A023927(n)+n)`
-/

namespace A325332.P10025528046567756267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (A023927 n + (n : ℤ)).toNat

end

end A325332.P10025528046567756267

/-! ## A325332.P16888674626718371066

`A322390(A028240(n)+n)`
-/

namespace A325332.P16888674626718371066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (A028240 n + (n : ℤ)).toNat

end

end A325332.P16888674626718371066

/-! ## A325332.P1779461079706118923

`A322390(A151839(n)+n)`
-/

namespace A325332.P1779461079706118923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (A151839 n + (n : ℤ)).toNat

end

end A325332.P1779461079706118923

/-! ## A325332.P17494884657230614494

`A322390(A280700(round(2^(n-1))))`
-/

namespace A325332.P17494884657230614494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (A280700 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat).toNat

end

end A325332.P17494884657230614494

/-!
# A325333: Number of integer partitions of n whose multiplicities all appear the same number of times.

The programs for A325333, there is no canonical definition to state claims against.
-/

/-! ## A325333.P10309913962549828582

`A091863(A266771(n))`
-/

namespace A325333.P10309913962549828582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A266771 n).toNat

end

end A325333.P10309913962549828582

/-! ## A325333.P17326348592835043471

`A111660(A123630(n+1))+A060027(n)`
-/

namespace A325333.P17326348592835043471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A123630 (n + 1)).toNat + A060027 n

end

end A325333.P17326348592835043471

/-! ## A325333.P1435526525303891725

`A325245(n)+A333190(n)+A005843(A172534(n+1))`
-/

namespace A325333.P1435526525303891725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325245 n + (A333190 n + A005843 (A172534 (n + 1)).toNat)

end

end A325333.P1435526525303891725

/-! ## A325333.P1652619430275431286

`A007496(A113444(n))+A001400(n)`
-/

namespace A325333.P1652619430275431286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (A113444 n).toNat + A001400 n

end

end A325333.P1652619430275431286

/-! ## A325333.P9998436267683526910

`A340101(A316980(n))+A229093(n)`
-/

namespace A325333.P9998436267683526910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (A316980 n).toNat + A229093 n

end

end A325333.P9998436267683526910

/-!
# A325334: Number of integer partitions of n with adjusted frequency depth 3 whose parts cover an initial interval of positive integers.

The programs for A325334, the canonical program `A325334.P3560407124782299478` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325334 has offset 0).

The definition of A325334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325334.P3560407124782299478

`A007862(abs(1-n)+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325334

/-- `A007862(abs(1-n)+1)-1` -/
def P3560407124782299478.Spec : Prop :=
  ∀ n, P3560407124782299478.a n = A325334 n

theorem P3560407124782299478.correct : P3560407124782299478.Spec := by
  intro n
  simp only [A325334]

end A325334

/-! ## A325334.P16793197806000264525

`A028310(∑{d}[n, A073423(#)])-1`
-/

namespace A325334.P16793197806000264525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A073423 d).toNat - 1

end

end A325334.P16793197806000264525

namespace A325334

/-- `A028310(∑{d}[n, A073423(#)])-1` -/
def P16793197806000264525.Spec : Prop :=
  ∀ n, P16793197806000264525.a n = A325334 n

end A325334

/-! ## A325334.P4039212472925837342

`∑{d}[n, A073423(#)]-A057427(n)`
-/

namespace A325334.P4039212472925837342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073423 d - A057427 n

end

end A325334.P4039212472925837342

namespace A325334

/-- `∑{d}[n, A073423(#)]-A057427(n)` -/
def P4039212472925837342.Spec : Prop :=
  ∀ n, P4039212472925837342.a n = A325334 n

end A325334

/-! ## A325334.P12374367194728861935

`1-4/2+A007862(A028310(n))`
-/

namespace A325334.P12374367194728861935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + (A007862 (A028310 n).toNat : ℚ)

end

end A325334.P12374367194728861935

namespace A325334

/-- `1-4/2+A007862(A028310(n))` -/
def P12374367194728861935.Spec : Prop :=
  ∀ n, P12374367194728861935.a n = (A325334 n : ℚ)

end A325334

/-! ## A325334.P4596535235075089260

`∑{d}[n, A073424(#)]-char[A038722(n+1)]`
-/

namespace A325334.P4596535235075089260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073424 d - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A325334.P4596535235075089260

namespace A325334

/-- `∑{d}[n, A073424(#)]-char[A038722(n+1)]` -/
def P4596535235075089260.Spec : Prop :=
  ∀ n, P4596535235075089260.a n = A325334 n

end A325334

/-! ## A325334.P8038050667918012951

`A000065(n)-A389920(n)`
-/

namespace A325334.P8038050667918012951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A389920 n

end

end A325334.P8038050667918012951

namespace A325334

/-- `A000065(n)-A389920(n)` -/
def P8038050667918012951.Spec : Prop :=
  ∀ n, P8038050667918012951.a n = A325334 n

end A325334

/-! ## A325334.P2218008594405845090

`A088722(abs(1-n)+n+1)`
-/

namespace A325334.P2218008594405845090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat

end

end A325334.P2218008594405845090

namespace A325334

/-- `A088722(abs(1-n)+n+1)` -/
def P2218008594405845090.Spec : Prop :=
  ∀ n, P2218008594405845090.a n = A325334 n

end A325334

/-! ## A325334.P8657956504038154498

`A129308(abs(1-n)+1+n)-1`
-/

namespace A325334.P8657956504038154498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat - 1

end

end A325334.P8657956504038154498

namespace A325334

/-- `A129308(abs(1-n)+1+n)-1` -/
def P8657956504038154498.Spec : Prop :=
  ∀ n, P8657956504038154498.a n = A325334 n

end A325334

/-! ## A325334.P14146995959584071578

`A195155(2*A028310(n))-2`
-/

namespace A325334.P14146995959584071578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (2 * A028310 n).toNat - 2

end

end A325334.P14146995959584071578

namespace A325334

/-- `A195155(2*A028310(n))-2` -/
def P14146995959584071578.Spec : Prop :=
  ∀ n, P14146995959584071578.a n = A325334 n

end A325334

/-! ## A325334.P16958109109125069191

`A088722(A004277(n))+A000035(2*n)`
-/

namespace A325334.P16958109109125069191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A004277 n).toNat + A000035 (2 * n)

end

end A325334.P16958109109125069191

namespace A325334

/-- `A088722(A004277(n))+A000035(2*n)` -/
def P16958109109125069191.Spec : Prop :=
  ∀ n, P16958109109125069191.a n = A325334 n

end A325334

/-! ## A325334.P17531043657260238014

`∑{d}[n, A278169(A278511(#))]`
-/

namespace A325334.P17531043657260238014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A278169 (A278511 d).toNat

end

end A325334.P17531043657260238014

namespace A325334

/-- `∑{d}[n, A278169(A278511(#))]` -/
def P17531043657260238014.Spec : Prop :=
  ∀ n, P17531043657260238014.a n = A325334 n

end A325334

/-! ## A325334.P6347083215338373591

`A070198(n)%A007862(A233583(n+1))`
-/

namespace A325334.P6347083215338373591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A007862 (A233583 (n + 1)).toNat)

end

end A325334.P6347083215338373591

namespace A325334

/-- `A070198(n)%A007862(A233583(n+1))` -/
def P6347083215338373591.Spec : Prop :=
  ∀ n, P6347083215338373591.a n = A325334 n

end A325334

/-!
# A325335: Number of integer partitions of n with adjusted frequency depth 4 whose parts cover an initial interval of positive integers.

The programs for A325335, there is no canonical definition to state claims against.
-/

/-! ## A325335.P17740034792962887433

`A325336(A077169(n+1)-1)`
-/

namespace A325335.P17740034792962887433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325336 (A077169 (n + 1) - 1).toNat

end

end A325335.P17740034792962887433

/-!
# A325336: Triangle read by rows where T(n,k) is the number of integer partitions of n with adjusted frequency depth k whose parts cover an initial interval of positive integers.

The programs for A325336, there is no canonical definition to state claims against.
-/

/-! ## A325336.P10600075074135630403

`and(A274537(n), A297840(n+1))`
-/

namespace A325336.P10600075074135630403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A274537 n) (A297840 (n + 1))

end

end A325336.P10600075074135630403

/-! ## A325336.P557446897059753299

`A259481(A269129(n)+A010894(n))`
-/

namespace A325336.P557446897059753299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A269129 n + A010894 (n + 21)).toNat

end

end A325336.P557446897059753299

/-! ## A325336.P11877721540779550756

`A005136(lcm(A121450(n+1), A335951(n)))`
-/

namespace A325336.P11877721540779550756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.lcm (A121450 (n + 1)) (A335951 n))

end

end A325336.P11877721540779550756

/-! ## A325336.P16839430336779790344

`and(A006466(A294950(n)), A265373(n+1))`
-/

namespace A325336.P16839430336779790344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006466 (A294950 n).toNat) (A265373 (n + 1))

end

end A325336.P16839430336779790344

/-! ## A325336.P4333851538621057439

`A326644(A164980(2*(n+1))*A265373(n+1))`
-/

namespace A325336.P4333851538621057439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 (A164980 (2 * (n + 1)) * A265373 (n + 1)).toNat

end

end A325336.P4333851538621057439

/-!
# A325337: Numbers whose prime exponents are distinct and cover an initial interval of positive integers.

The programs for A325337, there is no canonical definition to state claims against.
-/

/-! ## A325337.P2874555007132165540

`eq[1, A104725(n)%5]`
-/

namespace A325337.P2874555007132165540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104725 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325337.P2874555007132165540

/-! ## A325337.P10320204397223389930

`eq[1, A050379(n+1)%4]+1`
-/

namespace A325337.P10320204397223389930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050379 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325337.P10320204397223389930

/-! ## A325337.P9056459600822340698

`eq[1, A296121(n+1)%7]+1`
-/

namespace A325337.P9056459600822340698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296121 (n + 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325337.P9056459600822340698

/-! ## A325337.P5423737669909813463

`lt[(11%A329385(n+1))², 2]+1`
-/

namespace A325337.P5423737669909813463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A329385 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325337.P5423737669909813463

/-! ## A325337.P16522514942350973669

`eq[ceil(sin(n)²), A093318(n+1)]+1`
-/

namespace A325337.P16522514942350973669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325337.P16522514942350973669

/-! ## A325337.P15775311257458781607

`eq[ceil(sin(n)²), A143519(n+1)]+1`
-/

namespace A325337.P15775311257458781607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325337.P15775311257458781607

/-! ## A325337.P12156706981982569510

`A336418(A133137(n+1))`
-/

namespace A325337.P12156706981982569510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (A133137 (n + 1)).toNat

end

end A325337.P12156706981982569510

/-! ## A325337.P7709410402855592398

`eq[1, A007954(A104725(n))]`
-/

namespace A325337.P7709410402855592398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A104725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325337.P7709410402855592398

/-! ## A325337.P1357774755477194093

`eq[A074206(n), A364360(n)]`
-/

namespace A325337.P1357774755477194093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325337.P1357774755477194093

/-! ## A325337.P15920143481926532515

`filter[A179983(n+1), A091862(#)]`
-/

namespace A325337.P15920143481926532515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A325337.P15920143481926532515

/-!
# A325338: Number of partitions of n with odd minimal and maximal parts.

The programs for A325338, there is no canonical definition to state claims against.
-/

/-! ## A325338.P11280750106201630644

`Δ[A306145(n)]-A325345(n+1)`
-/

namespace A325338.P11280750106201630644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325345 (n + 1)

end

end A325338.P11280750106201630644

/-! ## A325338.P17834412726835653510

`A026804(n+1)-A325344(n+1)`
-/

namespace A325338.P17834412726835653510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) - A325344 (n + 1)

end

end A325338.P17834412726835653510

/-! ## A325338.P16599594639964490624

`A027193(n+1)-A325345(n+1)`
-/

namespace A325338.P16599594639964490624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (n + 1) - A325345 (n + 1)

end

end A325338.P16599594639964490624

/-! ## A325338.P9484722279989023354

`A391225(n+1)-A325346(n+1)`
-/

namespace A325338.P9484722279989023354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391225 (n + 1) - A325346 (n + 1)

end

end A325338.P9484722279989023354

/-! ## A325338.P8132240918641094000

`A026804(n+1)+A325346(n+1)-Δ[A304620(n)]`
-/

namespace A325338.P8132240918641094000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) + (A325346 (n + 1) - (f1 (n + 1) - f1 n))

end

end A325338.P8132240918641094000

/-!
# A325339: Number of divisors of n^3 that are <= n.

The programs for A325339, there is no canonical definition to state claims against.
-/

/-! ## A325339.P6091924962918849457

`∑{d}[(n+1)², A102448(#)]`
-/

namespace A325339.P6091924962918849457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102448 d

end

end A325339.P6091924962918849457

/-! ## A325339.P2300237209898399168

`A334461(floor(sqrt((n+1)^6+3))/A032742(n+1))`
-/

namespace A325339.P2300237209898399168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (SequenceMachineLib.roundAway ((Nat.sqrt ((n + 1) ^ 6 + 3) : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A325339.P2300237209898399168

/-! ## A325339.P2103341473694305712

`A347516(Δ[∑[n]²])`
-/

namespace A325339.P2103341473694305712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A325339.P2103341473694305712

/-! ## A325339.P7549203350653535056

`A347516(floor(sqrt((n+1)^6+3)))%10`
-/

namespace A325339.P7549203350653535056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347516 (Nat.sqrt ((n + 1) ^ 6 + 3))) 10

end

end A325339.P7549203350653535056

/-!
# A325340: Number of partitions p of n such that min(p) < (number of parts of p) < max(p).

The programs for A325340, there is no canonical definition to state claims against.
-/

/-! ## A325340.P2431017483311511810

`A367069(A367212(n))`
-/

namespace A325340.P2431017483311511810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367069 (A367212 n).toNat

end

end A325340.P2431017483311511810

/-! ## A325340.P18389293250259131372

`A054404(A182377(n+1)+A034887(n))`
-/

namespace A325340.P18389293250259131372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A182377 (n + 1) + A034887 n).toNat

end

end A325340.P18389293250259131372

/-!
# A325341: Number of partitions p of n such that min(p) <= (number of parts of p) < max(p).

The programs for A325341, there is no canonical definition to state claims against.
-/

/-! ## A325341.P4495563396192826006

`A000041(n+1)-A003106(n+1)-A064174(n+1)`
-/

namespace A325341.P4495563396192826006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A003106 (n + 1) - A064174 (n + 1)

end

end A325341.P4495563396192826006

/-! ## A325341.P8381602756274892915

`A064173(n+1)-A003106(n+1)`
-/

namespace A325341.P8381602756274892915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - A003106 (n + 1)

end

end A325341.P8381602756274892915

/-! ## A325341.P12383812631386332602

`A325343(n+1)-A047993(n+1)`
-/

namespace A325341.P12383812631386332602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) - A047993 (n + 1)

end

end A325341.P12383812631386332602

/-! ## A325341.P3717219236951154562

`A064174(n+1)-(A047993(n+1)+A003106(n+1))`
-/

namespace A325341.P3717219236951154562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - (A047993 (n + 1) + A003106 (n + 1))

end

end A325341.P3717219236951154562

/-! ## A325341.P18159210272336644749

`A039900(n+1)-A064174(n+1)`
-/

namespace A325341.P18159210272336644749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 (n + 1) - A064174 (n + 1)

end

end A325341.P18159210272336644749

/-! ## A325341.P3499632771310896611

`A039899(n+1)+A064173(n+1)-A240057(n+1)`
-/

namespace A325341.P3499632771310896611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 (n + 1) + (A064173 (n + 1) - A240057 (n + 1))

end

end A325341.P3499632771310896611

/-! ## A325341.P12992189937816032517

`A325343(n+1)-A063995(∑[2*n]+1)`
-/

namespace A325341.P12992189937816032517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) - A063995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A325341.P12992189937816032517

/-! ## A325341.P17940613151025236448

`A325343(n+1)-A105806(∑[n]+1)`
-/

namespace A325341.P17940613151025236448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) - A105806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A325341.P17940613151025236448

/-!
# A325342: Number of partitions p of n such that min(p) < (number of parts of p) <= max(p).

The programs for A325342, there is no canonical definition to state claims against.
-/

/-! ## A325342.P13563905148368284567

`A000041(n+1)-A003114(n+1)-A064173(n+1)`
-/

namespace A325342.P13563905148368284567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A003114 (n + 1) - A064173 (n + 1)

end

end A325342.P13563905148368284567

/-! ## A325342.P7752570882152101843

`A064174(n+1)-A003114(n+1)`
-/

namespace A325342.P7752570882152101843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A003114 (n + 1)

end

end A325342.P7752570882152101843

/-! ## A325342.P6550660390011429443

`A325343(n+1)-A006141(n+1)`
-/

namespace A325342.P6550660390011429443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) - A006141 (n + 1)

end

end A325342.P6550660390011429443

/-! ## A325342.P15476083265422712996

`A039899(n+1)-A064173(n+1)`
-/

namespace A325342.P15476083265422712996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 (n + 1) - A064173 (n + 1)

end

end A325342.P15476083265422712996

/-! ## A325342.P11926212353948920773

`A039899(n+1)+A047993(n+1)-A064174(n+1)`
-/

namespace A325342.P11926212353948920773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 (n + 1) + (A047993 (n + 1) - A064174 (n + 1))

end

end A325342.P11926212353948920773

/-! ## A325342.P12157952926906289074

`A240057(n+1)-(A064173(n+1)+A003106(n+1))`
-/

namespace A325342.P12157952926906289074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240057 (n + 1) - (A064173 (n + 1) + A003106 (n + 1))

end

end A325342.P12157952926906289074

/-! ## A325342.P7381851605221554613

`A325343(n+1)-A350889(∑[n]+1)`
-/

namespace A325342.P7381851605221554613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) - A350889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A325342.P7381851605221554613

/-!
# A325343: Number of partitions p of n such that min(p) <= (number of parts of p) <= max(p).

The programs for A325343, there is no canonical definition to state claims against.
-/

/-! ## A325343.P5188444714141503064

`A000041(n+1)-A003106(n+1)-A064173(n+1)`
-/

namespace A325343.P5188444714141503064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A003106 (n + 1) - A064173 (n + 1)

end

end A325343.P5188444714141503064

/-! ## A325343.P10820404536636172345

`A325341(n+1)+A047993(n+1)`
-/

namespace A325343.P10820404536636172345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325341 (n + 1) + A047993 (n + 1)

end

end A325343.P10820404536636172345

/-! ## A325343.P10036112029780570003

`A064174(n+1)-A003106(n+1)`
-/

namespace A325343.P10036112029780570003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A003106 (n + 1)

end

end A325343.P10036112029780570003

/-! ## A325343.P8921928392798330887

`A039900(n+1)-A064173(n+1)`
-/

namespace A325343.P8921928392798330887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 (n + 1) - A064173 (n + 1)

end

end A325343.P8921928392798330887

/-! ## A325343.P16757068624635252331

`A039900(n+1)+A047993(n+1)-A064174(n+1)`
-/

namespace A325343.P16757068624635252331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 (n + 1) + (A047993 (n + 1) - A064174 (n + 1))

end

end A325343.P16757068624635252331

/-! ## A325343.P8510209812751961382

`A325342(n+1)+A006141(n+1)`
-/

namespace A325343.P8510209812751961382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325342 (n + 1) + A006141 (n + 1)

end

end A325343.P8510209812751961382

/-! ## A325343.P18381003438807851247

`A006141(n+1)+A064174(n+1)-A003114(n+1)`
-/

namespace A325343.P18381003438807851247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 1) + (A064174 (n + 1) - A003114 (n + 1))

end

end A325343.P18381003438807851247

/-! ## A325343.P4671243489842867248

`A006141(n+1)+A039899(n+1)-A064173(n+1)`
-/

namespace A325343.P4671243489842867248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 1) + (A039899 (n + 1) - A064173 (n + 1))

end

end A325343.P4671243489842867248

/-! ## A325343.P11132229206746573815

`A039899(n+1)+A064174(n+1)-A240057(n+1)`
-/

namespace A325343.P11132229206746573815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 (n + 1) + (A064174 (n + 1) - A240057 (n + 1))

end

end A325343.P11132229206746573815

/-! ## A325343.P2405525604239721798

`A325341(n+1)+A105806(∑[n]+1)`
-/

namespace A325343.P2405525604239721798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325341 (n + 1) + A105806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A325343.P2405525604239721798

/-!
# A325344: Number of partitions of n with even minimal part and odd maximal part.

The programs for A325344, there is no canonical definition to state claims against.
-/

/-! ## A325344.P14419133573259608401

`Δ[A304620(n)]-A325346(n+1)`
-/

namespace A325344.P14419133573259608401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325346 (n + 1)

end

end A325344.P14419133573259608401

/-! ## A325344.P1904725162571743683

`A026804(n+1)-A325338(n+1)`
-/

namespace A325344.P1904725162571743683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) - A325338 (n + 1)

end

end A325344.P1904725162571743683

/-! ## A325344.P12291172594021686519

`A027187(n+1)-A325346(n+1)`
-/

namespace A325344.P12291172594021686519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (n + 1) - A325346 (n + 1)

end

end A325344.P12291172594021686519

/-! ## A325344.P10476251240575338641

`A390092(n+1)-A325345(n+1)`
-/

namespace A325344.P10476251240575338641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390092 (n + 1) - A325345 (n + 1)

end

end A325344.P10476251240575338641

/-! ## A325344.P7980337825176299244

`A325345(n+1)+Δ[A304620(n)]-A026805(n+1)`
-/

namespace A325344.P7980337825176299244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325345 (n + 1) + (f1 (n + 1) - f1 n - A026805 (n + 1))

end

end A325344.P7980337825176299244

/-!
# A325345: Number of partitions of n with odd minimal part and even maximal part.

The programs for A325345, there is no canonical definition to state claims against.
-/

/-! ## A325345.P16473317449522293169

`A026805(n+1)-A325346(n+1)`
-/

namespace A325345.P16473317449522293169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026805 (n + 1) - A325346 (n + 1)

end

end A325345.P16473317449522293169

/-! ## A325345.P3358149584860144064

`Δ[A000070(n)]-A026804(n+1)-A325346(n+1)`
-/

namespace A325345.P3358149584860144064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026804 (n + 1) - A325346 (n + 1)

end

end A325345.P3358149584860144064

/-! ## A325345.P5012810516052070891

`record[A035363(n)]-A026804(n+1)-A325346(n+1)`
-/

namespace A325345.P5012810516052070891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026804 (n + 1) - A325346 (n + 1)

end

end A325345.P5012810516052070891

/-! ## A325345.P9001933619245278810

`record[A035444(n)]-A026804(n+1)-A325346(n+1)`
-/

namespace A325345.P9001933619245278810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026804 (n + 1) - A325346 (n + 1)

end

end A325345.P9001933619245278810

/-! ## A325345.P3484323825952945496

`A000041(n+1)-A026804(n+1)-A325346(n+1)`
-/

namespace A325345.P3484323825952945496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A026804 (n + 1) - A325346 (n + 1)

end

end A325345.P3484323825952945496

/-! ## A325345.P7960211077982484502

`A026807(∑[n]+1)-A026804(n+1)-A325346(n+1)`
-/

namespace A325345.P7960211077982484502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A026804 (n + 1) - A325346 (n + 1)

end

end A325345.P7960211077982484502

/-! ## A325345.P16491990304981925455

`A137639(A133263(n))-A000007(n)-A325346(n+1)`
-/

namespace A325345.P16491990304981925455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137639 (A133263 n).toNat - A000007 n - A325346 (n + 1)

end

end A325345.P16491990304981925455

/-! ## A325345.P10133325709205703658

`A137639(A133263(n))%A008860(n)-A325346(n+1)`
-/

namespace A325345.P10133325709205703658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137639 (A133263 n).toNat) (A008860 n) - A325346 (n + 1)

end

end A325345.P10133325709205703658

/-! ## A325345.P6732004397980443528

`A035363(A005843(n+1))-A026804(n+1)-A325346(n+1)`
-/

namespace A325345.P6732004397980443528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 (n + 1)).toNat - A026804 (n + 1) - A325346 (n + 1)

end

end A325345.P6732004397980443528

/-! ## A325345.P14637780697023834997

`A137639(A133263(n))-A010051(2*(n+1))-A325346(n+1)`
-/

namespace A325345.P14637780697023834997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137639 (A133263 n).toNat - A010051 (2 * (n + 1)) - A325346 (n + 1)

end

end A325345.P14637780697023834997

/-!
# A325346: Number of partitions of n with even minimal and maximal parts.

The programs for A325346, there is no canonical definition to state claims against.
-/

/-! ## A325346.P13933913376527005706

`A026805(n+1)-A325345(n+1)`
-/

namespace A325346.P13933913376527005706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026805 (n + 1) - A325345 (n + 1)

end

end A325346.P13933913376527005706

/-! ## A325346.P9262229140935939212

`Δ[A000070(n)]-A026804(n+1)-A325345(n+1)`
-/

namespace A325346.P9262229140935939212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026804 (n + 1) - A325345 (n + 1)

end

end A325346.P9262229140935939212

/-! ## A325346.P10455530314995384936

`record[A035363(n)]-(A325345(n+1)+A026804(n+1))`
-/

namespace A325346.P10455530314995384936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A325345 (n + 1) + A026804 (n + 1))

end

end A325346.P10455530314995384936

/-! ## A325346.P4218595412166295883

`A000041(n+1)-A026804(n+1)-A325345(n+1)`
-/

namespace A325346.P4218595412166295883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A026804 (n + 1) - A325345 (n + 1)

end

end A325346.P4218595412166295883

/-! ## A325346.P10067546608335495670

`A026807(∑[n]+1)-A026804(n+1)-A325345(n+1)`
-/

namespace A325346.P10067546608335495670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A026804 (n + 1) - A325345 (n + 1)

end

end A325346.P10067546608335495670

/-! ## A325346.P14822671426691300063

`A035363(A005843(n+1))-A026804(n+1)-A325345(n+1)`
-/

namespace A325346.P14822671426691300063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 (n + 1)).toNat - A026804 (n + 1) - A325345 (n + 1)

end

end A325346.P14822671426691300063

/-! ## A325346.P13366396908857610394

`A026794(A000217(n+1)+1)-A026804(n+1)-A325345(n+1)`
-/

namespace A325346.P13366396908857610394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000217 (n + 1) + 1).toNat - A026804 (n + 1) - A325345 (n + 1)

end

end A325346.P13366396908857610394

/-! ## A325346.P13285669079692204383

`A000070(n+1)-(A026804(n+1)+A000070(n))-A325345(n+1)`
-/

namespace A325346.P13285669079692204383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A026804 (n + 1) + A000070 n) - A325345 (n + 1)

end

end A325346.P13285669079692204383

/-!
# A325347: Number of partitions of n having an integer median.

The programs for A325347, there is no canonical definition to state claims against.
-/

/-! ## A325347.P6926898926637244511

`Δ[A000070(n)]-A307683(n+1)`
-/

namespace A325347.P6926898926637244511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307683 (n + 1)

end

end A325347.P6926898926637244511

/-! ## A325347.P10756296155200427359

`record[A035363(n)]-A307683(n+1)`
-/

namespace A325347.P10756296155200427359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307683 (n + 1)

end

end A325347.P10756296155200427359

/-! ## A325347.P9570099933065587827

`record[A035377(n)]-A307683(n+1)`
-/

namespace A325347.P9570099933065587827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307683 (n + 1)

end

end A325347.P9570099933065587827

/-! ## A325347.P7942953410372606684

`record[A035444(n)]-A307683(n+1)`
-/

namespace A325347.P7942953410372606684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307683 (n + 1)

end

end A325347.P7942953410372606684

/-! ## A325347.P12090078205329329368

`record[A114099(n)]-A307683(n+1)`
-/

namespace A325347.P12090078205329329368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307683 (n + 1)

end

end A325347.P12090078205329329368

/-! ## A325347.P13883865790945269024

`A000041(n+1)-A307683(n+1)`
-/

namespace A325347.P13883865790945269024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A307683 (n + 1)

end

end A325347.P13883865790945269024

/-! ## A325347.P6345969456515041727

`∑[A187219(n+1)]-A307683(n+1)`
-/

namespace A325347.P6345969456515041727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307683 (n + 1)

end

end A325347.P6345969456515041727

/-! ## A325347.P9564720550214949917

`Δ[A025065(2*n)]-A307683(n+1)`
-/

namespace A325347.P9564720550214949917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307683 (n + 1)

end

end A325347.P9564720550214949917

/-! ## A325347.P9614130683510811855

`record[A261555(n+1)]-A307683(n+1)`
-/

namespace A325347.P9614130683510811855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307683 (n + 1)

end

end A325347.P9614130683510811855

/-! ## A325347.P4528074875709027372

`A119620(2*(n+1))-A307683(n+1)`
-/

namespace A325347.P4528074875709027372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * (n + 1)) - A307683 (n + 1)

end

end A325347.P4528074875709027372

/-! ## A325347.P15207566082646826772

`A318284(A000040(n+1))-A307683(n+1)`
-/

namespace A325347.P15207566082646826772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A000040 (n + 1)).toNat - A307683 (n + 1)

end

end A325347.P15207566082646826772

/-!
# A325349: Number of integer partitions of n whose augmented differences are distinct.

The programs for A325349, there is no canonical definition to state claims against.
-/

/-! ## A325349.P9580239569301199660

`A020951(A288897(n)-A056594(n))`
-/

namespace A325349.P9580239569301199660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A288897 n - A056594 n).toNat

end

end A325349.P9580239569301199660

/-!
# A325350: Number of integer partitions of n whose augmented differences are weakly decreasing.

The programs for A325350, there is no canonical definition to state claims against.
-/

/-! ## A325350.P3379638064799503561

`A000196(A160647(n+1)+A003269(n))`
-/

namespace A325350.P3379638064799503561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A160647 (n + 1) + A003269 n).toNat

end

end A325350.P3379638064799503561

/-! ## A325350.P12488394712487814350

`A000196(∑[A087154(A000037(3*n+1))])`
-/

namespace A325350.P12488394712487814350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087154 (A000037 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325350.P12488394712487814350

/-! ## A325350.P8683998355805357595

`A000196(A000009(3*n+4)-A000124(n))`
-/

namespace A325350.P8683998355805357595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000009 (3 * n + 4) - A000124 n).toNat

end

end A325350.P8683998355805357595

/-! ## A325350.P15015166024522328000

`A000196(A000009(3*n+4)-A070175(n))`
-/

namespace A325350.P15015166024522328000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000009 (3 * n + 4) - A070175 n).toNat

end

end A325350.P15015166024522328000

/-! ## A325350.P8875150054042562249

`A000196(A111133(3*n+4)-A000217(n))`
-/

namespace A325350.P8875150054042562249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A111133 (3 * n + 4) - A000217 n).toNat

end

end A325350.P8875150054042562249

/-!
# A325351: Heinz number of the augmented differences of the integer partition with Heinz number n.

The programs for A325351, there is no canonical definition to state claims against.
-/

/-! ## A325351.P643257402958353893

`A020639(n+1)*A325352(A348717(n+1))`
-/

namespace A325351.P643257402958353893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A325352 (A348717 (n + 1)).toNat

end

end A325351.P643257402958353893

/-! ## A325351.P6503006671192933595

`A006530(A028233(n+1))*A325352(A348717(n+1))`
-/

namespace A325351.P6503006671192933595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat * A325352 (A348717 (n + 1)).toNat

end

end A325351.P6503006671192933595

/-! ## A325351.P8294859322291989563

`A006530(A074828(n+1))*A325352(A348717(n+1))`
-/

namespace A325351.P8294859322291989563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat * A325352 (A348717 (n + 1)).toNat

end

end A325351.P8294859322291989563

/-! ## A325351.P17477335926345153347

`A074828(A066048(n+1))*A325352(A348717(n+1))`
-/

namespace A325351.P17477335926345153347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A066048 (n + 1)).toNat * A325352 (A348717 (n + 1)).toNat

end

end A325351.P17477335926345153347

/-! ## A325351.P1203068935629497651

`A079068(A117367(n+1))*A325352(A348717(n+1))`
-/

namespace A325351.P1203068935629497651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A117367 (n + 1)).toNat * A325352 (A348717 (n + 1)).toNat

end

end A325351.P1203068935629497651

/-! ## A325351.P5856498145784285838

`A014963(A304181(n+1))*A325352(A348717(n+1))`
-/

namespace A325351.P5856498145784285838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A304181 (n + 1)).toNat * A325352 (A348717 (n + 1)).toNat

end

end A325351.P5856498145784285838

/-! ## A325351.P731233719214801962

`A020639(n+1)*A325352(n+1)`
-/

namespace A325351.P731233719214801962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A325352 (n + 1)

end

end A325351.P731233719214801962

/-! ## A325351.P8599690458447916291

`A074828((n+1)²)*A325352(n+1)`
-/

namespace A325351.P8599690458447916291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 ((n + 1) ^ 2) * A325352 (n + 1)

end

end A325351.P8599690458447916291

/-! ## A325351.P13515043954384987873

`A006530(A028233(n+1))*A325352(n+1)`
-/

namespace A325351.P13515043954384987873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat * A325352 (n + 1)

end

end A325351.P13515043954384987873

/-! ## A325351.P14984173052909564498

`A006530(A074828(n+1))*A325352(n+1)`
-/

namespace A325351.P14984173052909564498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat * A325352 (n + 1)

end

end A325351.P14984173052909564498

/-!
# A325352: Heinz number of the differences plus one of the integer partition with Heinz number n.

The programs for A325352, there is no canonical definition to state claims against.
-/

/-! ## A325352.P6551439795363759515

`A325351(ceil(A137502(n+1)/2))`
-/

namespace A325352.P6551439795363759515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 ⌈(A137502 (n + 1) : ℚ) / 2⌉.toNat

end

end A325352.P6551439795363759515

/-! ## A325352.P1965604769257317798

`A325351(round(A348717(n+1)/2))`
-/

namespace A325352.P1965604769257317798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (SequenceMachineLib.roundAway ((A348717 (n + 1) : ℚ) / 2)).toNat

end

end A325352.P1965604769257317798

/-! ## A325352.P12222940580189906041

`A325351(n+1)/A020639(n+1)`
-/

namespace A325352.P12222940580189906041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A325352.P12222940580189906041

/-! ## A325352.P7534105533843032989

`A325351(n+1)/A014673((n+1)²)`
-/

namespace A325352.P7534105533843032989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A014673 ((n + 1) ^ 2) : ℚ)

end

end A325352.P7534105533843032989

/-! ## A325352.P1343378765451937360

`A325351(n+1)/A074828((n+1)²)`
-/

namespace A325352.P1343378765451937360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A074828 ((n + 1) ^ 2) : ℚ)

end

end A325352.P1343378765451937360

/-! ## A325352.P17852515362755354326

`ceil(A325351(n+1)/A074828(n+1))`
-/

namespace A325352.P17852515362755354326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325351 (n + 1) : ℚ) / (A074828 (n + 1) : ℚ)⌉

end

end A325352.P17852515362755354326

/-! ## A325352.P17112665986105771601

`A325351(2*(n+1))/(2*A014673(2*(n+1)))`
-/

namespace A325352.P17112665986105771601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (2 * (n + 1)) : ℚ) / (2 * A014673 (2 * (n + 1)) : ℚ)

end

end A325352.P17112665986105771601

/-! ## A325352.P16868485243790686947

`A325351(n+1)/A014963(A028233(n+1))`
-/

namespace A325352.P16868485243790686947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A014963 (A028233 (n + 1)).toNat : ℚ)

end

end A325352.P16868485243790686947

/-! ## A325352.P13041579733485605406

`A325351(n+1)/A014963(A068794(n+1))`
-/

namespace A325352.P13041579733485605406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A014963 (A068794 (n + 1)).toNat : ℚ)

end

end A325352.P13041579733485605406

/-!
# A325355: One plus the number of steps applying A325351 (Heinz number of augmented differences of reversed prime indices) to reach a fixed point.

The programs for A325355, there is no canonical definition to state claims against.
-/

/-! ## A325355.P11960087369108617458

`A303758(A250470(n+1)%A229290(n+1))`
-/

namespace A325355.P11960087369108617458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303758 (Int.tmod (A250470 (n + 1)) (A229290 (n + 1))).toNat

end

end A325355.P11960087369108617458

/-! ## A325355.P10955718800774864804

`A326190(7^A078898(A268674(n+1)))`
-/

namespace A325355.P10955718800774864804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326190 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A078898 (A268674 (n + 1)).toNat : ℤ))).toNat

end

end A325355.P10955718800774864804

/-! ## A325355.P4086635526779695284

`A067437(A300647(n+1))`
-/

namespace A325355.P4086635526779695284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067437 (A300647 (n + 1)).toNat

end

end A325355.P4086635526779695284

/-! ## A325355.P7198246684822683981

`A125158(A361664(n+1))`
-/

namespace A325355.P7198246684822683981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125158 (A361664 (n + 1)).toNat

end

end A325355.P7198246684822683981

/-! ## A325355.P2010522174711211492

`A125158(A361667(n+1))`
-/

namespace A325355.P2010522174711211492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125158 (A361667 (n + 1)).toNat

end

end A325355.P2010522174711211492

/-!
# A325356: Number of integer partitions of n whose augmented differences are weakly increasing.

The programs for A325356, there is no canonical definition to state claims against.
-/

/-! ## A325356.P1986953766507305494

`A327657(lcm(n+1, A221944(n)))`
-/

namespace A325356.P1986953766507305494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (Int.lcm (n + 1 : ℤ) (A221944 n))

end

end A325356.P1986953766507305494

/-! ## A325356.P1230188390801808922

`A000120(A010786(n+1)+ceil(xor(1, n)/2))`
-/

namespace A325356.P1230188390801808922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A010786 (n + 1) + ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A325356.P1230188390801808922

/-! ## A325356.P17685849841880288165

`A000120(A028242(n)+A010786(n+1))`
-/

namespace A325356.P17685849841880288165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A028242 n + A010786 (n + 1)).toNat

end

end A325356.P17685849841880288165

/-!
# A325357: Number of integer partitions of n whose augmented differences are strictly increasing.

The programs for A325357, there is no canonical definition to state claims against.
-/

/-! ## A325357.P16240465984512112280

`A127757(A291563(n+1)%A291608(n+5))`
-/

namespace A325357.P16240465984512112280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (Int.tmod (A291563 (n + 1)) (A291608 (n + 5))).toNat

end

end A325357.P16240465984512112280

/-! ## A325357.P12757858804750385720

`A050252(or(A006498(n), A056539(n)))`
-/

namespace A325357.P12757858804750385720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (Int.lor (A006498 n) (A056539 n)).toNat

end

end A325357.P12757858804750385720

/-! ## A325357.P3232253058696798481

`A032548(A078306(n+1)*A153176(n))`
-/

namespace A325357.P3232253058696798481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A078306 (n + 1) * A153176 n).toNat

end

end A325357.P3232253058696798481

/-!
# A325358: Number of integer partitions of n whose augmented differences are strictly decreasing.

The programs for A325358, there is no canonical definition to state claims against.
-/

/-! ## A325358.P6708886165219156325

`∑[A376647(n)%A376844(2*n+3)]`
-/

namespace A325358.P6708886165219156325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376647 n) (A376844 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325358.P6708886165219156325

/-! ## A325358.P13316385475791648255

`∑[A376647(n)%A376641(n+1)]`
-/

namespace A325358.P13316385475791648255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376647 n) (A376641 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325358.P13316385475791648255

/-! ## A325358.P1569487707158142707

`A218379(A000201(n+1)%A035244(2*n+3))`
-/

namespace A325358.P1569487707158142707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218379 (Int.tmod (A000201 (n + 1)) (A035244 (2 * n + 3))).toNat

end

end A325358.P1569487707158142707

/-! ## A325358.P12806379623879268974

`∑[A376647(n)]%A333917(3*n+5)`
-/

namespace A325358.P12806379623879268974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A333917 (3 * n + 5))

end

end A325358.P12806379623879268974

/-! ## A325358.P7936964759840760080

`A000194(A123648(n+1)%A266426(n+1))`
-/

namespace A325358.P7936964759840760080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A123648 (n + 1)) (A266426 (n + 1))).toNat

end

end A325358.P7936964759840760080

/-!
# A325359: Numbers of the form p^y * 2^z where p is an odd prime, y >= 2, and z >= 0.

The programs for A325359, the canonical program `A325359.P8628571004111167182` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325359 has offset 1).

The definition of A325359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325359.P8628571004111167182

`∩[A070003(n+1), A076364(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325359

/-- `∩[A070003(n+1), A076364(n+1)]` -/
def P8628571004111167182.Spec : Prop :=
  ∀ n, (P8628571004111167182.a n : ℤ) = A325359 (n + 1)

theorem P8628571004111167182.correct : P8628571004111167182.Spec := by
  intro n
  simp only [A325359, Nat.add_sub_cancel]

end A325359

/-! ## A325359.P17427909085291022565

`∩[A076364(n+1), A226385(n+1)]`
-/

namespace A325359.P17427909085291022565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325359.P17427909085291022565

namespace A325359

/-- `∩[A076364(n+1), A226385(n+1)]` -/
def P17427909085291022565.Spec : Prop :=
  ∀ n, (P17427909085291022565.a n : ℤ) = A325359 (n + 1)

end A325359

/-! ## A325359.P3767894456940608292

`∩[A076364(n+1), A335851(n+1)]`
-/

namespace A325359.P3767894456940608292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325359.P3767894456940608292

namespace A325359

/-- `∩[A076364(n+1), A335851(n+1)]` -/
def P3767894456940608292.Spec : Prop :=
  ∀ n, (P3767894456940608292.a n : ℤ) = A325359 (n + 1)

end A325359

/-! ## A325359.P7295078993202018520

`∩[A076364(n+1), A388715(n+1)]`
-/

namespace A325359.P7295078993202018520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325359.P7295078993202018520

namespace A325359

/-- `∩[A076364(n+1), A388715(n+1)]` -/
def P7295078993202018520.Spec : Prop :=
  ∀ n, (P7295078993202018520.a n : ℤ) = A325359 (n + 1)

end A325359

/-! ## A325359.P8944056652957172943

`filter[A076364(n+1), A319988(#)]`
-/

namespace A325359.P8944056652957172943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A325359.P8944056652957172943

namespace A325359

/-- `filter[A076364(n+1), A319988(#)]` -/
def P8944056652957172943.Spec : Prop :=
  ∀ n, P8944056652957172943.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P12930513321284783397

`filter[A070003(n+1), A340373(#)]`
-/

namespace A325359.P12930513321284783397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A325359.P12930513321284783397

namespace A325359

/-- `filter[A070003(n+1), A340373(#)]` -/
def P12930513321284783397.Spec : Prop :=
  ∀ n, P12930513321284783397.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P14324880714619165007

`filter[A076364(n+1), A353626(#)]`
-/

namespace A325359.P14324880714619165007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A325359.P14324880714619165007

namespace A325359

/-- `filter[A076364(n+1), A353626(#)]` -/
def P14324880714619165007.Spec : Prop :=
  ∀ n, P14324880714619165007.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P10114578378051021973

`filter[A226385(n+1), A340373(#)]`
-/

namespace A325359.P10114578378051021973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A325359.P10114578378051021973

namespace A325359

/-- `filter[A226385(n+1), A340373(#)]` -/
def P10114578378051021973.Spec : Prop :=
  ∀ n, P10114578378051021973.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P5880937220040647422

`filter[A325661(n+1), A340373(#)]`
-/

namespace A325359.P5880937220040647422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A325359.P5880937220040647422

namespace A325359

/-- `filter[A325661(n+1), A340373(#)]` -/
def P5880937220040647422.Spec : Prop :=
  ∀ n, P5880937220040647422.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P3333441662165894418

`filter[A335851(n+1), A340373(#)]`
-/

namespace A325359.P3333441662165894418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A325359.P3333441662165894418

namespace A325359

/-- `filter[A335851(n+1), A340373(#)]` -/
def P3333441662165894418.Spec : Prop :=
  ∀ n, P3333441662165894418.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P14869870863536698722

`filter[A038838(n+1), A340363(#)]`
-/

namespace A325359.P14869870863536698722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A325359.P14869870863536698722

namespace A325359

/-- `filter[A038838(n+1), A340363(#)]` -/
def P14869870863536698722.Spec : Prop :=
  ∀ n, P14869870863536698722.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P1080963523717735016

`filter[A038838(n+1), A340373(#)]`
-/

namespace A325359.P1080963523717735016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A325359.P1080963523717735016

namespace A325359

/-- `filter[A038838(n+1), A340373(#)]` -/
def P1080963523717735016.Spec : Prop :=
  ∀ n, P1080963523717735016.a n = A325359 (n + 1)

end A325359

/-! ## A325359.P3217616185207356340

`∩[A038838(n+1), A076364(n+1)]`
-/

namespace A325359.P3217616185207356340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325359.P3217616185207356340

namespace A325359

/-- `∩[A038838(n+1), A076364(n+1)]` -/
def P3217616185207356340.Spec : Prop :=
  ∀ n, (P3217616185207356340.a n : ℤ) = A325359 (n + 1)

end A325359

/-! ## A325359.P14421724895588916547

`eq[2, A325355(n+1)]+1`
-/

namespace A325359.P14421724895588916547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325359.P14421724895588916547

namespace A325359

/-- `eq[2, A325355(n+1)]+1` -/
def P14421724895588916547.Spec : Prop :=
  ∀ n, (P14421724895588916547.a n : ℤ) = A325359 (n + 1)

end A325359

/-! ## A325359.P15011503980666726679

`lt[2, A347633(A336158(n+1))]+1`
-/

namespace A325359.P15011503980666726679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A336158 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325359.P15011503980666726679

namespace A325359

/-- `lt[2, A347633(A336158(n+1))]+1` -/
def P15011503980666726679.Spec : Prop :=
  ∀ n, (P15011503980666726679.a n : ℤ) = A325359 (n + 1)

end A325359

/-! ## A325359.P2981480376885493495

`∩[A038838(n+1), A336101(n+1)]`
-/

namespace A325359.P2981480376885493495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325359.P2981480376885493495

namespace A325359

/-- `∩[A038838(n+1), A336101(n+1)]` -/
def P2981480376885493495.Spec : Prop :=
  ∀ n, (P2981480376885493495.a n : ℤ) = A325359 (n + 1)

end A325359

/-! ## A325359.P8920638382811782922

`∩[A070003(n+1), A336101(n+1)]`
-/

namespace A325359.P8920638382811782922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325359.P8920638382811782922

namespace A325359

/-- `∩[A070003(n+1), A336101(n+1)]` -/
def P8920638382811782922.Spec : Prop :=
  ∀ n, (P8920638382811782922.a n : ℤ) = A325359 (n + 1)

end A325359

/-!
# A325360: Heinz numbers of integer partitions whose differences are weakly increasing.

The programs for A325360, there is no canonical definition to state claims against.
-/

/-! ## A325360.P4377346820170450817

`A375396(n+1)%A106635(n)`
-/

namespace A325360.P4377346820170450817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375396 (n + 1)) (A106635 n)

end

end A325360.P4377346820170450817

/-! ## A325360.P10792259915321082671

`A375396(n+1)+A335462(A025502(n))`
-/

namespace A325360.P10792259915321082671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1) + A335462 (A025502 n).toNat

end

end A325360.P10792259915321082671

/-! ## A325360.P14247581588083701088

`A375396(n+1)+A010054(A257928(n+1))`
-/

namespace A325360.P14247581588083701088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1) + A010054 (A257928 (n + 1)).toNat

end

end A325360.P14247581588083701088

/-! ## A325360.P2537584871150743406

`A375396(n+1)+A000007(A335486(n+1))`
-/

namespace A325360.P2537584871150743406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1) + A000007 (A335486 (n + 1)).toNat

end

end A325360.P2537584871150743406

/-! ## A325360.P16332810842277687302

`A001221(A001248(n+1))*A375396(n+1)`
-/

namespace A325360.P16332810842277687302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A375396 (n + 1)

end

end A325360.P16332810842277687302

/-! ## A325360.P6933858257675668324

`A049076(A000082(n+5))*A375396(n+1)`
-/

namespace A325360.P6933858257675668324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A000082 (n + 5)).toNat * A375396 (n + 1)

end

end A325360.P6933858257675668324

/-! ## A325360.P15268256796261233322

`A375396(n+1)+A360120(A292896(n+1))`
-/

namespace A325360.P15268256796261233322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1) + A360120 (A292896 (n + 1)).toNat

end

end A325360.P15268256796261233322

/-! ## A325360.P6886453322365240324

`A375396(n+1)/A006519(5^∑{e}[n+1, #])`
-/

namespace A325360.P6886453322365240324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375396 (n + 1) : ℚ) / (A006519 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℚ)

end

end A325360.P6886453322365240324

/-! ## A325360.P12176692816413617539

`A375396(n+1)+A045833(A132356(n))`
-/

namespace A325360.P12176692816413617539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1) + A045833 (A132356 n).toNat

end

end A325360.P12176692816413617539

/-! ## A325360.P16608708094119920267

`A160467(A151779(n+1))*A375396(n+1)`
-/

namespace A325360.P16608708094119920267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (A151779 (n + 1)).toNat * A375396 (n + 1)

end

end A325360.P16608708094119920267

/-!
# A325361: Heinz numbers of integer partitions whose differences are weakly decreasing.

The programs for A325361, there is no canonical definition to state claims against.
-/

/-! ## A325361.P162642208343138769

`∪[A133811(n+1), A342525(n+1)]`
-/

namespace A325361.P162642208343138769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P162642208343138769

/-! ## A325361.P3476809526871672054

`∪[A325364(n+1), A325457(n+1)]`
-/

namespace A325361.P3476809526871672054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P3476809526871672054

/-! ## A325361.P10291955174774792828

`∪[A325364(n+1), A342525(n+1)]`
-/

namespace A325361.P10291955174774792828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P10291955174774792828

/-! ## A325361.P11823432972369624589

`∪[A342525(n+1), A354561(n+1)]`
-/

namespace A325361.P11823432972369624589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P11823432972369624589

/-! ## A325361.P7871234110322441858

`∪[A342525(n+1), A354928(n+1)]`
-/

namespace A325361.P7871234110322441858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P7871234110322441858

/-! ## A325361.P14826932360007403601

`∪[A325457(n+1), A342526(comp[n²])]`
-/

namespace A325361.P14826932360007403601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P14826932360007403601

/-! ## A325361.P3328856548683871597

`lt[(1-A056173(A322373(n+1)+1))², 1]+1`
-/

namespace A325361.P3328856548683871597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A056173 (A322373 (n + 1) + 1).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325361.P3328856548683871597

/-! ## A325361.P14330881655429447402

`∪[A325328(n+1), A342526(A325360(n+1))]`
-/

namespace A325361.P14330881655429447402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (A325360 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P14330881655429447402

/-! ## A325361.P2333621353491718558

`∪[A342526(A342523(n+1)), A342525(n+1)]`
-/

namespace A325361.P2333621353491718558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (A342523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325361.P2333621353491718558

/-! ## A325361.P4140453405243354634

`lt[A243055(n+1), A000032(A286471(n+1))]+1`
-/

namespace A325361.P4140453405243354634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A286471 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325361.P4140453405243354634

/-!
# A325362: Heinz numbers of integer partitions whose differences (with the last part taken to be 0) are weakly increasing.

The programs for A325362, there is no canonical definition to state claims against.
-/

/-! ## A325362.P3138479316857185686

`record[A286621(n+1)+n]-n`
-/

namespace A325362.P3138479316857185686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A325362.P3138479316857185686

/-! ## A325362.P924195960204831156

`∪[A325396(n+1), A018213(n)]`
-/

namespace A325362.P924195960204831156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325362.P924195960204831156

/-! ## A325362.P4726898177369276008

`∪[A325396(n+1), A062990(n)]`
-/

namespace A325362.P4726898177369276008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325362.P4726898177369276008

/-! ## A325362.P11621733070504429004

`lt[A110654(n), A286621(n+1)]+1`
-/

namespace A325362.P11621733070504429004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325362.P11621733070504429004

/-! ## A325362.P6250627498208859599

`lt[A276796(n), A286621(n+1)]+1`
-/

namespace A325362.P6250627498208859599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325362.P6250627498208859599

/-! ## A325362.P3668315125208429972

`∩[A326535(n+1), A392694(n+1)]`
-/

namespace A325362.P3668315125208429972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325362.P3668315125208429972

/-! ## A325362.P6665578008585619100

`∪[A152000(n+1), A325396(n+1)]`
-/

namespace A325362.P6665578008585619100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325362.P6665578008585619100

/-! ## A325362.P10488868481450118078

`A001489(n)+record[A286621(n+1)+n]`
-/

namespace A325362.P10488868481450118078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325362.P10488868481450118078

/-! ## A325362.P17531421305412099393

`eq[A122111(n+1), A278221(n+1)]+1`
-/

namespace A325362.P17531421305412099393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325362.P17531421305412099393

/-! ## A325362.P16412843597726325011

`A001057(2*n)+record[A286621(n+1)+n]`
-/

namespace A325362.P16412843597726325011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325362.P16412843597726325011

/-!
# A325363: Heinz numbers of integer partitions into nonzero triangular numbers A000217.

The programs for A325363, there is no canonical definition to state claims against.
-/

/-! ## A325363.P9405841058283617109

`eq[A117468(A022818(n+1)), A277700(n)]`
-/

namespace A325363.P9405841058283617109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117468 (A022818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325363.P9405841058283617109

/-! ## A325363.P13570574824800300640

`eq[2, A086342(A033583(n))]`
-/

namespace A325363.P13570574824800300640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A033583 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325363.P13570574824800300640

/-! ## A325363.P9307199110250893892

`eq[A193592(A269945(n)), A277700(n)]`
-/

namespace A325363.P9307199110250893892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A269945 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325363.P9307199110250893892

/-! ## A325363.P9976723467872893564

`lt[A067029(A340953(n+12)), A004018(n)]`
-/

namespace A325363.P9976723467872893564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A340953 (n + 12)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325363.P9976723467872893564

/-! ## A325363.P15363118970536726443

`A057129(n+1)-A293162(A054452(n)+1)`
-/

namespace A325363.P15363118970536726443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1) - A293162 (A054452 n + 1).toNat

end

end A325363.P15363118970536726443

/-!
# A325364: Heinz numbers of integer partitions whose differences (with the last part taken to be zero) are weakly decreasing.

The programs for A325364, there is no canonical definition to state claims against.
-/

/-! ## A325364.P14220111284716205038

`∩[A325361(n+1), A342191(n+1)]`
-/

namespace A325364.P14220111284716205038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325364.P14220111284716205038

/-! ## A325364.P17273310616370537044

`∩[A342191(n+1)%A342191(2*(n+1)), A342526(n+1)]`
-/

namespace A325364.P17273310616370537044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342191 (n + 1)) (A342191 (2 * (n + 1)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325364.P17273310616370537044

/-! ## A325364.P9542286874319917603

`∑[A001468(C(A019446(n+1), 7))]`
-/

namespace A325364.P9542286874319917603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (Nat.choose (A019446 (n + 1)).toNat 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325364.P9542286874319917603

/-! ## A325364.P7578697224094704692

`∑[A183018(A107884(floor((n+1)/ϕ)))]`
-/

namespace A325364.P7578697224094704692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183018 (A107884 ⌊(n + 1 : ℝ) / Real.goldenRatio⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325364.P7578697224094704692

/-! ## A325364.P8912472937864015659

`lt[A287285(3*n), A000041(A287285(n))]`
-/

namespace A325364.P8912472937864015659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287285 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A287285 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325364.P8912472937864015659

/-!
# A325365: Number of maximal subsets of {1..n} containing n such that no two elements have the same sorted prime signature.

The programs for A325365, there is no canonical definition to state claims against.
-/

/-! ## A325365.P9717344056267113335

`A326439(n+1)/A064839(n+1)`
-/

namespace A325365.P9717344056267113335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326439 (n + 1) : ℚ) / (A064839 (n + 1) : ℚ)

end

end A325365.P9717344056267113335

/-! ## A325365.P2954926179706867071

`gcd(Δ[A326439(n)], A326439(n))`
-/

namespace A325365.P2954926179706867071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A326439 n)

end

end A325365.P2954926179706867071

/-! ## A325365.P11369430202384096304

`gcd(A326439(char[1]+n), A326439(n+1))`
-/

namespace A325365.P11369430202384096304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326439 ((if ∃ j, f1 j = n then 1 else 0) + n)) (A326439 (n + 1))

end

end A325365.P11369430202384096304

/-! ## A325365.P344420630809862206

`A325263(n+1)*A326439(n+1)/A326438(n)`
-/

namespace A325365.P344420630809862206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325263 (n + 1) * A326439 (n + 1) : ℚ) / (A326438 n : ℚ)

end

end A325365.P344420630809862206

/-! ## A325365.P18276850760712672387

`A326439(n+1)/A335280(A326438(n)/A325263(n+1))`
-/

namespace A325365.P18276850760712672387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326439 (n + 1) : ℚ) / (A335280 (SequenceMachineLib.roundAway ((A326438 n : ℚ) / (A325263 (n + 1) : ℚ))).toNat : ℚ)

end

end A325365.P18276850760712672387

/-!
# A325366: Heinz numbers of integer partitions whose augmented differences are distinct.

The programs for A325366, there is no canonical definition to state claims against.
-/

/-! ## A325366.P14362741556027918487

`eq[0, A348513(A325351(n+1))]+1`
-/

namespace A325366.P14362741556027918487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348513 (A325351 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325366.P14362741556027918487

/-! ## A325366.P2201518783625105051

`1-A001489(eq[1, ∏{e}[A325351(n+1), #]])`
-/

namespace A325366.P2201518783625105051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325366.P2201518783625105051

/-! ## A325366.P16032142149256306833

`lt[A127397(∏{e}[A325351(n+1), #]-1), 1]+1`
-/

namespace A325366.P16032142149256306833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127397 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A325366.P16032142149256306833

/-! ## A325366.P13944384430469628170

`lt[A348513(A325351(n+1)), A000034(n)]+1`
-/

namespace A325366.P13944384430469628170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348513 (A325351 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325366.P13944384430469628170

/-! ## A325366.P17524245464587494667

`lt[A348513(A325351(n+1)), A292583(n+1)]+1`
-/

namespace A325366.P17524245464587494667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348513 (A325351 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325366.P17524245464587494667

/-! ## A325366.P13054146515120866335

`lt[(n+1)*A348513(A325351(n+1)), A000203(n+1)]+1`
-/

namespace A325366.P13054146515120866335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A348513 (A325351 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325366.P13054146515120866335

/-!
# A325367: Heinz numbers of integer partitions with distinct differences between successive parts (with the last part taken to be zero).

The programs for A325367, there is no canonical definition to state claims against.
-/

/-! ## A325367.P4750004955473495554

`∪[A325388(n+1), A383712(n+1)]`
-/

namespace A325367.P4750004955473495554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325367.P4750004955473495554

/-! ## A325367.P1887115217941233001

`∪[A383712(n+1), A392695(n+1)]`
-/

namespace A325367.P1887115217941233001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325367.P1887115217941233001

/-! ## A325367.P3623787022258663897

`record[A066990(A364347(n+1))]`
-/

namespace A325367.P3623787022258663897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A364347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325367.P3623787022258663897

/-! ## A325367.P16098908394444350656

`filter[A364347(n+1), A212793(#)]`
-/

namespace A325367.P16098908394444350656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A325367.P16098908394444350656

/-! ## A325367.P3847949290151864770

`filter[A364347(n+1), A359471(#)]`
-/

namespace A325367.P3847949290151864770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A325367.P3847949290151864770

/-! ## A325367.P1933613627891600131

`∩[A325251(n+1), A364347(n+1)]`
-/

namespace A325367.P1933613627891600131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325367.P1933613627891600131

/-! ## A325367.P4541097614859433294

`∩[A330977(n+1), A364347(n+1)]`
-/

namespace A325367.P4541097614859433294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325367.P4541097614859433294

/-! ## A325367.P16617529499832635222

`∩[A320340(n+1), A325251(n+1)]`
-/

namespace A325367.P16617529499832635222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325367.P16617529499832635222

/-! ## A325367.P4171159639898084429

`∩[A320340(n+1), A330977(n+1)]`
-/

namespace A325367.P4171159639898084429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325367.P4171159639898084429

/-! ## A325367.P474063682908569068

`∩[A325368(n+1), A364347(n+1)]`
-/

namespace A325367.P474063682908569068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325367.P474063682908569068

/-!
# A325368: Heinz numbers of integer partitions with distinct differences between successive parts.

The programs for A325368, there is no canonical definition to state claims against.
-/

/-! ## A325368.P15136667040628325840

`lt[A285560(A077462(n)), A004932(n)]`
-/

namespace A325368.P15136667040628325840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285560 (A077462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325368.P15136667040628325840

/-! ## A325368.P15618676527111484186

`filter[A329135(n+1), A340369(#)]`
-/

namespace A325368.P15618676527111484186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A325368.P15618676527111484186

/-! ## A325368.P17164939308410098105

`A004709(lt[A374629(2*n), A052410(n+1)])`
-/

namespace A325368.P17164939308410098105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325368.P17164939308410098105

/-! ## A325368.P3984021473941845669

`A330977(n+1)%A213300(n)`
-/

namespace A325368.P3984021473941845669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330977 (n + 1)) (A213300 n)

end

end A325368.P3984021473941845669

/-! ## A325368.P10144100611848817403

`A325251(n+1)%A114613(n+1)`
-/

namespace A325368.P10144100611848817403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325251 (n + 1)) (A114613 (n + 1))

end

end A325368.P10144100611848817403

/-!
# A325369: Numbers with no two prime exponents appearing the same number of times in the prime signature.

The programs for A325369, there is no canonical definition to state claims against.
-/

/-! ## A325369.P1548212796587181828

`lt[A136567(n+1), 2]+1`
-/

namespace A325369.P1548212796587181828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325369.P1548212796587181828

/-! ## A325369.P3246361293936821042

`lt[A336569(n+1), 2]+1`
-/

namespace A325369.P3246361293936821042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336569 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325369.P3246361293936821042

/-! ## A325369.P17033105265346568301

`lt[A382771(n+1), 2]+1`
-/

namespace A325369.P17033105265346568301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325369.P17033105265346568301

/-! ## A325369.P14219238668250820544

`comp[A177425(n+1)-1]+1`
-/

namespace A325369.P14219238668250820544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325369.P14219238668250820544

/-! ## A325369.P4752346884804325315

`comp[eq[3, A304455(n+1)]]+1`
-/

namespace A325369.P4752346884804325315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A325369.P4752346884804325315

/-! ## A325369.P3698008714721205957

`comp[eq[4, A182850(n+1)]]+1`
-/

namespace A325369.P3698008714721205957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A325369.P3698008714721205957

/-! ## A325369.P17128539015157600704

`comp[(n+1)*(A345354(n+1)-2)]`
-/

namespace A325369.P17128539015157600704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A345354 (n + 1) - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325369.P17128539015157600704

/-! ## A325369.P10509362207473798026

`comp[A074591(A327498(n+1))]`
-/

namespace A325369.P10509362207473798026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A327498 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325369.P10509362207473798026

/-! ## A325369.P5066480004554318359

`record[A008683(A066636(n+1))+n]`
-/

namespace A325369.P5066480004554318359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A066636 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325369.P5066480004554318359

/-!
# A325371: Numbers whose prime signature has multiplicities of its parts all distinct and covering an initial interval of positive integers.

The programs for A325371, there is no canonical definition to state claims against.
-/

/-! ## A325371.P14650091827982541226

`eq[1, A096825(n+1)%3]+1`
-/

namespace A325371.P14650091827982541226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096825 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325371.P14650091827982541226

/-! ## A325371.P12550612351570429463

`eq[1, A114717(n+1)%3]+1`
-/

namespace A325371.P12550612351570429463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114717 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325371.P12550612351570429463

/-! ## A325371.P3552279633091420514

`lt[A323014(n+1)%5, 3]+1`
-/

namespace A325371.P3552279633091420514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323014 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325371.P3552279633091420514

/-! ## A325371.P12380266891846461969

`lt[2, abs(5-A183093(n+1))]+1`
-/

namespace A325371.P12380266891846461969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A183093 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325371.P12380266891846461969

/-! ## A325371.P2950461818406886718

`eq[0, A003285(A096825(n+1))]+1`
-/

namespace A325371.P2950461818406886718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A096825 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325371.P2950461818406886718

/-! ## A325371.P9418012558768991557

`eq[1, A008683(A050320(n+1))]+1`
-/

namespace A325371.P9418012558768991557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A050320 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325371.P9418012558768991557

/-! ## A325371.P886591385503759139

`eq[1, A050326(A181819(n+1))]+1`
-/

namespace A325371.P886591385503759139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325371.P886591385503759139

/-! ## A325371.P8081700990008637805

`eq[1, A204269(A073184(n+1))]+1`
-/

namespace A325371.P8081700990008637805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204269 (A073184 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325371.P8081700990008637805

/-! ## A325371.P11185224073621686424

`eq[1, A008683(A305150(n+1))]+1`
-/

namespace A325371.P11185224073621686424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A305150 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325371.P11185224073621686424

/-! ## A325371.P2160485424417723068

`eq[A057427(n), A136567(n+1)]+1`
-/

namespace A325371.P2160485424417723068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325371.P2160485424417723068

/-!
# A325372: Totally abnormal numbers. Heinz numbers of totally abnormal integer partitions.

The programs for A325372, there is no canonical definition to state claims against.
-/

/-! ## A325372.P2832610632171012171

`∪[A325373(n+1), p?[A004273(n)]]`
-/

namespace A325372.P2832610632171012171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P2832610632171012171

/-! ## A325372.P15023698792214903019

`∪[A325373(n+1), p?[A005408(n)]]`
-/

namespace A325372.P15023698792214903019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P15023698792214903019

/-! ## A325372.P15476086922479836453

`∩[A067715(n+1), A323306(n+1)]`
-/

namespace A325372.P15476086922479836453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P15476086922479836453

/-! ## A325372.P6825959798577589504

`∩[A080259(n+1), A323306(n+1)]`
-/

namespace A325372.P6825959798577589504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P6825959798577589504

/-! ## A325372.P1690035945924703997

`∩[A093373(n+1), A323306(n+1)]`
-/

namespace A325372.P1690035945924703997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P1690035945924703997

/-! ## A325372.P3509554142990706545

`∩[A067715(n+1), A396856(n+1)]`
-/

namespace A325372.P3509554142990706545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P3509554142990706545

/-! ## A325372.P10816509092692204388

`∩[A080259(n+1), A396856(n+1)]`
-/

namespace A325372.P10816509092692204388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P10816509092692204388

/-! ## A325372.P10616809810126826907

`∩[A093373(n+1), A396856(n+1)]`
-/

namespace A325372.P10616809810126826907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P10616809810126826907

/-! ## A325372.P10043103845568015479

`∩[A323306(n+1), A369361(n+1)]`
-/

namespace A325372.P10043103845568015479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P10043103845568015479

/-! ## A325372.P12922573422273966341

`∩[A323306(n+1), A379851(n+1)]`
-/

namespace A325372.P12922573422273966341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325372.P12922573422273966341

/-!
# A325373: Composite totally abnormal numbers. Heinz numbers of non-singleton totally abnormal integer partitions.

The programs for A325373, there is no canonical definition to state claims against.
-/

/-! ## A325373.P7256752669011861647

`∩[A072777(n+1), A080259(n+1)]`
-/

namespace A325373.P7256752669011861647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325373.P7256752669011861647

/-! ## A325373.P1046109095186559471

`∩[A076292(n+1), A080259(n+1)]`
-/

namespace A325373.P1046109095186559471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325373.P1046109095186559471

/-! ## A325373.P12919478390887607333

`∩[A072777(n+1), A369361(n+1)]`
-/

namespace A325373.P12919478390887607333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325373.P12919478390887607333

/-! ## A325373.P5381030328436573538

`∩[A076292(n+1), A369361(n+1)]`
-/

namespace A325373.P5381030328436573538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325373.P5381030328436573538

/-! ## A325373.P15355919490069618190

`∪[A319152(n+1), A365745(n+1)]`
-/

namespace A325373.P15355919490069618190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325373.P15355919490069618190

/-!
# A325374: Numbers with adjusted frequency depth 3 whose prime indices cover an initial interval of positive integers.

The programs for A325374, there is no canonical definition to state claims against.
-/

/-! ## A325374.P10967757937013540256

`∩[A133808(n+1), A161812(n+1)]`
-/

namespace A325374.P10967757937013540256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325374.P10967757937013540256

/-! ## A325374.P13715898901581234821

`∩[A161812(n+1), A317087(n+1)]`
-/

namespace A325374.P13715898901581234821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325374.P13715898901581234821

/-! ## A325374.P13606621254231358325

`∩[A056153(n+1), A100778(n+2)]`
-/

namespace A325374.P13606621254231358325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325374.P13606621254231358325

/-! ## A325374.P14001638590536050260

`∩[A100778(n+1), A161812(n+1)]`
-/

namespace A325374.P14001638590536050260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325374.P14001638590536050260

/-! ## A325374.P5360491559487708519

`filter[A100778(n+1), A079979(#)]`
-/

namespace A325374.P5360491559487708519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A325374.P5360491559487708519

/-!
# A325375: a(n) = gcd(A325319(n), A325320(n)).

The programs for A325375, there is no canonical definition to state claims against.
-/

/-! ## A325375.P6639517192587208272

`gcd(A325319(n+1), A325320(n+1))`
-/

namespace A325375.P6639517192587208272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325319 (n + 1)) (A325320 (n + 1))

end

end A325375.P6639517192587208272

/-! ## A325375.P14698012304572342573

`A325385(A228058(n+1))`
-/

namespace A325375.P14698012304572342573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325385 (A228058 (n + 1)).toNat

end

end A325375.P14698012304572342573

/-! ## A325375.P2753493002333616202

`A325385(A325379(n+1)+A325377(n+1))`
-/

namespace A325375.P2753493002333616202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325385 (A325379 (n + 1) + A325377 (n + 1)).toNat

end

end A325375.P2753493002333616202

/-! ## A325375.P4003659920839993134

`gcd(A325313(A228058(n+1)), A325378(n+1))`
-/

namespace A325375.P4003659920839993134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325313 (A228058 (n + 1)).toNat) (A325378 (n + 1))

end

end A325375.P4003659920839993134

/-! ## A325375.P15742214400938893945

`gcd(A325314(A228058(n+1)), A325379(n+1))`
-/

namespace A325375.P15742214400938893945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325314 (A228058 (n + 1)).toNat) (A325379 (n + 1))

end

end A325375.P15742214400938893945

/-!
# A325376: Terms k of A228058 such that gcd(k - A048250(k), A162296(k) - k) = A162296(k) - k.

The programs for A325376, there is no canonical definition to state claims against.
-/

/-! ## A325376.P1591484619329125323

`A060789(27*A142105(n+1))`
-/

namespace A325376.P1591484619329125323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (27 * A142105 (n + 1)).toNat

end

end A325376.P1591484619329125323

/-! ## A325376.P17537841309911775550

`A060789(lcm(27, A142105(n+1)))`
-/

namespace A325376.P17537841309911775550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (Int.lcm 27 (A142105 (n + 1)))

end

end A325376.P17537841309911775550

/-!
# A325377: a(n) = A001065(A228058(n)), where A001065(n) gives the sum of proper divisors of n.

The programs for A325377, there is no canonical definition to state claims against.
-/

/-! ## A325377.P6208594030071990911

`A001065(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325377.P6208594030071990911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A228058 (n + 1)).toNat

end

end A325377.P6208594030071990911

/-! ## A325377.P3353010445240269803

`A389164(n+1)+A325320(n+1)`
-/

namespace A325377.P3353010445240269803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389164 (n + 1) + A325320 (n + 1)

end

end A325377.P3353010445240269803

/-! ## A325377.P13114716418897377903

`A228058(n+1)-A325379(n+1)`
-/

namespace A325377.P13114716418897377903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - A325379 (n + 1)

end

end A325377.P13114716418897377903

/-! ## A325377.P13969455908019415848

`A389203(n+1)-A228058(n+1)`
-/

namespace A325377.P13969455908019415848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A228058 (n + 1)

end

end A325377.P13969455908019415848

/-! ## A325377.P10740756469216622184

`A389096(n+1)-A325319(n+1)`
-/

namespace A325377.P10740756469216622184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A325319 (n + 1)

end

end A325377.P10740756469216622184

/-! ## A325377.P12543307601283487307

`A389198(n+1)-A325824(n+1)`
-/

namespace A325377.P12543307601283487307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389198 (n + 1) - A325824 (n + 1)

end

end A325377.P12543307601283487307

/-! ## A325377.P17433586813709148636

`A389163(n+1)-A389218(n+1)`
-/

namespace A325377.P17433586813709148636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - A389218 (n + 1)

end

end A325377.P17433586813709148636

/-! ## A325377.P17895960676836349516

`A389206(n+1)-A389208(n+1)`
-/

namespace A325377.P17895960676836349516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - A389208 (n + 1)

end

end A325377.P17895960676836349516

/-! ## A325377.P527970463778269024

`A228058(n+1)+A325320(n+1)-A325319(n+1)`
-/

namespace A325377.P527970463778269024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325320 (n + 1) - A325319 (n + 1))

end

end A325377.P527970463778269024

/-! ## A325377.P4031373139441559153

`A228058(n+1)+A325823(n+1)-A325824(n+1)`
-/

namespace A325377.P4031373139441559153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325823 (n + 1) - A325824 (n + 1))

end

end A325377.P4031373139441559153

/-! ## A325377.P16619888055412087562

`A228058(n+1)+A389207(n+1)-A389208(n+1)`
-/

namespace A325377.P16619888055412087562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A389207 (n + 1) - A389208 (n + 1))

end

end A325377.P16619888055412087562

/-! ## A325377.P14199755295956558319

`A228058(n+1)-(A325378(n+1)-2*A325320(n+1))`
-/

namespace A325377.P14199755295956558319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - (A325378 (n + 1) - 2 * A325320 (n + 1))

end

end A325377.P14199755295956558319

/-! ## A325377.P13636153830331695220

`∑{d}[A228058(n+1), #-A000010(#)]`
-/

namespace A325377.P13636153830331695220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A325377.P13636153830331695220

/-! ## A325377.P7710987888441429383

`A325823(n+1)+A048146(A228058(n+1))`
-/

namespace A325377.P7710987888441429383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325823 (n + 1) + A048146 (A228058 (n + 1)).toNat

end

end A325377.P7710987888441429383

/-! ## A325377.P7771062574659431334

`A389198(n+1)-A325814(A228058(n+1))`
-/

namespace A325377.P7771062574659431334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389198 (n + 1) - A325814 (A228058 (n + 1)).toNat

end

end A325377.P7771062574659431334

/-! ## A325377.P9308406122014651445

`A325973(A228058(n+1))-A389218(n+1)`
-/

namespace A325377.P9308406122014651445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (A228058 (n + 1)).toNat - A389218 (n + 1)

end

end A325377.P9308406122014651445

/-! ## A325377.P5900448116064175930

`A162296(A228058(n+1))-A325319(n+1)`
-/

namespace A325377.P5900448116064175930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A228058 (n + 1)).toNat - A325319 (n + 1)

end

end A325377.P5900448116064175930

/-! ## A325377.P16526644696256249494

`A326126(A228058(n+1))-A389208(n+1)`
-/

namespace A325377.P16526644696256249494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (A228058 (n + 1)).toNat - A389208 (n + 1)

end

end A325377.P16526644696256249494

/-!
# A325378: a(n) = A162296(A228058(n)) - A048250(A228058(n)), where A162296 is the sum of divisors that have a square factor, A048250 the sum of the squarefree divisors, and A228058 lists numbers satisfying Euler's condition for odd perfect numbers.

The programs for A325378, there is no canonical definition to state claims against.
-/

/-! ## A325378.P7257306505126056549

`A325319(n+1)+A325320(n+1)`
-/

namespace A325378.P7257306505126056549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + A325320 (n + 1)

end

end A325378.P7257306505126056549

/-! ## A325378.P2619778226213296765

`A389096(n+1)-A389164(n+1)`
-/

namespace A325378.P2619778226213296765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A389164 (n + 1)

end

end A325378.P2619778226213296765

/-! ## A325378.P1032515086250315038

`-A388994(A228058(n+1))`
-/

namespace A325378.P1032515086250315038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A388994 (A228058 (n + 1)).toNat

end

end A325378.P1032515086250315038

/-! ## A325378.P1780744560037277922

`A162296(A228058(n+1))-A048250(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325378.P1780744560037277922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A228058 (n + 1)).toNat - A048250 (A228058 (n + 1)).toNat

end

end A325378.P1780744560037277922

/-! ## A325378.P17859439573786997903

`A325379(n+1)+2*A325320(n+1)`
-/

namespace A325378.P17859439573786997903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) + 2 * A325320 (n + 1)

end

end A325378.P17859439573786997903

/-! ## A325378.P16332362952408799396

`2*A325319(n+1)-A325379(n+1)`
-/

namespace A325378.P16332362952408799396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325319 (n + 1) - A325379 (n + 1)

end

end A325378.P16332362952408799396

/-! ## A325378.P8894539732533177486

`A325319(n+1)+A389096(n+1)-A228058(n+1)`
-/

namespace A325378.P8894539732533177486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A389096 (n + 1) - A228058 (n + 1))

end

end A325378.P8894539732533177486

/-! ## A325378.P4511955111212452627

`A228058(n+1)+A325320(n+1)-A389164(n+1)`
-/

namespace A325378.P4511955111212452627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325320 (n + 1) - A389164 (n + 1))

end

end A325378.P4511955111212452627

/-! ## A325378.P3840265571045699212

`A389096(n+1)+A389096(n+1)-A389203(n+1)`
-/

namespace A325378.P3840265571045699212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) + (A389096 (n + 1) - A389203 (n + 1))

end

end A325378.P3840265571045699212

/-! ## A325378.P1666608014959136048

`A389203(n+1)-A389164(n+1)-A389164(n+1)`
-/

namespace A325378.P1666608014959136048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A389164 (n + 1) - A389164 (n + 1)

end

end A325378.P1666608014959136048

/-! ## A325378.P3364790220329105421

`A325320(n+1)+A325320(n+1)+A325824(n+1)-A325823(n+1)`
-/

namespace A325378.P3364790220329105421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + (A325320 (n + 1) + (A325824 (n + 1) - A325823 (n + 1)))

end

end A325378.P3364790220329105421

/-! ## A325378.P13835852017027474353

`A389096(n+1)-A000203(A389167(n+1))`
-/

namespace A325378.P13835852017027474353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A000203 (A389167 (n + 1)).toNat

end

end A325378.P13835852017027474353

/-! ## A325378.P659728680930104755

`A162296(A228058(n+1))-A389164(n+1)`
-/

namespace A325378.P659728680930104755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A228058 (n + 1)).toNat - A389164 (n + 1)

end

end A325378.P659728680930104755

/-! ## A325378.P11491043095425349557

`A325319(n+1)-A325314(A228058(n+1))`
-/

namespace A325378.P11491043095425349557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) - A325314 (A228058 (n + 1)).toNat

end

end A325378.P11491043095425349557

/-! ## A325378.P9872361880483536375

`A325320(n+1)-A325313(A228058(n+1))`
-/

namespace A325378.P9872361880483536375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) - A325313 (A228058 (n + 1)).toNat

end

end A325378.P9872361880483536375

/-! ## A325378.P786370913340000747

`A325379(n+1)-2*A325314(A228058(n+1))`
-/

namespace A325378.P786370913340000747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) - 2 * A325314 (A228058 (n + 1)).toNat

end

end A325378.P786370913340000747

/-! ## A325378.P17911629626722526229

`A389096(n+1)-A048250(A228058(n+1))`
-/

namespace A325378.P17911629626722526229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A048250 (A228058 (n + 1)).toNat

end

end A325378.P17911629626722526229

/-!
# A325379: a(n) = A033879(A228058(n)).

The programs for A325379, there is no canonical definition to state claims against.
-/

/-! ## A325379.P15981366989864826109

`A325319(n+1)-A325320(n+1)`
-/

namespace A325379.P15981366989864826109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) - A325320 (n + 1)

end

end A325379.P15981366989864826109

/-! ## A325379.P8024770821816943268

`A033879(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325379.P8024770821816943268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A228058 (n + 1)).toNat

end

end A325379.P8024770821816943268

/-! ## A325379.P4514582165955106752

`A228058(n+1)-A325377(n+1)`
-/

namespace A325379.P4514582165955106752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - A325377 (n + 1)

end

end A325379.P4514582165955106752

/-! ## A325379.P2126369794491673845

`A325824(n+1)-A325823(n+1)`
-/

namespace A325379.P2126369794491673845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) - A325823 (n + 1)

end

end A325379.P2126369794491673845

/-! ## A325379.P3156497068951810597

`A389208(n+1)-A389207(n+1)`
-/

namespace A325379.P3156497068951810597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389208 (n + 1) - A389207 (n + 1)

end

end A325379.P3156497068951810597

/-! ## A325379.P6075492015997127949

`A389218(n+1)-A389217(n+1)`
-/

namespace A325379.P6075492015997127949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389218 (n + 1) - A389217 (n + 1)

end

end A325379.P6075492015997127949

/-! ## A325379.P1890863059720320326

`2*A325319(n+1)-A325378(n+1)`
-/

namespace A325379.P1890863059720320326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325319 (n + 1) - A325378 (n + 1)

end

end A325379.P1890863059720320326

/-! ## A325379.P13889967516128033465

`A325378(n+1)-2*A325320(n+1)`
-/

namespace A325379.P13889967516128033465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) - 2 * A325320 (n + 1)

end

end A325379.P13889967516128033465

/-! ## A325379.P14405588380282445637

`A228058(n+1)+A228058(n+1)-A389203(n+1)`
-/

namespace A325379.P14405588380282445637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A228058 (n + 1) - A389203 (n + 1))

end

end A325379.P14405588380282445637

/-! ## A325379.P4810804321020411855

`A228058(n+1)+A325319(n+1)-A389096(n+1)`
-/

namespace A325379.P4810804321020411855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325319 (n + 1) - A389096 (n + 1))

end

end A325379.P4810804321020411855

/-! ## A325379.P11202562328336531665

`A228058(n+1)-(A389164(n+1)+A325320(n+1))`
-/

namespace A325379.P11202562328336531665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - (A389164 (n + 1) + A325320 (n + 1))

end

end A325379.P11202562328336531665

/-! ## A325379.P16301002422426035222

`A228058(n+1)+A325824(n+1)-A389198(n+1)`
-/

namespace A325379.P16301002422426035222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325824 (n + 1) - A389198 (n + 1))

end

end A325379.P16301002422426035222

/-! ## A325379.P13681583386905249696

`A228058(n+1)+A389218(n+1)-A389163(n+1)`
-/

namespace A325379.P13681583386905249696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A389218 (n + 1) - A389163 (n + 1))

end

end A325379.P13681583386905249696

/-! ## A325379.P4350564538034847119

`A228058(n+1)+A389208(n+1)-A389206(n+1)`
-/

namespace A325379.P4350564538034847119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A389208 (n + 1) - A389206 (n + 1))

end

end A325379.P4350564538034847119

/-! ## A325379.P1495366262070496349

`A325824(n+1)-A034460(A228058(n+1))`
-/

namespace A325379.P1495366262070496349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) - A034460 (A228058 (n + 1)).toNat

end

end A325379.P1495366262070496349

/-! ## A325379.P16597967186401674171

`A228058(n+1)-(A325823(n+1)+A048146(A228058(n+1)))`
-/

namespace A325379.P16597967186401674171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - (A325823 (n + 1) + A048146 (A228058 (n + 1)).toNat)

end

end A325379.P16597967186401674171

/-! ## A325379.P7085658887172364760

`A325814(A228058(n+1))-A325823(n+1)`
-/

namespace A325379.P7085658887172364760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A228058 (n + 1)).toNat - A325823 (n + 1)

end

end A325379.P7085658887172364760

/-! ## A325379.P8502536893067001174

`A325319(n+1)+A325314(A228058(n+1))`
-/

namespace A325379.P8502536893067001174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + A325314 (A228058 (n + 1)).toNat

end

end A325379.P8502536893067001174

/-! ## A325379.P11769555084844079246

`A389218(n+1)-A325977(A228058(n+1))`
-/

namespace A325379.P11769555084844079246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389218 (n + 1) - A325977 (A228058 (n + 1)).toNat

end

end A325379.P11769555084844079246

/-!
# A325381: Lexicographically earliest sequence such that a(i) = a(j) => A048250(i) = A048250(j) and A126795(i) = A126795(j) for all i, j.

The programs for A325381, there is no canonical definition to state claims against.
-/

/-! ## A325381.P1689287879222991194

`A261283(2^A085985(n+1))`
-/

namespace A325381.P1689287879222991194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A085985 (n + 1) : ℤ))).toNat

end

end A325381.P1689287879222991194

/-! ## A325381.P12846120633505927322

`A304492(A052410((n+1)²²))`
-/

namespace A325381.P12846120633505927322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304492 (A052410 (((n + 1) ^ 2) ^ 2)).toNat

end

end A325381.P12846120633505927322

/-! ## A325381.P13376484919835157572

`A085985(n+1)+A015161(n)!`
-/

namespace A325381.P13376484919835157572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085985 (n + 1) + (Nat.factorial (A015161 n).toNat : ℤ)

end

end A325381.P13376484919835157572

/-! ## A325381.P17225520025621619586

`A085985(n+1)+A172542(n)!`
-/

namespace A325381.P17225520025621619586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085985 (n + 1) + (Nat.factorial (A172542 n).toNat : ℤ)

end

end A325381.P17225520025621619586

/-! ## A325381.P10335914845218087707

`(A085985(n+1)+1)%A033268(n+1)`
-/

namespace A325381.P10335914845218087707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085985 (n + 1) + 1) (A033268 (n + 1))

end

end A325381.P10335914845218087707

/-!
# A325382: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = [A048250(n), A126795(n)] for all other numbers, except f(p) = -(p mod 2) for primes.

The programs for A325382, there is no canonical definition to state claims against.
-/

/-! ## A325382.P3571938522351818560

`A324401(n+1)%A324456(A134274(n+1))`
-/

namespace A325382.P3571938522351818560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324401 (n + 1)) (A324456 (A134274 (n + 1)).toNat)

end

end A325382.P3571938522351818560

/-!
# A325384: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = [A000203(n), A009194(n)] for all other numbers, except f(p) = 0 for odd primes.

The programs for A325384, there is no canonical definition to state claims against.
-/

/-! ## A325384.P9656395788140602497

`A305801(A325383(n+1))%A092960(n+2)`
-/

namespace A325384.P9656395788140602497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305801 (A325383 (n + 1)).toNat) (A092960 (n + 2))

end

end A325384.P9656395788140602497

/-! ## A325384.P17548080957256581036

`A305801(A325383(n+1))+A263764(A134869(n+1))`
-/

namespace A325384.P17548080957256581036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (A325383 (n + 1)).toNat + A263764 (A134869 (n + 1)).toNat

end

end A325384.P17548080957256581036

/-! ## A325384.P642151134121704706

`A146285(A009194(n+1))*A319346(A325383(n+1))`
-/

namespace A325384.P642151134121704706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146285 (A009194 (n + 1)).toNat * A319346 (A325383 (n + 1)).toNat

end

end A325384.P642151134121704706

/-! ## A325384.P6090341734311591151

`A146285(A325634(n+1))*A319346(A325383(n+1))`
-/

namespace A325384.P6090341734311591151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146285 (A325634 (n + 1)).toNat * A319346 (A325383 (n + 1)).toNat

end

end A325384.P6090341734311591151

/-! ## A325384.P5061891661727883499

`A353520(n+1)-A151755(A381426(n))`
-/

namespace A325384.P5061891661727883499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353520 (n + 1) - A151755 (A381426 n).toNat

end

end A325384.P5061891661727883499

/-!
# A325385: a(n) = gcd(n-A048250(n), n-A162296(n)).

The programs for A325385, the canonical program `A325385.P13943608617975307286` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325385 has offset 1).

The definition of A325385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325385.P13943608617975307286

`gcd(A033879(n+1), A325313(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325385

/-- `gcd(A033879(n+1), A325313(n+1))` -/
def P13943608617975307286.Spec : Prop :=
  ∀ n, (P13943608617975307286.a n : ℤ) = A325385 (n + 1)

theorem P13943608617975307286.correct : P13943608617975307286.Spec := by
  intro n
  simp only [A325385, Nat.add_sub_cancel]

end A325385

/-! ## A325385.P6750419509487686633

`gcd(A033880(n+1), A325314(n+1))`
-/

namespace A325385.P6750419509487686633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A325314 (n + 1))

end

end A325385.P6750419509487686633

namespace A325385

/-- `gcd(A033880(n+1), A325314(n+1))` -/
def P6750419509487686633.Spec : Prop :=
  ∀ n, (P6750419509487686633.a n : ℤ) = A325385 (n + 1)

end A325385

/-! ## A325385.P1559759390592939914

`gcd(abs(A325314(n+1)), -A033879(n+1))`
-/

namespace A325385.P1559759390592939914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A325314 (n + 1)| (-A033879 (n + 1))

end

end A325385.P1559759390592939914

namespace A325385

/-- `gcd(abs(A325314(n+1)), -A033879(n+1))` -/
def P1559759390592939914.Spec : Prop :=
  ∀ n, (P1559759390592939914.a n : ℤ) = A325385 (n + 1)

end A325385

/-! ## A325385.P14560605698615701381

`gcd(-A325313(n+1), -A325314(n+1))`
-/

namespace A325385.P14560605698615701381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A325313 (n + 1)) (-A325314 (n + 1))

end

end A325385.P14560605698615701381

namespace A325385

/-- `gcd(-A325313(n+1), -A325314(n+1))` -/
def P14560605698615701381.Spec : Prop :=
  ∀ n, (P14560605698615701381.a n : ℤ) = A325385 (n + 1)

end A325385

/-! ## A325385.P14430833895982004389

`gcd(abs(A033879(n+1)), A325314(1-(n-2*n)))`
-/

namespace A325385.P14430833895982004389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A033879 (n + 1)| (A325314 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A325385.P14430833895982004389

namespace A325385

/-- `gcd(abs(A033879(n+1)), A325314(1-(n-2*n)))` -/
def P14430833895982004389.Spec : Prop :=
  ∀ n, (P14430833895982004389.a n : ℤ) = A325385 (n + 1)

end A325385

/-!
# A325388: Heinz numbers of strict integer partitions with distinct differences (with the last part taken to be 0).

The programs for A325388, there is no canonical definition to state claims against.
-/

/-! ## A325388.P16533467467029517640

`∪[A062086(n+1), A325460(n+1)]`
-/

namespace A325388.P16533467467029517640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325388.P16533467467029517640

/-!
# A325389: Heinz numbers of integer partitions whose augmented differences are weakly decreasing.

The programs for A325389, there is no canonical definition to state claims against.
-/

/-! ## A325389.P10674535524564444122

`comp[A124761(n)*A253565(n)]`
-/

namespace A325389.P10674535524564444122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n * A253565 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325389.P10674535524564444122

/-! ## A325389.P3232434221434173474

`comp[A005940(n+1)*A124760(n)]`
-/

namespace A325389.P3232434221434173474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) * A124760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325389.P3232434221434173474

/-! ## A325389.P9544053906792146033

`∪[A003401(n+1), A364289(n+1)]`
-/

namespace A325389.P9544053906792146033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P9544053906792146033

/-! ## A325389.P12283083130600583326

`∪[A076351(n+1), A364289(n+1)]`
-/

namespace A325389.P12283083130600583326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P12283083130600583326

/-! ## A325389.P17212400850263054541

`∪[A232711(n+1), A364289(n+1)]`
-/

namespace A325389.P17212400850263054541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P17212400850263054541

/-! ## A325389.P1071538854135609314

`∪[A291686(n+1), A364289(n+1)]`
-/

namespace A325389.P1071538854135609314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P1071538854135609314

/-! ## A325389.P15979778055984310711

`∪[A302505(n+1), A364289(n+1)]`
-/

namespace A325389.P15979778055984310711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P15979778055984310711

/-! ## A325389.P10242162354307830000

`∪[A309353(n+1), A364289(n+1)]`
-/

namespace A325389.P10242162354307830000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P10242162354307830000

/-! ## A325389.P15101660324372629318

`∪[A347831(n+1), A364289(n+1)]`
-/

namespace A325389.P15101660324372629318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P15101660324372629318

/-! ## A325389.P6283320925142444462

`∪[A371448(n+1), A364289(n+1)]`
-/

namespace A325389.P6283320925142444462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325389.P6283320925142444462

/-!
# A325390: Heinz number of the negated differences plus one of the integer partition with Heinz number n (with the last part taken to be 0).

The programs for A325390, there is no canonical definition to state claims against.
-/

/-! ## A325390.P8016495806765512085

`A325351(A003961(n+1))`
-/

namespace A325390.P8016495806765512085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A003961 (n + 1)).toNat

end

end A325390.P8016495806765512085

/-! ## A325390.P4129294108511996821

`A325351(A253885(n)+1)`
-/

namespace A325390.P4129294108511996821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A253885 n + 1).toNat

end

end A325390.P4129294108511996821

/-! ## A325390.P4340687211127092054

`A325351(or(1, A253885(n)))`
-/

namespace A325390.P4340687211127092054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (Int.lor 1 (A253885 n)).toNat

end

end A325390.P4340687211127092054

/-! ## A325390.P9895198963626116264

`A325351(xor(1, A253885(n)))`
-/

namespace A325390.P9895198963626116264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (Int.xor 1 (A253885 n)).toNat

end

end A325390.P9895198963626116264

/-! ## A325390.P7552749134290623716

`A325351(A243501(n+1)-1)`
-/

namespace A325390.P7552749134290623716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A243501 (n + 1) - 1).toNat

end

end A325390.P7552749134290623716

/-! ## A325390.P11093471063340584908

`A325351(A249734(n+1)/3)`
-/

namespace A325390.P11093471063340584908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (SequenceMachineLib.roundAway ((A249734 (n + 1) : ℚ) / 3)).toNat

end

end A325390.P11093471063340584908

/-! ## A325390.P2546720752086168268

`A325351(A252748(n+1)+2*(n+1))`
-/

namespace A325390.P2546720752086168268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A252748 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A325390.P2546720752086168268

/-! ## A325390.P15244003458313508013

`A325351(A004442(A253885(n)))`
-/

namespace A325390.P15244003458313508013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A004442 (A253885 n).toNat).toNat

end

end A325390.P15244003458313508013

/-! ## A325390.P365910371824750200

`A020639(A003961(n+1))*A325352(n+1)`
-/

namespace A325390.P365910371824750200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003961 (n + 1)).toNat * A325352 (n + 1)

end

end A325390.P365910371824750200

/-!
# A325391: Number of reversed integer partitions of n whose k-th differences are strictly increasing for all k >= 0.

The programs for A325391, there is no canonical definition to state claims against.
-/

/-! ## A325391.P3115252529241773357

`Δ[A062684(A028310(n))]+floor(acot(n))`
-/

namespace A325391.P3115252529241773357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A325391.P3115252529241773357

/-! ## A325391.P6416837176333586262

`Δ[A062684(abs(1-n)+1)%A000045(n+2)]`
-/

namespace A325391.P6416837176333586262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062684 (|1 - (n : ℤ)| + 1).toNat) (A000045 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325391.P6416837176333586262

/-! ## A325391.P11590014000778891211

`A000007(n)+Δ[A062684(A028310(n))]`
-/

namespace A325391.P11590014000778891211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A325391.P11590014000778891211

/-! ## A325391.P7476133478222853152

`Δ[A062684(A028310(n))+A057427(n)]`
-/

namespace A325391.P7476133478222853152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325391.P7476133478222853152

/-! ## A325391.P6803072253060923673

`A151933(n)+Δ[A062684(A028310(n))]`
-/

namespace A325391.P6803072253060923673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (f1 (n + 1) - f1 n)

end

end A325391.P6803072253060923673

/-! ## A325391.P11410265124534413441

`Δ[A178334(n)+A062684(A028310(n))]`
-/

namespace A325391.P11410265124534413441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A062684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325391.P11410265124534413441

/-! ## A325391.P6398099761118368739

`Δ[A062684(A028310(n))-A054977(n)]`
-/

namespace A325391.P6398099761118368739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325391.P6398099761118368739

/-! ## A325391.P14793127827613327631

`Δ[A062684(A028310(n))-A057428(n)]`
-/

namespace A325391.P14793127827613327631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325391.P14793127827613327631

/-! ## A325391.P3551001507756378037

`Δ[A062684(A028310(n))]^(A000040(n+1)%2)`
-/

namespace A325391.P3551001507756378037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A325391.P3551001507756378037

/-!
# A325392: Number of permutations of the multiset of prime factors of n whose first part is not 2.

The programs for A325392, the canonical program `A325392.P6786933458347630188` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325392 has offset 1).

The definition of A325392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325392.P6786933458347630188

`∑{d}[n+1, A008480(#)*A154955((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A325392

/-- `∑{d}[n+1, A008480(#)*A154955((n+1)/#)]` -/
def P6786933458347630188.Spec : Prop :=
  ∀ n, P6786933458347630188.a n = A325392 (n + 1)

theorem P6786933458347630188.correct : P6786933458347630188.Spec := by
  intro n
  simp only [A325392, Nat.add_sub_cancel]

end A325392

/-! ## A325392.P10675282774690373116

`∑{d}[n+1, A092673(#)*A244098((n+1)/#)]`
-/

namespace A325392.P10675282774690373116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A244098 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325392.P10675282774690373116

namespace A325392

/-- `∑{d}[n+1, A092673(#)*A244098((n+1)/#)]` -/
def P10675282774690373116.Spec : Prop :=
  ∀ n, P10675282774690373116.a n = A325392 (n + 1)

end A325392

/-! ## A325392.P6129556601168957101

`A326291(2*(n+1))+A267442(n)`
-/

namespace A325392.P6129556601168957101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (2 * (n + 1)) + A267442 n

end

end A325392.P6129556601168957101

namespace A325392

/-- `A326291(2*(n+1))+A267442(n)` -/
def P6129556601168957101.Spec : Prop :=
  ∀ n, P6129556601168957101.a n = A325392 (n + 1)

end A325392

/-! ## A325392.P17604416537547050602

`A326291(2*(n+1))+A000035(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A325392.P17604416537547050602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (2 * (n + 1)) + A000035 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

end

end A325392.P17604416537547050602

namespace A325392

/-- `A326291(2*(n+1))+A000035(ceil((n+1)/∏{p}[n+1, (n+1)/#]))` -/
def P17604416537547050602.Spec : Prop :=
  ∀ n, P17604416537547050602.a n = A325392 (n + 1)

end A325392

/-! ## A325392.P3026725723588906267

`A326291(2*(n+1))+A000035(A053585(n+1))`
-/

namespace A325392.P3026725723588906267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (2 * (n + 1)) + A000035 (A053585 (n + 1)).toNat

end

end A325392.P3026725723588906267

namespace A325392

/-- `A326291(2*(n+1))+A000035(A053585(n+1))` -/
def P3026725723588906267.Spec : Prop :=
  ∀ n, P3026725723588906267.a n = A325392 (n + 1)

end A325392

/-!
# A325393: Number of integer partitions of n whose k-th differences are strictly decreasing for all k >= 0.

The programs for A325393, there is no canonical definition to state claims against.
-/

/-! ## A325393.P8524113340027397799

`A320388(n)-A006996(A244389(3*n+1))`
-/

namespace A325393.P8524113340027397799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320388 n - A006996 (A244389 (3 * n + 1)).toNat

end

end A325393.P8524113340027397799

/-! ## A325393.P11946578224669597267

`A320388(n)-A185284(A266439(n))`
-/

namespace A325393.P11946578224669597267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320388 n - A185284 (A266439 n).toNat

end

end A325393.P11946578224669597267

/-! ## A325393.P1366333555129323119

`A320388(n)-A151933(A145369(n+1))`
-/

namespace A325393.P1366333555129323119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320388 n - A151933 (A145369 (n + 1)).toNat

end

end A325393.P1366333555129323119

/-! ## A325393.P7866694511171529907

`A320388(n)-A185284(2*n+1)`
-/

namespace A325393.P7866694511171529907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320388 n - A185284 (2 * n + 1)

end

end A325393.P7866694511171529907

/-! ## A325393.P3948675694065537910

`A320388(n)%A194635(n+1)`
-/

namespace A325393.P3948675694065537910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320388 n) (A194635 (n + 1))

end

end A325393.P3948675694065537910

/-!
# A325394: Heinz numbers of integer partitions whose augmented differences are weakly increasing.

The programs for A325394, there is no canonical definition to state claims against.
-/

/-! ## A325394.P5156807091176742818

`∪[A088949(n+1), A325461(n+1)]`
-/

namespace A325394.P5156807091176742818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325394.P5156807091176742818

/-! ## A325394.P13199358998883704487

`∩[A325364(n+1), A328674(n+1)]`
-/

namespace A325394.P13199358998883704487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325394.P13199358998883704487

/-! ## A325394.P17179775486713072685

`∩[A320340(n+1), A325364(n+1)]`
-/

namespace A325394.P17179775486713072685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325394.P17179775486713072685

/-! ## A325394.P8494915282044360387

`∩[A325364(n+1), A364347(n+1)]`
-/

namespace A325394.P8494915282044360387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325394.P8494915282044360387

/-! ## A325394.P3341402689870185651

`A316476(comp[A040491(2*n+1)-A290848(n)])`
-/

namespace A325394.P3341402689870185651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040491 (2 * n + 1) - A290848 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325394.P3341402689870185651

/-!
# A325395: Heinz numbers of integer partitions whose augmented differences are strictly increasing.

The programs for A325395, there is no canonical definition to state claims against.
-/

/-! ## A325395.P3472108074821183610

`lt[A078898(n)^4/3, n]`
-/

namespace A325395.P3472108074821183610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078898 n ^ 4 : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A325395.P3472108074821183610

/-! ## A325395.P11204992772107670797

`lt[A327642(n), floor(sqrt(3*n+1))]`
-/

namespace A325395.P11204992772107670797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325395.P11204992772107670797

/-! ## A325395.P14409421326798923517

`lt[3*n, A020639(n+1)^3]+1`
-/

namespace A325395.P14409421326798923517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325395.P14409421326798923517

/-! ## A325395.P8439960494167515017

`lt[2*n, A088378(n+1)-n]+1`
-/

namespace A325395.P8439960494167515017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088378 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325395.P8439960494167515017

/-! ## A325395.P10335918664922997943

`lt[A018808(A078898(n)), n]`
-/

namespace A325395.P10335918664922997943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 (A078898 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325395.P10335918664922997943

/-! ## A325395.P1037404249058704063

`lt[A293598(n+1)², A111396(n)]`
-/

namespace A325395.P1037404249058704063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293598 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325395.P1037404249058704063

/-! ## A325395.P16837925063690219076

`lt[A327642(n)², A166687(n+1)]`
-/

namespace A325395.P16837925063690219076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325395.P16837925063690219076

/-! ## A325395.P11937061033370523858

`lt[A078898(n)², A123578(2*n)]`
-/

namespace A325395.P11937061033370523858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325395.P11937061033370523858

/-! ## A325395.P5591010538791070068

`lt[n, A278835(A020639(n+1))]+1`
-/

namespace A325395.P5591010538791070068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278835 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325395.P5591010538791070068

/-! ## A325395.P9026825633960736898

`lt[A293598(n+1), A055670(n+1)]`
-/

namespace A325395.P9026825633960736898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325395.P9026825633960736898

/-!
# A325396: Heinz numbers of integer partitions whose augmented differences are strictly decreasing.

The programs for A325396, there is no canonical definition to state claims against.
-/

/-! ## A325396.P12999453916392833348

`∩[A342523(n+1), A392694(n+1)]`
-/

namespace A325396.P12999453916392833348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P12999453916392833348

/-! ## A325396.P4474947436824390356

`A325362(comp[A000720(∑[3*n*(19*n+1)+1])])`
-/

namespace A325396.P4474947436824390356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * (19 * n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325396.P4474947436824390356

/-! ## A325396.P12758252663735445332

`∩[A301899(n+1), A392694(n+1)]`
-/

namespace A325396.P12758252663735445332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P12758252663735445332

/-! ## A325396.P1783304026423261570

`∩[A325398(n+1), A392694(n+1)]`
-/

namespace A325396.P1783304026423261570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P1783304026423261570

/-! ## A325396.P13728392534629068331

`∩[A325362(n+1), A325398(n+1)]`
-/

namespace A325396.P13728392534629068331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P13728392534629068331

/-! ## A325396.P13773158988596019434

`∩[A301899(n+1), A325362(n+1)]`
-/

namespace A325396.P13773158988596019434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P13773158988596019434

/-! ## A325396.P4718987858373809069

`∩[A319315(n+1), A325362(n+1)]`
-/

namespace A325396.P4718987858373809069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P4718987858373809069

/-! ## A325396.P9661380712711503815

`∩[A325362(n+1), A325366(n+1)]`
-/

namespace A325396.P9661380712711503815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P9661380712711503815

/-! ## A325396.P3986063061740105166

`∩[A083347(n+1), A325362(n+1)]`
-/

namespace A325396.P3986063061740105166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P3986063061740105166

/-! ## A325396.P5419527542437366258

`∩[A325362(n+1), A392467(n+1)]`
-/

namespace A325396.P5419527542437366258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325396.P5419527542437366258

/-!
# A325398: Heinz numbers of reversed integer partitions whose k-th differences are strictly increasing for all k >= 0.

The programs for A325398, there is no canonical definition to state claims against.
-/

/-! ## A325398.P9403139647174226522

`eq[1, and(gcd(5, n), A074206(n))]`
-/

namespace A325398.P9403139647174226522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd 5 n : ℤ) (A074206 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325398.P9403139647174226522

/-! ## A325398.P14003026261504575336

`A301899(A178489(n+2)+n)`
-/

namespace A325398.P14003026261504575336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (A178489 (n + 2) + (n : ℤ)).toNat

end

end A325398.P14003026261504575336

/-! ## A325398.P338240353997209845

`filter[A342523(n+1), A008966(#)]`
-/

namespace A325398.P338240353997209845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A325398.P338240353997209845

/-! ## A325398.P16435426552671965429

`filter[A361232(n+1), A008966(#)]`
-/

namespace A325398.P16435426552671965429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A325398.P16435426552671965429

/-! ## A325398.P8411364608531249791

`filter[A392467(n+1), A008966(#)]`
-/

namespace A325398.P8411364608531249791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A325398.P8411364608531249791

/-! ## A325398.P9046906289819218410

`filter[A361232(n+1), A323154(#)]`
-/

namespace A325398.P9046906289819218410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A325398.P9046906289819218410

/-! ## A325398.P16188203746572539967

`filter[A342523(n+1), A353559(#)]`
-/

namespace A325398.P16188203746572539967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A325398.P16188203746572539967

/-! ## A325398.P9443744869371770333

`filter[A361232(n+1), A353559(#)]`
-/

namespace A325398.P9443744869371770333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A325398.P9443744869371770333

/-! ## A325398.P16553583888519018210

`filter[A392467(n+1), A323154(#)]`
-/

namespace A325398.P16553583888519018210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A325398.P16553583888519018210

/-! ## A325398.P1070350096738230189

`filter[A392467(n+1), A353559(#)]`
-/

namespace A325398.P1070350096738230189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A325398.P1070350096738230189

/-!
# A325399: Heinz numbers of integer partitions whose k-th differences are strictly decreasing for all k >= 0.

The programs for A325399, there is no canonical definition to state claims against.
-/

/-! ## A325399.P15391784645345382999

`∪[A167171(n+1), A005380(n)]`
-/

namespace A325399.P15391784645345382999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005380 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P15391784645345382999

/-! ## A325399.P2032257744320501042

`∪[A167171(n+1), A008487(n)]`
-/

namespace A325399.P2032257744320501042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P2032257744320501042

/-! ## A325399.P13808521679827768074

`∪[A167171(n+1), A010007(n)]`
-/

namespace A325399.P13808521679827768074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P13808521679827768074

/-! ## A325399.P11945787188994707433

`∪[A167171(n+1), A032168(n)]`
-/

namespace A325399.P11945787188994707433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032168 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P11945787188994707433

/-! ## A325399.P15553381037693145711

`∪[A167171(n+1), A049016(n)]`
-/

namespace A325399.P15553381037693145711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P15553381037693145711

/-! ## A325399.P7635441804241098753

`∪[A167171(n+1), A050403(n)]`
-/

namespace A325399.P7635441804241098753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050403 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P7635441804241098753

/-! ## A325399.P14561040094790527904

`∪[A167171(n+1), A053134(n)]`
-/

namespace A325399.P14561040094790527904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P14561040094790527904

/-! ## A325399.P11004106310714748766

`∪[A167171(n+1), A061606(n)]`
-/

namespace A325399.P11004106310714748766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061606 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P11004106310714748766

/-! ## A325399.P5880225616399814101

`∪[A167171(n+1), A166067(n)]`
-/

namespace A325399.P5880225616399814101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P5880225616399814101

/-! ## A325399.P3464740977627069342

`∪[A167171(n+1), A169739(n)]`
-/

namespace A325399.P3464740977627069342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325399.P3464740977627069342

