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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A391800: Primes indexed by A391797.

The programs for A391800, there is no canonical definition to state claims against.
-/

/-! ## A391800.P14605006157481767480

`A000040(A391797(n+1))`
-/

namespace A391800.P14605006157481767480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391797 (n + 1)).toNat

end

end A391800.P14605006157481767480

/-! ## A391800.P14944734508176214467

`∩[A109269(n+1), A119889(n+1)]`
-/

namespace A391800.P14944734508176214467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391800.P14944734508176214467

/-! ## A391800.P14204593484265808743

`A000040(lt[A383327(n+3), A100771(3*n+1)])`
-/

namespace A391800.P14204593484265808743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383327 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100771 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391800.P14204593484265808743

/-!
# A391801: Primes indexed by A391798.

The programs for A391801, there is no canonical definition to state claims against.
-/

/-! ## A391801.P9534864640617375011

`A000040(A391798(n+1))`
-/

namespace A391801.P9534864640617375011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391798 (n + 1)).toNat

end

end A391801.P9534864640617375011

/-!
# A391802: Primes indexed by A391799.

The programs for A391802, there is no canonical definition to state claims against.
-/

/-! ## A391802.P17174835192210781463

`A000040(A391799(n+1))`
-/

namespace A391802.P17174835192210781463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391799 (n + 1)).toNat

end

end A391802.P17174835192210781463

/-! ## A391802.P7120224430460854746

`A008578(A391799(n+1)+1)`
-/

namespace A391802.P7120224430460854746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A391799 (n + 1) + 1).toNat

end

end A391802.P7120224430460854746

/-!
# A391803: a(n) = floor(Sum_{k=1..n} n/prime(k)).

The programs for A391803, there is no canonical definition to state claims against.
-/

/-! ## A391803.P477213079638352533

`round(log(A186577(n+1)))`
-/

namespace A391803.P477213079638352533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A186577 (n + 1) : ℝ))

end

end A391803.P477213079638352533

/-! ## A391803.P224855761204049236

`lt[A001312(n), Δ[A008348(n)]]`
-/

namespace A391803.P224855761204049236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001312 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391803.P224855761204049236

/-! ## A391803.P12604802075439879888

`A144396(n+1)-A029837(A355529(3*(n+1)))`
-/

namespace A391803.P12604802075439879888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A029837 (A355529 (3 * (n + 1))).toNat

end

end A391803.P12604802075439879888

/-! ## A391803.P13130670442889523583

`A023443(2*(n+2))-A070939(A324696(3*(n+1)))`
-/

namespace A391803.P13130670442889523583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * (n + 2)) - A070939 (A324696 (3 * (n + 1))).toNat

end

end A391803.P13130670442889523583

/-! ## A391803.P15618341541098258689

`floor(log(A209625(n+2)))`
-/

namespace A391803.P15618341541098258689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A209625 (n + 2) : ℝ)⌋

end

end A391803.P15618341541098258689

/-!
# A391804: a(n) = least prime greater than prime(n)*prime(n+1).

The programs for A391804, the canonical program `A391804.P2522922692948596025` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391804 has offset 1).

The definition of A391804 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391804.P2522922692948596025

`A151800(A006094(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391804

/-- `A151800(A006094(n+1))` -/
def P2522922692948596025.Spec : Prop :=
  ∀ n, P2522922692948596025.a n = A391804 (n + 1)

theorem P2522922692948596025.correct : P2522922692948596025.Spec := by
  intro n
  simp only [A391804, Nat.add_sub_cancel]

end A391804

/-! ## A391804.P18385971489840318204

`A074928(n+1)+A006094(n+1)`
-/

namespace A391804.P18385971489840318204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074928 (n + 1) + A006094 (n + 1)

end

end A391804.P18385971489840318204

namespace A391804

/-- `A074928(n+1)+A006094(n+1)` -/
def P18385971489840318204.Spec : Prop :=
  ∀ n, P18385971489840318204.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P9939841219432065202

`A378135(A000040(n+1))`
-/

namespace A391804.P9939841219432065202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A000040 (n + 1)).toNat

end

end A391804.P9939841219432065202

namespace A391804

/-- `A378135(A000040(n+1))` -/
def P9939841219432065202.Spec : Prop :=
  ∀ n, P9939841219432065202.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P3974631277292687686

`A378135(A008578(n+2))`
-/

namespace A391804.P3974631277292687686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A008578 (n + 2)).toNat

end

end A391804.P3974631277292687686

namespace A391804

/-- `A378135(A008578(n+2))` -/
def P3974631277292687686.Spec : Prop :=
  ∀ n, P3974631277292687686.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P1522522806186151537

`A378135(A182986(n+2))`
-/

namespace A391804.P1522522806186151537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A182986 (n + 2)).toNat

end

end A391804.P1522522806186151537

namespace A391804

/-- `A378135(A182986(n+2))` -/
def P1522522806186151537.Spec : Prop :=
  ∀ n, P1522522806186151537.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P2026106286911009462

`A151800(A391805(n+1))`
-/

namespace A391804.P2026106286911009462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A391805 (n + 1)).toNat

end

end A391804.P2026106286911009462

namespace A391804

/-- `A151800(A391805(n+1))` -/
def P2026106286911009462.Spec : Prop :=
  ∀ n, P2026106286911009462.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P3849347569101105199

`A151800(A023515(n+2))`
-/

namespace A391804.P3849347569101105199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A023515 (n + 2)).toNat

end

end A391804.P3849347569101105199

namespace A391804

/-- `A151800(A023515(n+2))` -/
def P3849347569101105199.Spec : Prop :=
  ∀ n, P3849347569101105199.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P14948943949150501544

`A151800(A069486(n+1)/2)`
-/

namespace A391804.P14948943949150501544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A069486 (n + 1) : ℚ) / 2)).toNat

end

end A391804.P14948943949150501544

namespace A391804

/-- `A151800(A069486(n+1)/2)` -/
def P14948943949150501544.Spec : Prop :=
  ∀ n, P14948943949150501544.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P12323020311549710122

`A000040(A120941(n+1)+n+1)`
-/

namespace A391804.P12323020311549710122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A120941 (n + 1) + (n + 1 : ℤ)).toNat

end

end A391804.P12323020311549710122

namespace A391804

/-- `A000040(A120941(n+1)+n+1)` -/
def P12323020311549710122.Spec : Prop :=
  ∀ n, P12323020311549710122.a n = A391804 (n + 1)

end A391804

/-!
# A391805: a(n) = greatest prime less than prime(n)*prime(n+1).

The programs for A391805, there is no canonical definition to state claims against.
-/

/-! ## A391805.P616207720458472691

`A006094(n+1)-A107058(n+1)`
-/

namespace A391805.P616207720458472691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A107058 (n + 1)

end

end A391805.P616207720458472691

/-! ## A391805.P8445035811734844739

`A000040(A120941(n+1)+n)`
-/

namespace A391805.P8445035811734844739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A120941 (n + 1) + (n : ℤ)).toNat

end

end A391805.P8445035811734844739

/-!
# A391807: a(n) is the least k such that the residues mod 3 of the primes prime(k), prime(k+1),... include a string of n 1's followed by 2.

The programs for A391807, there is no canonical definition to state claims against.
-/

/-! ## A391807.P13311501022829139043

`A392107(2^(n+2))`
-/

namespace A391807.P13311501022829139043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392107 (2 ^ (n + 2))

end

end A391807.P13311501022829139043

/-! ## A391807.P5879924500894913727

`A247816(n+1)+A227835(A111759(n+1))`
-/

namespace A391807.P5879924500894913727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247816 (n + 1) + A227835 (A111759 (n + 1)).toNat

end

end A391807.P5879924500894913727

/-! ## A391807.P2281303568333677409

`A000720(A390511(n+1))`
-/

namespace A391807.P2281303568333677409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A390511 (n + 1)).toNat

end

end A391807.P2281303568333677409

/-!
# A391809: A Beatty sequence: floor(n*x) for n >= 1 where x = Sum_{n>=0} 1/2^floor(n*x).

The programs for A391809, there is no canonical definition to state claims against.
-/

/-! ## A391809.P17878192944144686897

`floor((n+1)*2^tanh(tanh(2)))`
-/

namespace A391809.P17878192944144686897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (2 : ℝ) ^ (Real.tanh (Real.tanh (2 : ℝ)))⌋

end

end A391809.P17878192944144686897

/-! ## A391809.P4398492104209541963

`floor(A109235(n+1)/4)`
-/

namespace A391809.P4398492104209541963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109235 (n + 1) : ℚ) / 4⌋

end

end A391809.P4398492104209541963

/-! ## A391809.P4632369289294292289

`floor(floor(sqrt(A212656(3*(n+1)))/2)/2)`
-/

namespace A391809.P4632369289294292289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊Real.sqrt (A212656 (3 * (n + 1)) : ℝ) / 2⌋ : ℚ) / 2⌋

end

end A391809.P4632369289294292289

/-! ## A391809.P1928086406297612024

`comp[A057365(A008586(n))]`
-/

namespace A391809.P1928086406297612024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A008586 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A391809.P1928086406297612024

/-! ## A391809.P6793427980074738633

`A002265(A109235(n+1))`
-/

namespace A391809.P6793427980074738633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A109235 (n + 1)).toNat

end

end A391809.P6793427980074738633

/-! ## A391809.P3340836890088761903

`A016789(n)-A352675(n+1)`
-/

namespace A391809.P3340836890088761903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A352675 (n + 1)

end

end A391809.P3340836890088761903

/-! ## A391809.P7997660241777244627

`A329845(n+1)%A005360(n+1)`
-/

namespace A391809.P7997660241777244627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329845 (n + 1)) (A005360 (n + 1))

end

end A391809.P7997660241777244627

/-! ## A391809.P16659279423119581284

`A329845(n+1)+char[A374980(n+3)]`
-/

namespace A391809.P16659279423119581284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374980 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329845 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A391809.P16659279423119581284

/-!
# A391811: a(n) equals half the sum of the squares of the terms in row n of irregular triangle A391810.

The programs for A391811, there is no canonical definition to state claims against.
-/

/-! ## A391811.P16195541614883584608

`A224985(A026633(n))`
-/

namespace A391811.P16195541614883584608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224985 (A026633 n).toNat

end

end A391811.P16195541614883584608

/-! ## A391811.P14106071759903472302

`A333627(A074412(n+1))+A323791(n)`
-/

namespace A391811.P14106071759903472302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A074412 (n + 1)).toNat + A323791 n

end

end A391811.P14106071759903472302

/-!
# A391813: Continued fraction of the constant x where a(n) = 2 - A391814(n+1) for n >= 0, and A391814 is the binary expansion of x starting with A391814(1) = 1.

The programs for A391813, there is no canonical definition to state claims against.
-/

/-! ## A391813.P11514064167245549297

`2-A391814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391813.P11514064167245549297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A391814 (n + 1)

