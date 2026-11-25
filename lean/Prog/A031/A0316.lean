import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C011
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C037
import Seq.B003.C000
import Seq.B010.C000
import Seq.Opaque.C013
import Seq.Opaque.C020

/-!
# A031694: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 16.

The programs for A031694, there is no canonical definition to state claims against.
-/

/-! ## A031694.P6192755382968891411

`(64*n+65)*A000005(A037019(n+1))`
-/

namespace A031694.P6192755382968891411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n + 65 : ℤ) * A000005 (A037019 (n + 1)).toNat

end

end A031694.P6192755382968891411

/-! ## A031694.P11181112944850320719

`64*(n+1)²+A057077(A231100(n+1)²)+n`
-/

namespace A031694.P11181112944850320719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * (n + 1) ^ 2 : ℤ) + (A057077 (A231100 (n + 1) ^ 2).toNat + (n : ℤ))

end

end A031694.P11181112944850320719

/-! ## A031694.P15528244375996348596

`A000005(A037019(n+1))*A158071(n+1)`
-/

namespace A031694.P15528244375996348596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A037019 (n + 1)).toNat * A158071 (n + 1)

end

end A031694.P15528244375996348596

/-! ## A031694.P15786998871996924291

`(64*n+65)*A000005(2^n)`
-/

namespace A031694.P15786998871996924291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n + 65 : ℤ) * A000005 (2 ^ n)

end

end A031694.P15786998871996924291

/-! ## A031694.P10946676438372850529

`(8*(n+1))²+A001222(2^n)+1`
-/

namespace A031694.P10946676438372850529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((8 * (n + 1)) ^ 2 : ℤ) + (A001222 (2 ^ n) + 1)

end

end A031694.P10946676438372850529

/-!
# A031696: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 18.

The programs for A031696, there is no canonical definition to state claims against.
-/

/-! ## A031696.P13374408624158263452

`(1+n)*A158123(n+1)`
-/

namespace A031696.P13374408624158263452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A158123 (n + 1)

end

end A031696.P13374408624158263452

/-! ## A031696.P7779777332247248350

`A332893(A177099(2*(n+1))/2)`
-/

namespace A031696.P7779777332247248350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (SequenceMachineLib.roundAway ((A177099 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A031696.P7779777332247248350

/-! ## A031696.P10424833013725385149

`A016777(A244634(n+1))+n`
-/

namespace A031696.P10424833013725385149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A244634 (n + 1)).toNat + (n : ℤ)

end

end A031696.P10424833013725385149

/-! ## A031696.P4940812740916084431

`A008585(A008585(A016766(n+1)))+n+1`
-/

namespace A031696.P4940812740916084431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008585 (A016766 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A031696.P4940812740916084431

/-! ## A031696.P17268093962981270742

`A008585(A033428(A008585(n+1)))+n+1`
-/

namespace A031696.P17268093962981270742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A033428 (A008585 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A031696.P17268093962981270742