end

end A391813.P11514064167245549297

/-! ## A391813.P17493843458667241003

`A040001(A326670(2*n+3)*A326670(n+1))`
-/

namespace A391813.P17493843458667241003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A326670 (2 * n + 3) * A326670 (n + 1)).toNat

end

end A391813.P17493843458667241003

/-! ## A391813.P13753753526412694706

`A007421(A380962(n))`
-/

namespace A391813.P13753753526412694706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (A380962 (n + 12)).toNat

end

end A391813.P13753753526412694706

/-! ## A391813.P19762667300531454

`A022303(A022303(n+1)*A327042(n))`
-/

namespace A391813.P19762667300531454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A022303 (n + 1) * A327042 n).toNat

end

end A391813.P19762667300531454

/-!
# A391814: Binary expansion of the constant x where a(n) = 2 - A391813(n-1) for n >= 1, and A391813 is the continued fraction of x starting with A391813(0) = 1.

The programs for A391814, there is no canonical definition to state claims against.
-/

/-! ## A391814.P4197968439743267897

`2-A391813(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391814.P4197968439743267897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A391813 n

end

end A391814.P4197968439743267897

/-! ## A391814.P4158170692487493306

`and(A000328(n), A391813(n))`
-/

namespace A391814.P4158170692487493306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A391813 n)

end

end A391814.P4158170692487493306

/-! ## A391814.P303770756637700063

`and(A001513(n), A391813(n))`
-/

namespace A391814.P303770756637700063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A391813 n)

end

end A391814.P303770756637700063

/-! ## A391814.P8397150963352532163

`and(A001535(n), A391813(n))`
-/

namespace A391814.P8397150963352532163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A391813 n)

end

end A391814.P8397150963352532163

/-! ## A391814.P17821196088855157685

`and(A001546(n), A391813(n))`
-/

namespace A391814.P17821196088855157685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A391813 n)

end

end A391814.P17821196088855157685

/-! ## A391814.P7467054045802905634

`and(A001844(n), A391813(n))`
-/

namespace A391814.P7467054045802905634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A391813 n)

end

end A391814.P7467054045802905634

/-! ## A391814.P6677835457028199875

`and(A001846(n), A391813(n))`
-/

namespace A391814.P6677835457028199875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A391813 n)

end

end A391814.P6677835457028199875

/-! ## A391814.P9548293780709524943

`and(A001848(n), A391813(n))`
-/

namespace A391814.P9548293780709524943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A391813 n)

end

end A391814.P9548293780709524943

/-! ## A391814.P1773259013157750955

`and(A003185(n), A391813(n))`
-/

namespace A391814.P1773259013157750955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A391813 n)

end

end A391814.P1773259013157750955

/-! ## A391814.P16265929009596794245

`and(A004768(n), A391813(n))`
-/

namespace A391814.P16265929009596794245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A391813 n)

end

end A391814.P16265929009596794245

/-! ## A391814.P4804192737446111921

`and(A007204(n), A391813(n))`
-/

namespace A391814.P4804192737446111921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A391813 n)

end

end A391814.P4804192737446111921

/-! ## A391814.P10785948235665634593

`and(A008349(n), A391813(n))`
-/

namespace A391814.P10785948235665634593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A391813 n)

end

end A391814.P10785948235665634593

/-! ## A391814.P7677672715908187151

`and(A008358(n), A391813(n))`
-/

namespace A391814.P7677672715908187151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008358 n) (A391813 n)

end

end A391814.P7677672715908187151

/-! ## A391814.P3727916416963106202

`and(A008362(n), A391813(n))`
-/

namespace A391814.P3727916416963106202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A391813 n)

end

end A391814.P3727916416963106202

/-! ## A391814.P5713846442647732975

`and(A008379(n), A391813(n))`
-/

namespace A391814.P5713846442647732975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A391813 n)

end

end A391814.P5713846442647732975

/-! ## A391814.P3506387115330569108

`and(A008417(n), A391813(n))`
-/

namespace A391814.P3506387115330569108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A391813 n)

end

end A391814.P3506387115330569108

/-! ## A391814.P4259377478568854521

`and(A008421(n), A391813(n))`
-/

namespace A391814.P4259377478568854521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008421 n) (A391813 n)

end

end A391814.P4259377478568854521

/-! ## A391814.P9762676594289521153

`and(A008514(n), A391813(n))`
-/

namespace A391814.P9762676594289521153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A391813 n)

end

end A391814.P9762676594289521153

/-! ## A391814.P9751824335219202002

`and(A008516(n), A391813(n))`
-/

namespace A391814.P9751824335219202002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008516 n) (A391813 n)

end

end A391814.P9751824335219202002

/-! ## A391814.P13342284299134692889

`and(A016760(n), A391813(n))`
-/

namespace A391814.P13342284299134692889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A391813 n)

end

end A391814.P13342284299134692889

/-!
# A391817: Number of topological sequences of three dimensional lattice points with index n and depth n - 2.

The programs for A391817, there is no canonical definition to state claims against.
-/

/-! ## A391817.P8449688610480607260

`∑[A338642(∑[or(n, (n+1)²)])]`
-/

namespace A391817.P8449688610480607260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338642 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391817.P8449688610480607260

/-!
# A391818: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected, a path of 1's from upper left corner to lower right corner, and no 1 having more than two 1's adjacent.

The programs for A391818, there is no canonical definition to state claims against.
-/

/-! ## A391818.P16805758924386458076

`A125087(A154337(n))`
-/

namespace A391818.P16805758924386458076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125087 (A154337 n).toNat

end

end A391818.P16805758924386458076

/-! ## A391818.P6248753364464153548

`A139338(A176331(n))`
-/

namespace A391818.P6248753364464153548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A176331 n).toNat

end

end A391818.P6248753364464153548

/-! ## A391818.P4588476131080761341

`A196176(A154983(n))`
-/

namespace A391818.P4588476131080761341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (A154983 n).toNat

end

end A391818.P4588476131080761341

/-! ## A391818.P17588138337074535585

`A262816(A174918(n))`
-/

namespace A391818.P17588138337074535585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262816 (A174918 n).toNat

end

end A391818.P17588138337074535585

/-! ## A391818.P6523609993713233974

`A287355(A157192(n))`
-/

namespace A391818.P6523609993713233974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A157192 n).toNat

end

end A391818.P6523609993713233974

/-!
# A391819: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected, all corners 1, and no 1 having more than two 1's adjacent.

The programs for A391819, there is no canonical definition to state claims against.
-/

/-! ## A391819.P17933133325001837509

`A282691(A254414(n))`
-/

namespace A391819.P17933133325001837509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A254414 n).toNat

end

end A391819.P17933133325001837509

/-! ## A391819.P5645770821454429893

`A333749(A376935(n))`
-/

namespace A391819.P5645770821454429893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (A376935 n).toNat

end

end A391819.P5645770821454429893

/-! ## A391819.P11223018161390066737

`A036054(A034368(n+2))`
-/

namespace A391819.P11223018161390066737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036054 (A034368 (n + 2)).toNat

end

end A391819.P11223018161390066737

/-! ## A391819.P6920390706857970233

`A085029(A281988(n+1)+1)`
-/

namespace A391819.P6920390706857970233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085029 (A281988 (n + 1) + 1).toNat

end

end A391819.P6920390706857970233

/-! ## A391819.P3881533870100121310

`A156351(A295205(n+1)%A177798(n+1))`
-/

namespace A391819.P3881533870100121310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (Int.tmod (A295205 (n + 1)) (A177798 (n + 1))).toNat

end

end A391819.P3881533870100121310

/-!
# A391820: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected and no 1 having more than two 1's adjacent.

The programs for A391820, there is no canonical definition to state claims against.
-/

/-! ## A391820.P9302804439005243161

`or(A105593(A088617(2*n)), A360850(n+1))`
-/

namespace A391820.P9302804439005243161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105593 (A088617 (2 * n)).toNat) (A360850 (n + 1))

end

end A391820.P9302804439005243161

/-!
# A391821: Number of n X n binary arrays with all 1's connected and no 1 having more than two 1's adjacent.

The programs for A391821, there is no canonical definition to state claims against.
-/

/-! ## A391821.P5050300372339469275

`A297664(n+1)+A360200(n+1)+(n+1)²`
-/

namespace A391821.P5050300372339469275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297664 (n + 1) + A360200 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A391821.P5050300372339469275

/-! ## A391821.P819125234730377670

`A391820((n+1)²+n²)`
-/

namespace A391821.P819125234730377670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391820 ((n + 1) ^ 2 + n ^ 2)

end

end A391821.P819125234730377670

/-! ## A391821.P623742668007188425

`A391820(A001844(n))%A214954(3*n+1)`
-/

namespace A391821.P623742668007188425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391820 (A001844 n).toNat) (A214954 (3 * n + 1))

end

end A391821.P623742668007188425

/-!
# A391823: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected, a path of 1's from top row to lower right corner, and no 1 having more than two 1's adjacent.

The programs for A391823, there is no canonical definition to state claims against.
-/

/-! ## A391823.P6040392377718986739

`or(A078812(n), A323162(A042167(n)))`
-/

namespace A391823.P6040392377718986739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078812 n) (A323162 (A042167 n).toNat)

end

end A391823.P6040392377718986739

/-!
# A391824: Array read by antidiagonals: T(m,n) is the number of partitions of the vertices of the grid graph P_m X P_n into dominating sets.

The programs for A391824, there is no canonical definition to state claims against.
-/

/-! ## A391824.P2055133897639470132

`A140595(A180771(n+1))`
-/

namespace A391824.P2055133897639470132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (A180771 (n + 1)).toNat

end

end A391824.P2055133897639470132

/-! ## A391824.P5049986573308126424

`A140595(A301615(n+1))`
-/

namespace A391824.P5049986573308126424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (A301615 (n + 1)).toNat

end

end A391824.P5049986573308126424

/-!
# A391825: Number of partitions of the vertices of the n X n grid graph into dominating sets.

The programs for A391825, there is no canonical definition to state claims against.
-/

/-! ## A391825.P1411411007190068077

`A391824((n+1)²+n²)`
-/

namespace A391825.P1411411007190068077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 ((n + 1) ^ 2 + n ^ 2)

end

end A391825.P1411411007190068077

/-!
# A391826: Number of partitions of the vertices of the n-ladder graph into dominating sets.

The programs for A391826, there is no canonical definition to state claims against.
-/

/-! ## A391826.P13227521243696495130

`A391824(∑[n+2])`
-/

namespace A391826.P13227521243696495130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391826.P13227521243696495130

/-! ## A391826.P3549277731186310887

`A126931(n)+A000120(A068789(n+3))`
-/

namespace A391826.P3549277731186310887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126931 n + A000120 (A068789 (n + 3)).toNat

end

end A391826.P3549277731186310887

/-!
# A391827: Number of partitions of the vertices of the n X 3 grid graph into dominating sets.

The programs for A391827, there is no canonical definition to state claims against.
-/

/-! ## A391827.P11366150478947049488

`A391824(A167614(n+1))`
-/

namespace A391827.P11366150478947049488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (A167614 (n + 1)).toNat

end

end A391827.P11366150478947049488

/-! ## A391827.P16555776406252270013

`A391824(A373663(n+1))`
-/

namespace A391827.P16555776406252270013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (A373663 (n + 1)).toNat

end

end A391827.P16555776406252270013

/-! ## A391827.P9694997457736947499

`A391824(A034856(n+2))`
-/

namespace A391827.P9694997457736947499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (A034856 (n + 2)).toNat

end

end A391827.P9694997457736947499

/-!
# A391828: Numbers k such that the map k -> k' reaches a nonzero cycle, where k' is the arithmetic derivative.

The programs for A391828, there is no canonical definition to state claims against.
-/

/-! ## A391828.P4482162403341162881

`A348329(n+3)`
-/

namespace A391828.P4482162403341162881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348329 (n + 3)

end

end A391828.P4482162403341162881

/-!
# A391829: a(n) = (1/4) * Sum_{k=0..n} (k+2) * binomial(2*k+2,2*n-2*k+1).

The programs for A391829, there is no canonical definition to state claims against.
-/

/-! ## A391829.P18435664966110101635

`A277193(A104574(n+2))`
-/

namespace A391829.P18435664966110101635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A104574 (n + 2)).toNat

end

end A391829.P18435664966110101635

/-! ## A391829.P15958900059769199856

`A078844(n)+A037817(A066383(n))`
-/

namespace A391829.P15958900059769199856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078844 n + A037817 (A066383 n).toNat

end

end A391829.P15958900059769199856

/-!
# A391832: a(n) = (1/4) * Sum_{k=0..n} (k+2) * 2^k * binomial(2*k+2,2*n-2*k+1).

The programs for A391832, there is no canonical definition to state claims against.
-/

/-! ## A391832.P434978498956308968

`A033505(n)*A348367(A257286(n))`
-/

namespace A391832.P434978498956308968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n * A348367 (A257286 n).toNat

end

end A391832.P434978498956308968

/-!
# A391834: a(n) = (1/4) * Sum_{k=0..floor(n/3)} (n-2*k+2) * 2^(n-2*k) * binomial(2*n-4*k+2,2*k+1).

The programs for A391834, there is no canonical definition to state claims against.
-/

/-! ## A391834.P11041467035882914434

`A328671(A078842(n))`
-/

namespace A391834.P11041467035882914434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328671 (A078842 n).toNat

end

end A391834.P11041467035882914434

/-!
# A391835: a(n) = (1/4) * Sum_{k=0..n} (k+2) * 2^(n-k) * binomial(2*k+2,2*n-2*k+1).

The programs for A391835, there is no canonical definition to state claims against.
-/

/-! ## A391835.P9596267853211277304

`A307285(a(n-1))+n` with `a(0)=1, a(1)=3`
-/

namespace A391835.P9596267853211277304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A307285 (a (n - 1)).toNat + (n : ℤ)

end

end A391835.P9596267853211277304

/-!
# A391837: a(n) = (1/4) * Sum_{k=0..floor(n/3)} (n-2*k+2) * 2^k * binomial(2*n-4*k+2,2*k+1).

The programs for A391837, there is no canonical definition to state claims against.
-/

/-! ## A391837.P7452694433820845452

`A238785(A076665(n+1))`
-/

namespace A391837.P7452694433820845452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (A076665 (n + 1)).toNat

end

end A391837.P7452694433820845452

/-! ## A391837.P16582011257625949067

`A100702(n)-A305615(A380235(n+1))`
-/

namespace A391837.P16582011257625949067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n - A305615 (A380235 (n + 1)).toNat

end

end A391837.P16582011257625949067

/-!
# A391838: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - log(1-x^2)/x) ).

The programs for A391838, there is no canonical definition to state claims against.
-/

/-! ## A391838.P12865677346014650647

`A016727(A007559(n)-1)`
-/

namespace A391838.P12865677346014650647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (A007559 n - 1).toNat

end

end A391838.P12865677346014650647

/-! ## A391838.P17059668758236458957

`A273886(A367677(n+1))+A135081(n)`
-/

namespace A391838.P17059668758236458957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273886 (A367677 (n + 1)).toNat + A135081 n

end

end A391838.P17059668758236458957

/-!
# A391840: Base 16 sum of digits of prime(n).

The programs for A391840, the canonical program `A391840.P6091312888853669410` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391840 has offset 1).

The definition of A391840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391840.P6091312888853669410

`A053836(A000040(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A391840

/-- `A053836(A000040(n+1))` -/
def P6091312888853669410.Spec : Prop :=
  ∀ n, P6091312888853669410.a n = A391840 (n + 1)

theorem P6091312888853669410.correct : P6091312888853669410.Spec := by
  intro n
  simp only [A391840, Nat.add_sub_cancel]

end A391840

/-! ## A391840.P4988015980065668035

`A053836(A008578(n+2))`
-/

namespace A391840.P4988015980065668035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A008578 (n + 2)).toNat

end

end A391840.P4988015980065668035

namespace A391840

/-- `A053836(A008578(n+2))` -/
def P4988015980065668035.Spec : Prop :=
  ∀ n, P4988015980065668035.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P17897012960140401183

`A053836(A182986(n+2))`
-/

namespace A391840.P17897012960140401183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A182986 (n + 2)).toNat

end

end A391840.P17897012960140401183

namespace A391840

/-- `A053836(A182986(n+2))` -/
def P17897012960140401183.Spec : Prop :=
  ∀ n, P17897012960140401183.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P15148578019540442327

`A053836(A006093(n+1)+1)`
-/

namespace A391840.P15148578019540442327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A006093 (n + 1) + 1).toNat

end

end A391840.P15148578019540442327

namespace A391840

/-- `A053836(A006093(n+1)+1)` -/
def P15148578019540442327.Spec : Prop :=
  ∀ n, P15148578019540442327.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P7239498105656393353

`A053836(record[A000010(n+1)]+1)`
-/

namespace A391840.P7239498105656393353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A391840.P7239498105656393353

namespace A391840

/-- `A053836(record[A000010(n+1)]+1)` -/
def P7239498105656393353.Spec : Prop :=
  ∀ n, P7239498105656393353.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P12635950188248683936

`A053836(eq[n, A000010(n+1)]+1)`
-/

namespace A391840.P12635950188248683936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A391840.P12635950188248683936

namespace A391840

/-- `A053836(eq[n, A000010(n+1)]+1)` -/
def P12635950188248683936.Spec : Prop :=
  ∀ n, P12635950188248683936.a n = A391840 (n + 1)

end A391840

/-!
# A391843: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k+1,3*n-5*k).

The programs for A391843, the canonical program `A391843.P11493510497588929288` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391843 has offset 0).

The definition of A391843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391843.P11493510497588929288

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A391843

/-- `3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P11493510497588929288.Spec : Prop :=
  ∀ n, P11493510497588929288.a n = A391843 n

theorem P11493510497588929288.correct : P11493510497588929288.Spec := by
  intro n
  simp only [A391843]

end A391843

/-! ## A391843.P7537228479585782506

`A017837(3*(n+1)+2)`
-/

namespace A391843.P7537228479585782506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (3 * (n + 1) + 2)

end

end A391843.P7537228479585782506

namespace A391843

/-- `A017837(3*(n+1)+2)` -/
def P7537228479585782506.Spec : Prop :=
  ∀ n, P7537228479585782506.a n = A391843 n

end A391843

/-!
# A391844: a(n) = 1 if the least prime not dividing the arithmetic derivative of n is equal to the least prime dividing n, otherwise 0. a(1) = 1 by convention.

The programs for A391844, there is no canonical definition to state claims against.
-/

/-! ## A391844.P3209903912680875850

`char[A391845(n+1)-1]`
-/

namespace A391844.P3209903912680875850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391844.P3209903912680875850

/-! ## A391844.P12674800387528240909

`A000035(A359465(n+1)+A049616(n+3))`
-/

namespace A391844.P12674800387528240909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359465 (n + 1) + A049616 (n + 3)).toNat

end

end A391844.P12674800387528240909

/-! ## A391844.P5516258608118993199

`A108730(A008480(n+1)-A335453(n+1))^A208536(n+1)`
-/

namespace A391844.P5516258608118993199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108730 (A008480 (n + 1) - A335453 (n + 1)).toNat : ℚ) ^ (A208536 (n + 1) : ℤ)

end

end A391844.P5516258608118993199

/-! ## A391844.P9278563706075570941

`A000035(A348497(n+1)+A130667(n+1))`
-/

namespace A391844.P9278563706075570941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A348497 (n + 1) + A130667 (n + 1)).toNat

end

end A391844.P9278563706075570941

/-! ## A391844.P11286245725440119611

`(A157338(n+1)*A340070(n+1)-n+1)%2`
-/

namespace A391844.P11286245725440119611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157338 (n + 1) * A340070 (n + 1) - (n : ℤ) + 1) 2

end

end A391844.P11286245725440119611

/-!
# A391845: Numbers k such that the least prime not dividing the arithmetic derivative of k is equal to the least prime dividing k.

The programs for A391845, there is no canonical definition to state claims against.
-/

/-! ## A391845.P3294237395101539211

`∪[A393065(n+1), A016825(n)]`
-/

namespace A391845.P3294237395101539211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391845.P3294237395101539211

/-! ## A391845.P10647342064582488586

`∪[A111284(n+1), A393065(n+1)]`
-/

namespace A391845.P10647342064582488586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391845.P10647342064582488586

/-! ## A391845.P5920324560748889519

`filter[A359821(n+1), A391844(#)]`
-/

namespace A391845.P5920324560748889519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P5920324560748889519

/-! ## A391845.P13053545139125443219

`filter[A014528(n), A391844(#)]`
-/

namespace A391845.P13053545139125443219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13053545139125443219

/-! ## A391845.P3855783091641812201

`filter[A042968(n+1), A391844(#)]`
-/

namespace A391845.P3855783091641812201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P3855783091641812201

/-! ## A391845.P1468269908127768065

`filter[A119316(n+1), A391844(#)]`
-/

namespace A391845.P1468269908127768065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P1468269908127768065

/-! ## A391845.P14259807710853990799

`filter[A359794(n+1), A391844(#)]`
-/

namespace A391845.P14259807710853990799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P14259807710853990799

/-! ## A391845.P8540480478930872884

`filter[A387335(n+1), A391844(#)]`
-/

namespace A391845.P8540480478930872884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P8540480478930872884

/-! ## A391845.P548819226798261047

`filter[A047592(n+1), A391844(#)]`
-/

namespace A391845.P548819226798261047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P548819226798261047

/-! ## A391845.P12480264300743703536

`filter[A047588(n+2), A391844(#)]`
-/

namespace A391845.P12480264300743703536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P12480264300743703536

/-! ## A391845.P7517556413769007914

`filter[A317468(n+1), A391844(#)]`
-/

namespace A391845.P7517556413769007914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P7517556413769007914

/-! ## A391845.P10935644980196332895

`filter[A065090(n+1), A391844(#)]`
-/

namespace A391845.P10935644980196332895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P10935644980196332895

/-! ## A391845.P9682561377942138676

`filter[A171581(n+1), A391844(#)]`
-/

namespace A391845.P9682561377942138676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P9682561377942138676

/-! ## A391845.P13606612557338182434

`filter[A173905(n+2), A391844(#)]`
-/

namespace A391845.P13606612557338182434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13606612557338182434

/-! ## A391845.P2165083294708747988

`filter[A338924(n+1), A391844(#)]`
-/

namespace A391845.P2165083294708747988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P2165083294708747988

/-! ## A391845.P2828256808810348608

`filter[A073900(n+1), A391844(#)]`
-/

namespace A391845.P2828256808810348608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P2828256808810348608

/-! ## A391845.P13041954326329583785

`filter[A073899(n+1), A391844(#)]`
-/

namespace A391845.P13041954326329583785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13041954326329583785

/-! ## A391845.P10514102546085995872

`filter[A382746(n+1), A391844(#)]`
-/

namespace A391845.P10514102546085995872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P10514102546085995872

/-! ## A391845.P149170439870634408

`filter[A168186(n+1), A391844(#)]`
-/

namespace A391845.P149170439870634408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P149170439870634408

/-! ## A391845.P13313483817609958854

`filter[A101513(n+1), A391844(#)]`
-/

namespace A391845.P13313483817609958854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13313483817609958854

/-!
# A391847: Odd numbers k such that 11*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391847, there is no canonical definition to state claims against.
-/

/-! ## A391847.P1515687295054113212

`∩[A047529(n+1), A391846(n+1)]`
-/

namespace A391847.P1515687295054113212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391847.P1515687295054113212

/-! ## A391847.P17973140749760874434

`∩[A391846(n+1), A060747(n)]`
-/

namespace A391847.P17973140749760874434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391847.P17973140749760874434

/-! ## A391847.P9913876586931827450

`∩[A372293(n+1), A391846(n+1)]`
-/

namespace A391847.P9913876586931827450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391847.P9913876586931827450

/-! ## A391847.P1481557285599651413

`filter[A391846(n+1), A000035(#)]`
-/

namespace A391847.P1481557285599651413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391847.P1481557285599651413

/-!
# A391849: Odd numbers k such that 13*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391849, there is no canonical definition to state claims against.
-/

/-! ## A391849.P2842516366041004890

`∩[2*n+1, A391848(n+1)]`
-/

namespace A391849.P2842516366041004890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391849.P2842516366041004890

/-! ## A391849.P14534974168097595274

`∩[A391848(n+1), A060747(n)]`
-/

namespace A391849.P14534974168097595274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391849.P14534974168097595274

/-! ## A391849.P5633931271566124667

`∩[A391848(n+1), record[A000265(n+1)]]`
-/

namespace A391849.P5633931271566124667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391849.P5633931271566124667

/-! ## A391849.P6858540526427079633

`filter[A391848(n+1), A000035(#)]`
-/

namespace A391849.P6858540526427079633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391849.P6858540526427079633

/-!
# A391850: Numbers k such that 15*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391850, there is no canonical definition to state claims against.
-/

/-! ## A391850.P7029313323000230439

`A391848(n+1)%A214577(3*(n+1))`
-/

namespace A391850.P7029313323000230439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391848 (n + 1)) (A214577 (3 * (n + 1)))

end

end A391850.P7029313323000230439

/-! ## A391850.P10203198009529936999

`A391848(n+1)%A013929(A000285(n))`
-/

namespace A391850.P10203198009529936999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391848 (n + 1)) (A013929 (A000285 n).toNat)

end

end A391850.P10203198009529936999

/-! ## A391850.P11753733169160354987

`A391848(n+1)+A335520(A000040(n+1))`
-/

namespace A391850.P11753733169160354987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1) + A335520 (A000040 (n + 1)).toNat

end

end A391850.P11753733169160354987

/-! ## A391850.P519873523427426244

`A391848(n+1)+A235127(A005894(2*n))`
-/

namespace A391850.P519873523427426244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1) + A235127 (A005894 (2 * n)).toNat

end

end A391850.P519873523427426244

/-!
# A391851: Odd numbers k such that 15*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391851, there is no canonical definition to state claims against.
-/

/-! ## A391851.P1092566191208734565

`∩[A391584(n+1), A391850(n+1)]`
-/

namespace A391851.P1092566191208734565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391851.P1092566191208734565

/-! ## A391851.P4019430018910047297

`∩[A103127(n+1), A391850(n+1)]`
-/

namespace A391851.P4019430018910047297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391851.P4019430018910047297

/-! ## A391851.P7326619068207963666

`∩[A391850(n+1), A060747(n)]`
-/

namespace A391851.P7326619068207963666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391851.P7326619068207963666

/-! ## A391851.P12595159027777265498

`filter[A391850(n+1), A000035(#)]`
-/

namespace A391851.P12595159027777265498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391851.P12595159027777265498

/-!
# A391852: Numbers k such that 17*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391852, there is no canonical definition to state claims against.
-/

/-! ## A391852.P3813172465759618301

`lt[A053281(3*n+1), A097159(A303948(n+3))]`
-/

namespace A391852.P3813172465759618301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053281 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097159 (A303948 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391852.P3813172465759618301

/-! ## A391852.P12710481668663299370

`lt[A199973(n+1), A000203(A335485(n+4))]`
-/

namespace A391852.P12710481668663299370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A335485 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391852.P12710481668663299370

/-! ## A391852.P13545073196268117809

`lt[A293216(n+1), A337194(A389082(2*n+5))]`
-/

namespace A391852.P13545073196268117809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (A389082 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391852.P13545073196268117809

/-! ## A391852.P6533272042343681114

`lt[(n%2)^n, A121997(3*n+5)]`
-/

namespace A391852.P6533272042343681114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391852.P6533272042343681114

/-! ## A391852.P644181358903563030

`lt[A100347(n), A252192(A000009(n))]`
-/

namespace A391852.P644181358903563030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A000009 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391852.P644181358903563030

/-!
# A391853: Odd numbers k such that 17*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391853, there is no canonical definition to state claims against.
-/

/-! ## A391853.P6753376323069325767

`∩[2*n+1, A391852(n+1)]`
-/

namespace A391853.P6753376323069325767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391853.P6753376323069325767

/-! ## A391853.P18396064587928149055

`∩[A391852(n+1), A060747(n)]`
-/

namespace A391853.P18396064587928149055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391853.P18396064587928149055

/-! ## A391853.P6380365060326011799

`filter[A391852(n+1), A000035(#)]`
-/

namespace A391853.P6380365060326011799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391853.P6380365060326011799

/-! ## A391853.P10958160978759587932

`eq[char[A391852(n+1)], A006519(3*n+4)]`
-/

namespace A391853.P10958160978759587932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A391853.P10958160978759587932

/-! ## A391853.P10904451133505062042

`eq[A066057(3*(n+1)), A216319(A216321(2*n+1))]`
-/

namespace A391853.P10904451133505062042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216319 (A216321 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391853.P10904451133505062042

/-!
# A391854: Numbers k such that 19*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391854, there is no canonical definition to state claims against.
-/

/-! ## A391854.P16840094997871111833

`∩[A335467(n+1), A391858(n+1)]`
-/

namespace A391854.P16840094997871111833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391854.P16840094997871111833

/-! ## A391854.P8621144317088634256

`∩[A335523(n+1), A391858(n+1)]`
-/

namespace A391854.P8621144317088634256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391854.P8621144317088634256

/-! ## A391854.P1637716710020499396

`∩[A369464(n+1), A391858(n+1)]`
-/

namespace A391854.P1637716710020499396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391854.P1637716710020499396

/-! ## A391854.P4833738193553164439

`∩[A374249(n+1), A391858(n+1)]`
-/

namespace A391854.P4833738193553164439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391854.P4833738193553164439

/-!
# A391855: Odd numbers k such that 19*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391855, there is no canonical definition to state claims against.
-/

/-! ## A391855.P18162089932676276408

`∩[2*n+1, A391854(n+1)]`
-/

namespace A391855.P18162089932676276408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391855.P18162089932676276408

/-! ## A391855.P4153885495810573256

`∩[A391854(n+1), A060747(n)]`
-/

namespace A391855.P4153885495810573256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391855.P4153885495810573256

/-! ## A391855.P17722351232312617163

`filter[A391854(n+1), A000035(#)]`
-/

namespace A391855.P17722351232312617163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391855.P17722351232312617163

/-!
# A391857: Odd numbers k such that 21*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391857, there is no canonical definition to state claims against.
-/

/-! ## A391857.P14327097444656745046

`∩[2*n+1, A391856(n+1)]`
-/

namespace A391857.P14327097444656745046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391857.P14327097444656745046

/-! ## A391857.P8398738448217142509

`∩[A391856(n+1), A060747(n)]`
-/

namespace A391857.P8398738448217142509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391857.P8398738448217142509

/-! ## A391857.P4561757606369237730

`filter[A391856(n+1), A000035(#)]`
-/

namespace A391857.P4561757606369237730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391857.P4561757606369237730

/-!
# A391858: Numbers k such that 25*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391858, there is no canonical definition to state claims against.
-/

/-! ## A391858.P10963289811373291771

`∩[A175427(n+1), A391854(n+1)]`
-/

namespace A391858.P10963289811373291771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391858.P10963289811373291771

/-! ## A391858.P10570255425920339457

`A391854(n+1)%A046352(A054352(n))`
-/

namespace A391858.P10570255425920339457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391854 (n + 1)) (A046352 (A054352 n).toNat)

end

end A391858.P10570255425920339457

/-! ## A391858.P15115902815350015551

`A391854(n+1)+A010057(A344995(n+1))`
-/

namespace A391858.P15115902815350015551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1) + A010057 (A344995 (n + 1)).toNat

end

end A391858.P15115902815350015551

/-! ## A391858.P2270030308320506166

`A000035(A334276(n+1))*A391854(n+1)`
-/

namespace A391858.P2270030308320506166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A334276 (n + 1)).toNat * A391854 (n + 1)

end

end A391858.P2270030308320506166

/-! ## A391858.P7040192067844266384

`A000035(A272160(3*n+4))*A391854(n+1)`
-/

namespace A391858.P7040192067844266384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A272160 (3 * n + 4)).toNat * A391854 (n + 1)

end

end A391858.P7040192067844266384

/-!
# A391859: Odd numbers k such that 25*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391859, there is no canonical definition to state claims against.
-/

/-! ## A391859.P6329053165640695220

`∩[2*n+1, A391858(n+1)]`
-/

namespace A391859.P6329053165640695220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391859.P6329053165640695220

/-! ## A391859.P4435643521457168773

`∩[A391858(n+1), A060747(n)]`
-/

namespace A391859.P4435643521457168773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391859.P4435643521457168773

/-! ## A391859.P8339351378221421533

`filter[A391858(n+1), A000035(#)]`
-/

namespace A391859.P8339351378221421533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391859.P8339351378221421533

/-!
# A391860: Numbers k such that 49*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391860, there is no canonical definition to state claims against.
-/

/-! ## A391860.P4893247466657473237

`∩[A174995(n+1), A032517(n)]`
-/

namespace A391860.P4893247466657473237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391860.P4893247466657473237

/-! ## A391860.P10078401618881770320

`lt[A353848(n), A171796(A304442(n))]`
-/

namespace A391860.P10078401618881770320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171796 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P10078401618881770320

/-! ## A391860.P4110011477807919023

`lt[A392182(n+1), A392440(A048259(n))]`
-/

namespace A391860.P4110011477807919023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392440 (A048259 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P4110011477807919023

/-! ## A391860.P10174446778039938028

`lt[A325346(n+5), A374627(A309894(2*n))]`
-/

namespace A391860.P10174446778039938028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325346 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374627 (A309894 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P10174446778039938028

/-! ## A391860.P10664625420602955731

`lt[A364583(n), A029888(A007095(3*n))]`
-/

namespace A391860.P10664625420602955731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029888 (A007095 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P10664625420602955731

/-!
# A391861: Odd numbers k such that 49*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391861, there is no canonical definition to state claims against.
-/

/-! ## A391861.P5661417303789161102

`∩[2*n+1, A391860(n+1)]`
-/

namespace A391861.P5661417303789161102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391861.P5661417303789161102

/-! ## A391861.P1775863671234147915

`∩[A391860(n+1), A060747(n)]`
-/

namespace A391861.P1775863671234147915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391861.P1775863671234147915

/-! ## A391861.P6493939458215571905

`filter[A391860(n+1), A000035(#)]`
-/

namespace A391861.P6493939458215571905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391861.P6493939458215571905

/-! ## A391861.P9332722360554051003

`∩[A003543(n+1), A333762(n+1)]`
-/

namespace A391861.P9332722360554051003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391861.P9332722360554051003

/-! ## A391861.P2718015119601109921

`∩[A064896(n+1), A191840(n+1)]`
-/

namespace A391861.P2718015119601109921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391861.P2718015119601109921

/-!
# A391862: Numbers k that are coprime to A276085(k), where A276085 is the primorial base log-function.

The programs for A391862, there is no canonical definition to state claims against.
-/

/-! ## A391862.P17889250073802102236

`record[(n+1)/A373361(n+1)]`
-/

namespace A391862.P17889250073802102236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A373361 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391862.P17889250073802102236

/-! ## A391862.P12984687736914087172

`lt[A309901(A326046(n+1)), A072656(3*n+1)]`
-/

namespace A391862.P12984687736914087172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309901 (A326046 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072656 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391862.P12984687736914087172

/-! ## A391862.P11983983798054733703

`lt[A004718(2*(n+2)), A156869(A208510(n+1))]`
-/

namespace A391862.P11983983798054733703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156869 (A208510 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391862.P11983983798054733703

/-!
# A391863: Numbers k that are coprime to A276085(k) and that are not divisible by p^p for any prime p, where A276085 is the primorial base log-function.

The programs for A391863, there is no canonical definition to state claims against.
-/

/-! ## A391863.P2197725237833686690

`filter[A391862(n+1), A359550(#)]`
-/

namespace A391863.P2197725237833686690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A391863.P2197725237833686690

/-! ## A391863.P9325524439545911391

`∩[A048103(n+1), A391862(n+1)]`
-/

namespace A391863.P9325524439545911391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P9325524439545911391

/-! ## A391863.P13868033820115117019

`∩[A387181(n+1), A391862(n+1)]`
-/

namespace A391863.P13868033820115117019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P13868033820115117019

/-! ## A391863.P7316482743269780736

`∩[A325368(n+1), A391862(n+1)]`
-/

namespace A391863.P7316482743269780736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P7316482743269780736

/-! ## A391863.P11125896356589173227

`∩[A342521(n+1), A391862(n+1)]`
-/

namespace A391863.P11125896356589173227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P11125896356589173227

/-!
# A391864: Numbers k such that A003415(k) == A276085(k) (mod 2310), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A391864, there is no canonical definition to state claims against.
-/

/-! ## A391864.P16300824083358171815

`eq[A040787(n), A370117(n)]`
-/

namespace A391864.P16300824083358171815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391864.P16300824083358171815

/-! ## A391864.P13376465630425161802

`A369650(n+1)%A128473(n+1)`
-/

namespace A391864.P13376465630425161802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369650 (n + 1)) (A128473 (n + 1))

end

end A391864.P13376465630425161802

/-!
# A391868: Start with the list of positive integers 1,2,3,... . After each integer k, insert k empty positions. Fill these positions, from left to right, with the positive integers in order. Repeat this spacing-and-filling process indefinitely. The sequence consists of the positions of the last occurrence of 1 after each step.

The programs for A391868, the canonical program `A391868.P15801713376637900617` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391868 has offset 1).

The definition of A391868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391868.P15801713376637900617

`a(n-1)+A006893(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391868

/-- `a(n-1)+A006893(n-1)` -/
def P15801713376637900617.Spec : Prop :=
  ∀ n, P15801713376637900617.a n = A391868 (n + 1)

theorem P15801713376637900617.correct : P15801713376637900617.Spec := by
  intro n
  simp only [A391868, Nat.add_sub_cancel]

end A391868

/-! ## A391868.P17169117361142766879

`a(n-1)+A007501(n-2)-1` with `a(0)=1, a(1)=2`
-/

namespace A391868.P17169117361142766879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A007501 (n - 2) - 1

end

end A391868.P17169117361142766879

namespace A391868

/-- `a(n-1)+A007501(n-2)-1` -/
def P17169117361142766879.Spec : Prop :=
  ∀ n, P17169117361142766879.a n = A391868 (n + 1)

end A391868

/-! ## A391868.P17699647865778973629

`A299767(A094373(n))`
-/

namespace A391868.P17699647865778973629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A094373 n).toNat

end

end A391868.P17699647865778973629

namespace A391868

/-- `A299767(A094373(n))` -/
def P17699647865778973629.Spec : Prop :=
  ∀ n, P17699647865778973629.a n = A391868 (n + 1)

end A391868

/-!
# A391870: Records in A210693.

The programs for A391870, there is no canonical definition to state claims against.
-/

/-! ## A391870.P1747087104350818279

`A210693(A391871(n+1))`
-/

namespace A391870.P1747087104350818279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210693 (A391871 (n + 1)).toNat

end

end A391870.P1747087104350818279

/-! ## A391870.P7126467216456466768

`record[A210693(n+1)]`
-/

namespace A391870.P7126467216456466768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391870.P7126467216456466768

/-!
# A391874: Nonsquare integers >= 2 for which the square of its largest prime factor equals the sum of the squares of its other prime factors, with multiplicity.

The programs for A391874, there is no canonical definition to state claims against.
-/

/-! ## A391874.P905667308659794439

`filter[A390574(n+1), A049240(#)]`
-/

namespace A391874.P905667308659794439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A391874.P905667308659794439

/-!
# A391875: a(n) = Sum_{k=0..n} 2^k * binomial(k+2,2) * binomial(2*k,2*(n-k)).

The programs for A391875, there is no canonical definition to state claims against.
-/

/-! ## A391875.P10956338448862394553

`A007093(A318890(n+1)*A333392(n))`
-/

namespace A391875.P10956338448862394553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A318890 (n + 1) * A333392 n).toNat

end

end A391875.P10956338448862394553

/-!
# A391876: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(k+2,2) * binomial(2*k,2*(n-k)).

The programs for A391876, there is no canonical definition to state claims against.
-/

/-! ## A391876.P8688169876884836887

`A345911(A001835(n))+A000096(n)`
-/

namespace A391876.P8688169876884836887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345911 (A001835 n).toNat + A000096 n

end

end A391876.P8688169876884836887

/-!
# A391878: The number of vacuously transitive relations on an n-set.

The programs for A391878, there is no canonical definition to state claims against.
-/

/-! ## A391878.P3023168596662486156

`2^n*A001831(n)`
-/

namespace A391878.P3023168596662486156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001831 n

end

end A391878.P3023168596662486156

/-! ## A391878.P12376446188424095565

`lcm(A000079(n), A001831(n))`
-/

namespace A391878.P12376446188424095565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001831 n)

end

end A391878.P12376446188424095565

/-! ## A391878.P16776852846423037019

`A001831(n)*A011782(n+1)`
-/

namespace A391878.P16776852846423037019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n * A011782 (n + 1)

end

end A391878.P16776852846423037019

/-! ## A391878.P15183619616002298412

`A001831(n)*A099884(A000217(n))`
-/

namespace A391878.P15183619616002298412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n * A099884 (A000217 n).toNat

end

end A391878.P15183619616002298412

/-! ## A391878.P2029988473201524770

`A006905(n)-A393191(n)`
-/

namespace A391878.P2029988473201524770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A393191 n

end

end A391878.P2029988473201524770

/-!
# A391884: Numbers k such that k^2 - 1 is one of Ramanujan's largely composite numbers (A067128).

The programs for A391884, there is no canonical definition to state claims against.
-/

/-! ## A391884.P16826737933285876310

`A002267(record[A339367(3*(n+1))+1])`
-/

namespace A391884.P16826737933285876310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391884.P16826737933285876310

/-!
# A391885: Numbers m such that the product m*(m+1) has a set of prime divisors, from greatest down to 2, that is missing exactly one prime divisor.

The programs for A391885, there is no canonical definition to state claims against.
-/

/-! ## A391885.P13497082502402990491

`eq[1, A391449(n+1)]+1`
-/

namespace A391885.P13497082502402990491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391885.P13497082502402990491

/-!
# A391886: Array read by downward antidiagonals: A(n,k) = A(n-1,k) + (k+1)*A(n-1,k+1) + k*A(n-1,k-1) with A(n,0) = A(n-1,0) + A(n-1,1), A(0,k) = 1.

The programs for A391886, there is no canonical definition to state claims against.
-/

/-! ## A391886.P1824676214074339961

`A117924(A121757(n))`
-/

namespace A391886.P1824676214074339961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A121757 n).toNat

end

end A391886.P1824676214074339961

/-!
# A391887: Alternately add and multiply the last two terms starting with 2, 1.

The programs for A391887, there is no canonical definition to state claims against.
-/

/-! ## A391887.P8816492982252250899

`A265496(Δ[n²])`
-/

namespace A391887.P8816492982252250899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A391887.P8816492982252250899

/-! ## A391887.P673236196928792547

`filter[A265496(2*n+1), A011558(#)]`
-/

namespace A391887.P673236196928792547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265496 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A391887.P673236196928792547

/-! ## A391887.P5847046760618461217

`filter[A265496(2*n+1), A022932(#)]`
-/

namespace A391887.P5847046760618461217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265496 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A391887.P5847046760618461217

/-! ## A391887.P4764990997367601239

`filter[A265496(2*n+1), A071026(#)]`
-/

namespace A391887.P4764990997367601239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265496 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A391887.P4764990997367601239

/-! ## A391887.P9700302408852489686

`filter[A265496(2*n+1), A071038(#)]`
-/

namespace A391887.P9700302408852489686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265496 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A391887.P9700302408852489686

/-!
# A391888: a(0)=5 and a(n) = n*(a(n-1) + 2) for n > 0.

The programs for A391888, the canonical program `A391888.P18368503689218933571` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391888 has offset 0).

The definition of A391888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+2)` (program `A391888.P18368503689218933571`, by `A391888.P18368503689218933571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391888.P18368503689218933571

`n*(a(n-1)+2)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A391888

/-- `n*(a(n-1)+2)` -/
def P18368503689218933571.Spec : Prop :=
  ∀ n, (P18368503689218933571.a n : ℤ) = A391888 n

theorem P18368503689218933571.correct : P18368503689218933571.Spec := by
  intro n
  simp only [A391888]

end A391888

/-! ## A391888.P10926226618306383402

`n*(2-floor(-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A391888.P10926226618306383402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A391888.P10926226618306383402

namespace A391888

/-- `n*(2-floor(-a(n-1)))` -/
def P10926226618306383402.Spec : Prop :=
  ∀ n, P10926226618306383402.a n = A391888 n

end A391888

/-! ## A391888.P9626701637832601402

`n*(2-ceil(-a(n-1)))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A391888.P9626701637832601402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A391888.P9626701637832601402

namespace A391888

/-- `n*(2-ceil(-a(n-1)))` -/
def P9626701637832601402.Spec : Prop :=
  ∀ n, P9626701637832601402.a n = A391888 n

end A391888

/-! ## A391888.P2380250268144784039

`n*(2-round(-a(n-1)))` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A391888.P2380250268144784039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A391888.P2380250268144784039

namespace A391888

/-- `n*(2-round(-a(n-1)))` -/
def P2380250268144784039.Spec : Prop :=
  ∀ n, P2380250268144784039.a n = A391888 n

end A391888

/-! ## A391888.P7654033291521963166

`(a(n-1)+2)/n^(-1)` with `a(0)=5`
-/

namespace A391888.P7654033291521963166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (a (n - 1) + 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A391888.P7654033291521963166

namespace A391888

/-- `(a(n-1)+2)/n^(-1)` -/
def P7654033291521963166.Spec : Prop :=
  ∀ n, P7654033291521963166.a n = (A391888 n : ℚ)

end A391888

/-! ## A391888.P16656514723295084457

`n*(4-(4/2-a(n-1)))` with `a(0)=5`
-/

namespace A391888.P16656514723295084457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℚ) * (4 - ((4 : ℚ) / 2 - a (n - 1)))

end

end A391888.P16656514723295084457

namespace A391888

/-- `n*(4-(4/2-a(n-1)))` -/
def P16656514723295084457.Spec : Prop :=
  ∀ n, P16656514723295084457.a n = (A391888 n : ℚ)

end A391888

/-! ## A391888.P7969508818078742717

`3*n-n*(1-a(n-1))` with `a(0)=5`
-/

namespace A391888.P7969508818078742717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (3 * n : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A391888.P7969508818078742717

namespace A391888

/-- `3*n-n*(1-a(n-1))` -/
def P7969508818078742717.Spec : Prop :=
  ∀ n, P7969508818078742717.a n = A391888 n

end A391888

/-! ## A391888.P9974091429761919620

`A019466(2*n)+A019465(2*n)`
-/

namespace A391888.P9974091429761919620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019466 (2 * n) + A019465 (2 * n)

end

end A391888.P9974091429761919620

namespace A391888

/-- `A019466(2*n)+A019465(2*n)` -/
def P9974091429761919620.Spec : Prop :=
  ∀ n, P9974091429761919620.a n = A391888 n

end A391888

/-!
# A391890: a(n) = Sum_{k=0..n} (k+1) * binomial(2*k+1,2*n-2*k+1).

The programs for A391890, there is no canonical definition to state claims against.
-/

/-! ## A391890.P6921018914580554124

`A387573(2*n+3)`
-/

namespace A391890.P6921018914580554124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387573 (2 * n + 3)

end

end A391890.P6921018914580554124

/-! ## A391890.P8419598268209553469

`A391891(n+1)+A381421(n)-A381421(n+1)`
-/

namespace A391890.P8419598268209553469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391891 (n + 1) + (A381421 n - A381421 (n + 1))

end

end A391890.P8419598268209553469

/-! ## A391890.P15693425901987605361

`A124369(A084849(n+1))`
-/

namespace A391890.P15693425901987605361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (A084849 (n + 1)).toNat

end

end A391890.P15693425901987605361

/-!
# A391891: a(n) = Sum_{k=0..n} (k+1) * binomial(2*k+1,2*n-2*k).

The programs for A391891, there is no canonical definition to state claims against.
-/

/-! ## A391891.P18263766600902140531

`A124369(A130883(n+1))`
-/

namespace A391891.P18263766600902140531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (A130883 (n + 1)).toNat

end

end A391891.P18263766600902140531

/-! ## A391891.P18011944836772673749

`A124369(∑[A004280(2*(n+1))])`
-/

namespace A391891.P18011944836772673749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391891.P18011944836772673749

/-!
# A391892: a(n) = Sum_{k=0..n} (k+1) * 2^(n-k) * binomial(2*k+1,2*n-2*k+1).

The programs for A391892, there is no canonical definition to state claims against.
-/

/-! ## A391892.P8666204423866020676

`A350944(A090984(n))-A277808(n+1)`
-/

namespace A391892.P8666204423866020676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350944 (A090984 n).toNat - A277808 (n + 1)

end

end A391892.P8666204423866020676

/-!
# A391893: a(n) = Sum_{k=0..n} (k+1) * 2^(n-k) * binomial(2*k+1,2*n-2*k).

The programs for A391893, there is no canonical definition to state claims against.
-/

/-! ## A391893.P4908987177439332257

`A134679(A150642(n+1))`
-/

namespace A391893.P4908987177439332257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134679 (A150642 (n + 1)).toNat

end

end A391893.P4908987177439332257

/-!
# A391894: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(2*k+1,2*n-2*k+1).

The programs for A391894, there is no canonical definition to state claims against.
-/

/-! ## A391894.P16290613687125962349

`A391895(n+1)+A390700(n)-A390700(n+1)`
-/

namespace A391894.P16290613687125962349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391895 (n + 1) + (A390700 n - A390700 (n + 1))

end

end A391894.P16290613687125962349

/-!
# A391896: Cubefull numbers with exactly 2 distinct prime factors.

The programs for A391896, there is no canonical definition to state claims against.
-/

/-! ## A391896.P8566120248705858685

`∩[A036966(n+1), A391921(n+1)]`
-/

namespace A391896.P8566120248705858685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P8566120248705858685

/-! ## A391896.P14254000325899186976

`∩[A372695(n+1), A391921(n+1)]`
-/

namespace A391896.P14254000325899186976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P14254000325899186976

/-! ## A391896.P7068241642331699080

`∩[A376936(n+1), A391921(n+1)]`
-/

namespace A391896.P7068241642331699080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P7068241642331699080

/-! ## A391896.P10199911250022554733

`∩[A036966(n+1), A355462(n+1)]`
-/

namespace A391896.P10199911250022554733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P10199911250022554733

/-! ## A391896.P366107877036197954

`∩[A355462(n+1), A372695(n+1)]`
-/

namespace A391896.P366107877036197954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P366107877036197954

/-! ## A391896.P16543159491121226674

`∩[A355462(n+1), A376936(n+1)]`
-/

namespace A391896.P16543159491121226674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P16543159491121226674

/-! ## A391896.P13568155874598370783

`∩[A355462(n+1), A391968(n+1)]`
-/

namespace A391896.P13568155874598370783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P13568155874598370783

/-! ## A391896.P3681465579074626832

`∩[A391921(n+1), A391968(n+1)]`
-/

namespace A391896.P3681465579074626832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P3681465579074626832

/-! ## A391896.P5074115522522671341

`∩[A036966(n+1), A338539(n+1)]`
-/

namespace A391896.P5074115522522671341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P5074115522522671341

/-! ## A391896.P3058928078684393736

`∩[A338539(n+1), A372695(n+1)]`
-/

namespace A391896.P3058928078684393736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P3058928078684393736

/-!
# A391897: Partial products of A063659.

The programs for A391897, there is no canonical definition to state claims against.
-/

/-! ## A391897.P14682103771405356748

`∏[A063659(n+1)]`
-/

namespace A391897.P14682103771405356748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A391897.P14682103771405356748

/-! ## A391897.P2581821445332583752

`∏[A130106(∑[n+1])]`
-/

namespace A391897.P2581821445332583752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130106 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A391897.P2581821445332583752

/-! ## A391897.P1924710962180166868

`A331288(∏[A331288(n+1)])`
-/

namespace A391897.P1924710962180166868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391897.P1924710962180166868

/-!
# A391898: The maximum exponent in the prime factorization of the exponentially noncomposite numbers (A390439).

The programs for A391898, there is no canonical definition to state claims against.
-/

/-! ## A391898.P11018964781191581943

`A051903(A390439(n+1))`
-/

namespace A391898.P11018964781191581943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A390439 (n + 1)).toNat

end

end A391898.P11018964781191581943

/-!
# A391899: The maximum exponent in the prime factorization of the exponentially squarefree numbers (A209061).

The programs for A391899, the canonical program `A391899.P10823638519009848898` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391899 has offset 1).

The definition of A391899 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391899.P10823638519009848898

`A051903(A209061(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A391899

/-- `A051903(A209061(n+1))` -/
def P10823638519009848898.Spec : Prop :=
  ∀ n, P10823638519009848898.a n = A391899 (n + 1)

theorem P10823638519009848898.correct : P10823638519009848898.Spec := by
  intro n
  simp only [A391899, Nat.add_sub_cancel]

end A391899

/-! ## A391899.P12000974275116340262

`A386468(A209061(2*n+1-n))`
-/

namespace A391899.P12000974275116340262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386468 (A209061 (2 * n + 1 - n)).toNat

end

end A391899.P12000974275116340262

namespace A391899

/-- `A386468(A209061(2*n+1-n))` -/
def P12000974275116340262.Spec : Prop :=
  ∀ n, P12000974275116340262.a n = A391899 (n + 1)

end A391899

