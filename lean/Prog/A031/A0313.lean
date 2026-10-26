import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B012.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A031300: Position of n-th 1 in A031298.

The programs for A031300, there is no canonical definition to state claims against.
-/

/-! ## A031300.P7823323607677113172

`eq[1, A031298(n)]`
-/

namespace A031300.P7823323607677113172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031300.P7823323607677113172

/-! ## A031300.P3003014196912484772

`lt[(1-A031298(n+1))², 1]+1`
-/

namespace A031300.P3003014196912484772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031300.P3003014196912484772

/-! ## A031300.P3898230585407436045

`record[gcd(n+1, A031298(C(n+1, n))+n)]`
-/

namespace A031300.P3898230585407436045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A031298 (Nat.choose (n + 1) n) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031300.P3898230585407436045

/-! ## A031300.P14213215895399131439

`lt[(1-A031298(A000038(n)+n))², 1]`
-/

namespace A031300.P14213215895399131439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031298 (A000038 n + (n : ℤ)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031300.P14213215895399131439

/-! ## A031300.P3618864617515006524

`record[gcd(n+1-A031298(n), A000290(n))]`
-/

namespace A031300.P3618864617515006524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A031298 n) (A000290 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031300.P3618864617515006524

/-!
# A031301: Position of n-th 2 in A031298.

The programs for A031301, there is no canonical definition to state claims against.
-/

/-! ## A031301.P17840469564706353820

`eq[2, A031298(n)]`
-/

namespace A031301.P17840469564706353820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031301.P17840469564706353820

/-! ## A031301.P639142386616552712

`lt[(2-A031298(n-char[1]))², 1]`
-/

namespace A031301.P639142386616552712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A031298 (n - (if ∃ j, f2 j = n then 1 else 0))) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A031301.P639142386616552712

/-! ## A031301.P11125857782216082976

`lt[(2-A031298(n+1))², 1]+1`
-/

namespace A031301.P11125857782216082976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031301.P11125857782216082976

/-! ## A031301.P7353444512684722906

`record[gcd(n+2, A031298(n+2)+n)]`
-/

namespace A031301.P7353444512684722906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A031298 (n + 2) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031301.P7353444512684722906

/-! ## A031301.P18079365720380784894

`A004526(2*lt[(2-A031298(n))², 1])`
-/

namespace A031301.P18079365720380784894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A031298 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A031301.P18079365720380784894

/-!
# A031302: Position of n-th 3 in A031298.

The programs for A031302, there is no canonical definition to state claims against.
-/

/-! ## A031302.P13804677071325043159

`eq[3, A031298(n)]`
-/

namespace A031302.P13804677071325043159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031302.P13804677071325043159

/-! ## A031302.P15125570727728565605

`lt[(3-A031298(n+1))², 1]+1`
-/

namespace A031302.P15125570727728565605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031302.P15125570727728565605

/-! ## A031302.P15249627129079012912

`record[gcd(n+3, A031298(n+3)+n)]`
-/

namespace A031302.P15249627129079012912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A031298 (n + 3) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031302.P15249627129079012912

/-! ## A031302.P17935240050332494312

`lt[(3-A031298(n^floor(atan(n))))², 1]`
-/

namespace A031302.P17935240050332494312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A031298 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031302.P17935240050332494312

/-! ## A031302.P3866851166783374250

`lt[(3-A031298(A000007(n)+n))², 1]`
-/

namespace A031302.P3866851166783374250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A031298 (A000007 n + (n : ℤ)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031302.P3866851166783374250

/-! ## A031302.P13178056491545331970

`lt[(3-A031298(A000038(n)+n))², 1]`
-/

namespace A031302.P13178056491545331970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A031298 (A000038 n + (n : ℤ)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031302.P13178056491545331970

/-!
# A031303: Position of n-th 4 in A031298.

The programs for A031303, there is no canonical definition to state claims against.
-/

/-! ## A031303.P6801895338971481261

`eq[4, A031298(n)]`
-/

namespace A031303.P6801895338971481261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031303.P6801895338971481261

/-! ## A031303.P3269699021879923398

`lt[(4-A031298(n+1))², 1]+1`
-/

namespace A031303.P3269699021879923398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031303.P3269699021879923398

/-! ## A031303.P15722596400977983777

`record[gcd(n+4, A031298(n+4)+n)]`
-/

namespace A031303.P15722596400977983777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 4 : ℤ) (A031298 (n + 4) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031303.P15722596400977983777

/-! ## A031303.P15672560405233185563

`lt[(4-A031298(n^floor(atan(n))))², 1]`
-/

namespace A031303.P15672560405233185563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A031298 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031303.P15672560405233185563

/-! ## A031303.P475096447945710840

`lt[(4-A031298(A000007(n)+n))², 1]`
-/

namespace A031303.P475096447945710840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A031298 (A000007 n + (n : ℤ)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031303.P475096447945710840

/-! ## A031303.P8570153264000802755

`lt[(4-A031298(A000038(n)+n))², 1]`
-/

namespace A031303.P8570153264000802755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A031298 (A000038 n + (n : ℤ)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031303.P8570153264000802755

/-!
# A031304: Position of n-th 5 in A031298.

The programs for A031304, there is no canonical definition to state claims against.
-/

/-! ## A031304.P4137718276238935786

`eq[5, A031298(n)]`
-/

namespace A031304.P4137718276238935786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031304.P4137718276238935786

/-! ## A031304.P13790388616936085147

`lt[(5-A031298(n+1))², 1]+1`
-/

namespace A031304.P13790388616936085147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031304.P13790388616936085147

/-! ## A031304.P4872537226550445987

`lt[(5-A031298(A028310(n)))², 1]`
-/

namespace A031304.P4872537226550445987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A031298 (A028310 n).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031304.P4872537226550445987

/-! ## A031304.P13528205518325160613

`lt[(5-A031298(A004526(2*n)))², 1]`
-/

namespace A031304.P13528205518325160613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A031298 (A004526 (2 * n)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031304.P13528205518325160613

/-! ## A031304.P2433758181247392722

`lt[(5-A031298(A233583(n+1)))², 1]`
-/

namespace A031304.P2433758181247392722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A031298 (A233583 (n + 1)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031304.P2433758181247392722

/-!
# A031305: Position of n-th 6 in A031298.

The programs for A031305, there is no canonical definition to state claims against.
-/

/-! ## A031305.P3659217733029168145

`eq[6, A031298(n)]`
-/

namespace A031305.P3659217733029168145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031305.P3659217733029168145

/-! ## A031305.P16930429321961393019

`lt[(6-A031298(n+1))², 1]+1`
-/

namespace A031305.P16930429321961393019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031305.P16930429321961393019

/-! ## A031305.P6318845612401414422

`lt[(6-A031298(or(n, C(2, n))))², 1]`
-/

namespace A031305.P6318845612401414422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - A031298 (Nat.lor n (Nat.choose 2 n))) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031305.P6318845612401414422

/-! ## A031305.P10144973161742184596

`lt[(6-A031298(A000038(n)+n))², 1]`
-/

namespace A031305.P10144973161742184596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - A031298 (A000038 n + (n : ℤ)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031305.P10144973161742184596

/-! ## A031305.P15413741787974237996

`lt[(6-A031298(abs(A103517(n)%2-n)))², 1]`
-/

namespace A031305.P15413741787974237996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - A031298 |Int.tmod (A103517 n) 2 - (n : ℤ)|.toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031305.P15413741787974237996

/-!
# A031306: Position of n-th 7 in A031298.

The programs for A031306, there is no canonical definition to state claims against.
-/

/-! ## A031306.P10671096372921292721

`eq[7, A031298(n)]`
-/

namespace A031306.P10671096372921292721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031306.P10671096372921292721

/-! ## A031306.P14239329433057858095

`lt[(7-A031298(n+1))², 1]+1`
-/

namespace A031306.P14239329433057858095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031306.P14239329433057858095

/-! ## A031306.P1627200829301951774

`lt[(7-A031298(A028310(n)))², 1]`
-/

namespace A031306.P1627200829301951774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 - A031298 (A028310 n).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031306.P1627200829301951774

/-! ## A031306.P13560155490021018155

`lt[(7-A031298(A000007(n)+n))², 1]`
-/

namespace A031306.P13560155490021018155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 - A031298 (A000007 n + (n : ℤ)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031306.P13560155490021018155

/-! ## A031306.P3848598839919564336

`lt[(7-A031298(or(n, A000007(n))))², 1]`
-/

namespace A031306.P3848598839919564336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 - A031298 (Int.lor (n : ℤ) (A000007 n)).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031306.P3848598839919564336

/-!
# A031307: Position of n-th 8 in A031298.

The programs for A031307, there is no canonical definition to state claims against.
-/

/-! ## A031307.P14700869100396193583

`eq[8, A031298(n)]`
-/

namespace A031307.P14700869100396193583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031307.P14700869100396193583

/-! ## A031307.P1940709632211355272

`lt[(8-A031298(n+1))², 1]+1`
-/

namespace A031307.P1940709632211355272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 - A031298 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031307.P1940709632211355272

/-! ## A031307.P8521001293439059550

`lt[(8-A031298(2*n-n))², 1]`
-/

namespace A031307.P8521001293439059550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 - A031298 (2 * n - n)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031307.P8521001293439059550

/-! ## A031307.P9831672473518765556

`lt[(A031298(n)-A329513(n))², 1]`
-/

namespace A031307.P9831672473518765556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031298 n - A329513 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031307.P9831672473518765556

/-! ## A031307.P18142906294863467481

`xor(A031295(n+1), A057427(A001891(n)))`
-/

namespace A031307.P18142906294863467481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A031295 (n + 1)) (A057427 (A001891 n).toNat)

end

end A031307.P18142906294863467481

/-!
# A031308: Position of n-th 9 in A031298.

The programs for A031308, there is no canonical definition to state claims against.
-/

/-! ## A031308.P8611217034090776187

`lt[8, A031298(n)]`
-/

namespace A031308.P8611217034090776187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031308.P8611217034090776187

/-! ## A031308.P12885269360255359152

`A000027(eq[9, A031298(n)])`
-/

namespace A031308.P12885269360255359152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031308.P12885269360255359152

/-! ## A031308.P10670343030513370782

`eq[9, A031298(A028310(n))]`
-/

namespace A031308.P10670343030513370782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031308.P10670343030513370782

/-! ## A031308.P7320480047476822094

`A087156(eq[9, A031298(n)])`
-/

namespace A031308.P7320480047476822094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031308.P7320480047476822094

/-! ## A031308.P3972971482642625961

`eq[A031298(n), A100401(n)]`
-/

namespace A031308.P3972971482642625961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P3972971482642625961

/-! ## A031308.P9460933218706596334

`eq[A031298(n), A100403(n)]`
-/

namespace A031308.P9460933218706596334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P9460933218706596334

/-! ## A031308.P5416578337316674059

`eq[A031298(n), A168094(n)]`
-/

namespace A031308.P5416578337316674059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P5416578337316674059

/-! ## A031308.P12592010570645174377

`eq[dr(A040073(n)), A031298(n)]`
-/

namespace A031308.P12592010570645174377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040073 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031308.P12592010570645174377

/-! ## A031308.P331020341982205515

`eq[A031298(n), A066586(n+1)]`
-/

namespace A031308.P331020341982205515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P331020341982205515

/-! ## A031308.P313999426373245688

`eq[A031298(n), A094327(n+1)]`
-/

namespace A031308.P313999426373245688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P313999426373245688

/-! ## A031308.P4584858733794358877

`eq[A031298(n), A291092(n+1)]`
-/

namespace A031308.P4584858733794358877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P4584858733794358877

/-! ## A031308.P12275639766541553189

`eq[(A057427(n)+2)², A031298(n)]`
-/

namespace A031308.P12275639766541553189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P12275639766541553189

/-! ## A031308.P1244905757034898998

`eq[A031298(n), A040073(2*n+1)]`
-/

namespace A031308.P1244905757034898998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P1244905757034898998

/-! ## A031308.P11878435081955877297

`eq[1, A031298(n)/A040073(A003817(n))]`
-/

namespace A031308.P11878435081955877297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) / (A040073 (A003817 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031308.P11878435081955877297

/-! ## A031308.P21381389536413755

`eq[1, A031298(n)/A040073(A056896(n+1))]`
-/

namespace A031308.P21381389536413755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) / (A040073 (A056896 (n + 1)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031308.P21381389536413755

/-! ## A031308.P1545520917433170849

`eq[A031298(n), A226602(A030513(n+1))]`
-/

namespace A031308.P1545520917433170849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A030513 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031308.P1545520917433170849

/-! ## A031308.P4962966768498998299

`eq[1, A031298(n)/A040073(A017353(n))]`
-/

namespace A031308.P4962966768498998299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) / (A040073 (A017353 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031308.P4962966768498998299

/-!
# A031310: Write n in base 10, complement each digit and juxtapose.

The programs for A031310, there is no canonical definition to state claims against.
-/

/-! ## A031310.P941470205008357392

`9-A033307(n)`
-/

namespace A031310.P941470205008357392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A033307 n

end

end A031310.P941470205008357392

/-! ## A031310.P3927119631986167454

`9-Δ[A054632(n)]`
-/

namespace A031310.P3927119631986167454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A031310.P3927119631986167454

/-! ## A031310.P15464156986802936917

`9-A007376(n+1)`
-/

namespace A031310.P15464156986802936917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A007376 (n + 1)

end

end A031310.P15464156986802936917

/-! ## A031310.P8589817140818797516

`9-A261333(n)%10`
-/

namespace A031310.P8589817140818797516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.tmod (A261333 n) 10

end

end A031310.P8589817140818797516

/-! ## A031310.P6352507822633232536

`n+10-A098727(n+1)`
-/

namespace A031310.P6352507822633232536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) - A098727 (n + 1)

end

end A031310.P6352507822633232536

/-! ## A031310.P16767983587026046181

`a(n-1)-Δ[A007376(n)]` with `a(0)=8`
-/

namespace A031310.P16767983587026046181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A031310.P16767983587026046181

/-! ## A031310.P1141928368640699988

`9-A108712(2*n+1)`
-/

namespace A031310.P1141928368640699988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A108712 (2 * n + 1)

end

end A031310.P1141928368640699988

/-! ## A031310.P18264722162791873383

`A098728(n)+8-n`
-/

namespace A031310.P18264722162791873383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 n + (8 - (n : ℤ))

end

end A031310.P18264722162791873383

/-! ## A031310.P9242508212805095543

`A098732(n+2)+7-n`
-/

namespace A031310.P9242508212805095543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 2) + (7 - (n : ℤ))

end

end A031310.P9242508212805095543

/-! ## A031310.P16102553893179846158

`12-abs(A098729(n+2)+1-n)`
-/

namespace A031310.P16102553893179846158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - |A098729 (n + 2) + 1 - (n : ℤ)|

end

end A031310.P16102553893179846158

/-!
# A031311: a(n)=least k such that base 10 representation of n begins at s(k), where s=A031310.

The programs for A031311, there is no canonical definition to state claims against.
-/

/-! ## A031311.P4360327268868277379

`A229186(A061601(n+1))%A235175(n+1)`
-/

namespace A031311.P4360327268868277379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229186 (A061601 (n + 1)).toNat) (A235175 (n + 1))

end

end A031311.P4360327268868277379

/-!
# A031312: Successive digits of odd numbers.

The programs for A031312, there is no canonical definition to state claims against.
-/

/-! ## A031312.P3874022425962421358

`A000007(n)+Δ[A067115(A028310(n))]`
-/

namespace A031312.P3874022425962421358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067115 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A031312.P3874022425962421358

/-! ## A031312.P821410472023117510

`A067115(n+1)+A000007(n)-A067115(A028310(n))`
-/

namespace A031312.P821410472023117510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067115 (n + 1) + (A000007 n - A067115 (A028310 n).toNat)

end

end A031312.P821410472023117510

/-! ## A031312.P12008943005582860138

`A067115(n+1)+A057428(n)*A067115(A028310(n))`
-/

namespace A031312.P12008943005582860138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067115 (n + 1) + A057428 n * A067115 (A028310 n).toNat

end

end A031312.P12008943005582860138

/-! ## A031312.P13356262207169204867

`Δ[A067115(A028310(n))-A057428(n)]`
-/

namespace A031312.P13356262207169204867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067115 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031312.P13356262207169204867

/-! ## A031312.P327807443890449279

`Δ[A067115(A028310(n))%A003215(n)]`
-/

namespace A031312.P327807443890449279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067115 (A028310 n).toNat) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031312.P327807443890449279

/-! ## A031312.P8232078480517590188

`Δ[A067115(A065033(2*n))-A057428(n)]`
-/

namespace A031312.P8232078480517590188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067115 (A065033 (2 * n)).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031312.P8232078480517590188

/-! ## A031312.P14646775815464502872

`A036987(A195207(n)²)+A036211(n)`
-/

namespace A031312.P14646775815464502872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A195207 n ^ 2).toNat + A036211 n

end

end A031312.P14646775815464502872

/-! ## A031312.P876233462874913685

`or(A036211(n), A143064(A057979(n)²))`
-/

namespace A031312.P876233462874913685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036211 n) (A143064 (A057979 n ^ 2).toNat)

end

end A031312.P876233462874913685

/-!
# A031313: Position of n-th 0 in A031312.

The programs for A031313, there is no canonical definition to state claims against.
-/

/-! ## A031313.P14992682651161616485

`eq[0, A031312(n+1)]+1`
-/

namespace A031313.P14992682651161616485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031313.P14992682651161616485

/-! ## A031313.P9714814312106669769

`eq[0, A031312(A028310(n))]`
-/

namespace A031313.P9714814312106669769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031313.P9714814312106669769

/-! ## A031313.P7231463534689001101

`A020725(eq[0, A031312(n+1)])`
-/

namespace A031313.P7231463534689001101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031313.P7231463534689001101

/-! ## A031313.P1961429408563214272

`A020725(lt[A031312(n+1), 1])`
-/

namespace A031313.P1961429408563214272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A031313.P1961429408563214272

/-! ## A031313.P17630519770777868512

`eq[0, A031312(A065033(2*n))]`
-/

namespace A031313.P17630519770777868512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031313.P17630519770777868512

/-!
# A031314: Position of n-th 1 in A031312.

The programs for A031314, there is no canonical definition to state claims against.
-/

/-! ## A031314.P6981874527212128628

`eq[1, A031312(n+1)]+1`
-/

namespace A031314.P6981874527212128628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031314.P6981874527212128628

/-! ## A031314.P12024535994095726311

`eq[1, A031312(A000038(n)+n)]`
-/

namespace A031314.P12024535994095726311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031314.P12024535994095726311

/-! ## A031314.P5901483827955256530

`eq[A031312(A028310(n)), A057427(n)]`
-/

namespace A031314.P5901483827955256530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031314.P5901483827955256530

/-! ## A031314.P2285309380967185154

`eq[-A031312(A028310(n)), A057428(n)]`
-/

namespace A031314.P2285309380967185154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A031312 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031314.P2285309380967185154

/-! ## A031314.P11262332336120401758

`eq[A031312(A065033(2*n)), A057427(n)]`
-/

namespace A031314.P11262332336120401758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031314.P11262332336120401758

/-!
# A031315: Position of n-th 2 in A031312.

The programs for A031315, there is no canonical definition to state claims against.
-/

/-! ## A031315.P13792725727057209915

`eq[2, A031312(n+1)]+1`
-/

namespace A031315.P13792725727057209915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031315.P13792725727057209915

/-! ## A031315.P9167932499076521892

`eq[2, A031312(A028310(n))]`
-/

namespace A031315.P9167932499076521892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031315.P9167932499076521892

/-! ## A031315.P6287013231475976634

`A020725(eq[2, A031312(n+1)])`
-/

namespace A031315.P6287013231475976634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031315.P6287013231475976634

/-! ## A031315.P10825019371108640379

`eq[2, A031312(A000007(n)+n)]`
-/

namespace A031315.P10825019371108640379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031315.P10825019371108640379

/-! ## A031315.P12522521837448785090

`eq[2, A031312(A000038(n)+n)]`
-/

namespace A031315.P12522521837448785090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031315.P12522521837448785090

/-! ## A031315.P16464322377543142137

`eq[2, A031312(gcd(n, A008486(n)))]`
-/

namespace A031315.P16464322377543142137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031315.P16464322377543142137

/-! ## A031315.P1805468780774472782

`eq[2, A031312(A065033(2*n))]`
-/

namespace A031315.P1805468780774472782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031315.P1805468780774472782

/-! ## A031315.P13185795305304738569

`eq[2, A031312(A233583(n+1))]`
-/

namespace A031315.P13185795305304738569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031315.P13185795305304738569

/-!
# A031316: Position of n-th 3 in A031312.

The programs for A031316, there is no canonical definition to state claims against.
-/

/-! ## A031316.P14766573243986047102

`eq[3, A031312(n+1)]+1`
-/

namespace A031316.P14766573243986047102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031316.P14766573243986047102

/-! ## A031316.P3589809853745607191

`eq[3, A031312(A028310(n))]`
-/

namespace A031316.P3589809853745607191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031316.P3589809853745607191

/-! ## A031316.P13814103947480024866

`A020725(eq[3, A031312(n+1)])`
-/

namespace A031316.P13814103947480024866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031316.P13814103947480024866

/-! ## A031316.P6909063281607245464

`eq[3, A031312(A000007(n)+n)]`
-/

namespace A031316.P6909063281607245464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031316.P6909063281607245464

/-! ## A031316.P13635776089203175865

`eq[3, A031312(gcd(n, A008486(n)))]`
-/

namespace A031316.P13635776089203175865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031316.P13635776089203175865

/-! ## A031316.P1584979547005340348

`eq[3, A031312(A065033(2*n))]`
-/

namespace A031316.P1584979547005340348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031316.P1584979547005340348

/-!
# A031317: Position of n-th 4 in A031312.

The programs for A031317, there is no canonical definition to state claims against.
-/

/-! ## A031317.P6892015940695836582

`eq[4, A031312(n+1)]+1`
-/

namespace A031317.P6892015940695836582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031317.P6892015940695836582

/-! ## A031317.P3594058030788628349

`eq[4, A031312(A028310(n))]`
-/

namespace A031317.P3594058030788628349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031317.P3594058030788628349

/-! ## A031317.P9447327358565668532

`A020725(eq[4, A031312(n+1)])`
-/

namespace A031317.P9447327358565668532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031317.P9447327358565668532

/-! ## A031317.P1702140962734207330

`eq[4, A031312(A060000(n+1))]`
-/

namespace A031317.P1702140962734207330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031317.P1702140962734207330

/-! ## A031317.P16093553508849076265

`eq[4, A031312(A065033(2*n))]`
-/

namespace A031317.P16093553508849076265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031317.P16093553508849076265

/-! ## A031317.P6748829476108496494

`eq[4, A031312(A233583(n+1))]`
-/

namespace A031317.P6748829476108496494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031317.P6748829476108496494

/-!
# A031318: Position of n-th 5 in A031312.

The programs for A031318, there is no canonical definition to state claims against.
-/

/-! ## A031318.P13069050057472162390

`eq[5, A031312(n+2)]+2`
-/

namespace A031318.P13069050057472162390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A031318.P13069050057472162390

/-! ## A031318.P12480534505073674962

`eq[5, A031312(A028310(n))]`
-/

namespace A031318.P12480534505073674962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031318.P12480534505073674962

/-! ## A031318.P1394235819011508557

`A020725(eq[5, A031312(n+1)])`
-/

namespace A031318.P1394235819011508557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031318.P1394235819011508557

/-! ## A031318.P15833921349608145355

`A153152(eq[5, A031312(n+1)])`
-/

namespace A031318.P15833921349608145355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031318.P15833921349608145355

/-! ## A031318.P8636996965305550008

`eq[5, A031312(A000007(n)+n)]`
-/

namespace A031318.P8636996965305550008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031318.P8636996965305550008

/-! ## A031318.P14068350339061371466

`eq[5, A031312(A065033(A004273(n)))]`
-/

namespace A031318.P14068350339061371466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031318.P14068350339061371466

/-! ## A031318.P11228794932082908512

`eq[5, A031312(A233583(n+1))]`
-/

namespace A031318.P11228794932082908512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031318.P11228794932082908512

/-!
# A031319: Position of n-th 6 in A031312.

The programs for A031319, there is no canonical definition to state claims against.
-/

/-! ## A031319.P1683540976408008920

`eq[6, A031312(n+1)]+1`
-/

namespace A031319.P1683540976408008920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031319.P1683540976408008920

/-! ## A031319.P16071551314071758810

`eq[6, A031312(A028310(n))]`
-/

namespace A031319.P16071551314071758810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031319.P16071551314071758810

/-! ## A031319.P11143383406037660735

`A020725(eq[6, A031312(n+1)])`
-/

namespace A031319.P11143383406037660735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031319.P11143383406037660735

/-! ## A031319.P6492349485060120559

`eq[6, A031312(A060000(n+1))]`
-/

namespace A031319.P6492349485060120559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031319.P6492349485060120559

/-! ## A031319.P11156987077253567086

`eq[6, A031312(A065033(2*n))]`
-/

namespace A031319.P11156987077253567086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031319.P11156987077253567086

/-! ## A031319.P17510562481307131827

`eq[6, A031312(A233583(n+1))]`
-/

namespace A031319.P17510562481307131827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031319.P17510562481307131827

/-!
# A031320: Position of n-th 7 in A031312.

The programs for A031320, there is no canonical definition to state claims against.
-/

/-! ## A031320.P11510492436761418897

`eq[7, A031312(n+1)]+1`
-/

namespace A031320.P11510492436761418897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031320.P11510492436761418897

/-! ## A031320.P6463038877785013337

`eq[7, A031312(A028310(n))]`
-/

namespace A031320.P6463038877785013337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031320.P6463038877785013337

/-! ## A031320.P10358176727212674300

`eq[7, A031312(gcd(n, A008486(n)))]`
-/

namespace A031320.P10358176727212674300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031320.P10358176727212674300

/-! ## A031320.P13476727498711724042

`eq[7, A031312(A000007(n)+n)]`
-/

namespace A031320.P13476727498711724042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031320.P13476727498711724042

/-! ## A031320.P7969661522212553739

`eq[7, A031312(A060000(n+1))]`
-/

namespace A031320.P7969661522212553739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031320.P7969661522212553739

/-! ## A031320.P18218144853788035143

`eq[7, A031312(A233583(n+1))]`
-/

namespace A031320.P18218144853788035143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031320.P18218144853788035143

/-!
# A031321: Position of n-th 8 in A031312.

The programs for A031321, there is no canonical definition to state claims against.
-/

/-! ## A031321.P13324237194982519157

`eq[8, A031312(n+1)]+1`
-/

namespace A031321.P13324237194982519157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031321.P13324237194982519157

/-! ## A031321.P8978137737875321999

`eq[8, A031312(A028310(n))]`
-/

namespace A031321.P8978137737875321999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031321.P8978137737875321999

/-! ## A031321.P1446248356145819843

`A020725(eq[8, A031312(n+1)])`
-/

namespace A031321.P1446248356145819843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031321.P1446248356145819843

/-! ## A031321.P7292109000424443113

`eq[8, A031312(A065033(2*n))]`
-/

namespace A031321.P7292109000424443113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031321.P7292109000424443113

/-! ## A031321.P12131285018125652838

`eq[8, A031312(A233583(n+1))]`
-/

namespace A031321.P12131285018125652838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031321.P12131285018125652838

/-!
# A031322: Position of n-th 9 in A031312.

The programs for A031322, there is no canonical definition to state claims against.
-/

/-! ## A031322.P6260228191957759748

`eq[9, A031312(n+1)]+1`
-/

namespace A031322.P6260228191957759748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031322.P6260228191957759748

/-! ## A031322.P16989152756472871384

`eq[9, A031312(A028310(n))]`
-/

namespace A031322.P16989152756472871384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031322.P16989152756472871384

/-! ## A031322.P8357983097066816334

`A020725(lt[8, A031312(n+1)])`
-/

namespace A031322.P8357983097066816334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A031322.P8357983097066816334

/-! ## A031322.P15628192036544846808

`A020725(eq[9, A031312(n+1)])`
-/

namespace A031322.P15628192036544846808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031322.P15628192036544846808

/-! ## A031322.P11823858501586286976

`A153152(eq[9, A031312(n+1)])`
-/

namespace A031322.P11823858501586286976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031322.P11823858501586286976

/-! ## A031322.P1115457791843731860

`eq[9, A031312(A000007(n)+n)]`
-/

namespace A031322.P1115457791843731860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031322.P1115457791843731860

/-! ## A031322.P14711346903668040589

`eq[9, A031312(gcd(n, A008486(n)))]`
-/

namespace A031322.P14711346903668040589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031322.P14711346903668040589

/-! ## A031322.P10634133752918196805

`eq[9, A031312(A233583(n+1))]`
-/

namespace A031322.P10634133752918196805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031322.P10634133752918196805

/-!
# A031323: Least k such that base 10 representation of n begins at s(k), where s=A031312.

The programs for A031323, there is no canonical definition to state claims against.
-/

/-! ## A031323.P2050854330239624392

`A088226(A017366(n)-A141310(n))`
-/

namespace A031323.P2050854330239624392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A017366 n - A141310 n).toNat

end

end A031323.P2050854330239624392

/-!
# A031324: Decimal digits of successive Fibonacci numbers.

The programs for A031324, there is no canonical definition to state claims against.
-/

/-! ## A031324.P2936525060805340920

`dr(A118053(∑[A072811(2*n+1)]))`
-/

namespace A031324.P2936525060805340920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A118053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A031324.P2936525060805340920

/-!
# A031325: Position of n-th 0 in A031324.

The programs for A031325, there is no canonical definition to state claims against.
-/

/-! ## A031325.P11725214508988358555

`eq[0, A031324(n+1)]`
-/

namespace A031325.P11725214508988358555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031325.P11725214508988358555

/-! ## A031325.P17698413685333511336

`eq[A000007(n), A031324(n)]-1`
-/

namespace A031325.P17698413685333511336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A031325.P17698413685333511336

/-! ## A031325.P10441909673723522447

`eq[A000038(n), A031324(n)]-1`
-/

namespace A031325.P10441909673723522447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A031325.P10441909673723522447

/-! ## A031325.P7255856581472012760

`eq[A031324(n), A161435(n)]-1`
-/

namespace A031325.P7255856581472012760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A031325.P7255856581472012760

/-! ## A031325.P2927889292053697659

`A023443(eq[A000007(n), A031324(n)])`
-/

namespace A031325.P2927889292053697659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A031325.P2927889292053697659

/-! ## A031325.P4065607357606120219

`A023443(eq[A000038(n), A031324(n)])`
-/

namespace A031325.P4065607357606120219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A031325.P4065607357606120219

/-! ## A031325.P416836972485647576

`A023443(eq[A031324(n), A161435(n)])`
-/

namespace A031325.P416836972485647576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A031325.P416836972485647576

/-! ## A031325.P15958362486413505456

`A233583(eq[A000007(n), A031324(n)])`
-/

namespace A031325.P15958362486413505456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A031325.P15958362486413505456

/-!
# A031326: Position of n-th 1 in A031324.

The programs for A031326, there is no canonical definition to state claims against.
-/

/-! ## A031326.P18416670606412359889

`eq[A031324(n+1), C(n, C(n, n²))]`
-/

namespace A031326.P18416670606412359889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A031326.P18416670606412359889

/-! ## A031326.P11310239183443548588

`eq[1, A031324(A199969(n+2))]`
-/

namespace A031326.P11310239183443548588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (A199969 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031326.P11310239183443548588

/-! ## A031326.P11978166131055787750

`eq[A031324(n+1), A054977(n)]`
-/

namespace A031326.P11978166131055787750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P11978166131055787750

/-! ## A031326.P10907052845017949868

`eq[1, A031324(A057427(n)+n)]`
-/

namespace A031326.P10907052845017949868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (A057427 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031326.P10907052845017949868

/-! ## A031326.P6880489362715957199

`eq[A031324(n+1), A158388(n)]`
-/

namespace A031326.P6880489362715957199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P6880489362715957199

/-! ## A031326.P3250421973647967934

`eq[abs(A062157(n)), A031324(n+1)]`
-/

namespace A031326.P3250421973647967934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062157 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P3250421973647967934

/-! ## A031326.P13321033375330311206

`eq[1, A031324(n+1)+A000007(n)]`
-/

namespace A031326.P13321033375330311206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1) + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031326.P13321033375330311206

/-! ## A031326.P16577290960578150414

`eq[1, A031324(n+1)+A000038(n)]`
-/

namespace A031326.P16577290960578150414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1) + A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031326.P16577290960578150414

/-! ## A031326.P7785046801192720893

`eq[A019427(2*n), A031324(n+1)]`
-/

namespace A031326.P7785046801192720893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P7785046801192720893

/-! ## A031326.P1569064413526995518

`eq[A031324(n+1), A075851(C(2, n+2))]`
-/

namespace A031326.P1569064413526995518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075851 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P1569064413526995518

/-! ## A031326.P6829739203357320384

`eq[A031324(n+1), A075852(C(2, n+2))]`
-/

namespace A031326.P6829739203357320384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075852 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P6829739203357320384

/-! ## A031326.P12822197861629673627

`eq[A031324(n+1), A168185(A019427(n))]`
-/

namespace A031326.P12822197861629673627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A019427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P12822197861629673627

/-! ## A031326.P9926848601713017051

`eq[A001222(A008578(n+1)), A031324(n+1)]`
-/

namespace A031326.P9926848601713017051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P9926848601713017051

/-! ## A031326.P17745468486315287980

`eq[A031324(n+1)+A028310(2*n), 2*n+1]`
-/

namespace A031326.P17745468486315287980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1) + A028310 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A031326.P17745468486315287980

/-! ## A031326.P14840499181561342798

`eq[A014963(4*n+2)², A031324(n+1)]`
-/

namespace A031326.P14840499181561342798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P14840499181561342798

/-! ## A031326.P2942025565453484017

`eq[A031324(n+1)+n, A233583(n+2)]`
-/

namespace A031326.P2942025565453484017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031326.P2942025565453484017

/-!
# A031327: Position of n-th 2 in A031324.

The programs for A031327, there is no canonical definition to state claims against.
-/

/-! ## A031327.P2554365311469207668

`eq[2, A031324(n+1)]`
-/

namespace A031327.P2554365311469207668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031327.P2554365311469207668

/-! ## A031327.P4778551638338561802

`eq[2, A031324(n)]-1`
-/

namespace A031327.P4778551638338561802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031327.P4778551638338561802

/-! ## A031327.P10399102216290816437

`A023443(eq[2, A031324(n)])`
-/

namespace A031327.P10399102216290816437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031327.P10399102216290816437

/-! ## A031327.P17233845514858154127

`A199969(eq[2, A031324(n)])`
-/

namespace A031327.P17233845514858154127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031327.P17233845514858154127

/-! ## A031327.P10585019727434762083

`A004275(eq[2, A031324(n)])/2`
-/

namespace A031327.P10585019727434762083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A031327.P10585019727434762083

/-! ## A031327.P7467149453930112807

`A233583(eq[2, A031324(n)])`
-/

namespace A031327.P7467149453930112807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031327.P7467149453930112807

/-!
# A031328: Position of n-th 3 in A031324.

The programs for A031328, there is no canonical definition to state claims against.
-/

/-! ## A031328.P7005036088115346695

`eq[3, A031324(n+1)]`
-/

namespace A031328.P7005036088115346695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031328.P7005036088115346695

/-! ## A031328.P11166350163154597354

`eq[3, A031324(n)]-1`
-/

namespace A031328.P11166350163154597354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031328.P11166350163154597354

/-! ## A031328.P12092036698254652228

`A023443(eq[3, A031324(n)])`
-/

namespace A031328.P12092036698254652228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031328.P12092036698254652228

/-! ## A031328.P13247626693618626982

`A199969(eq[3, A031324(n)])`
-/

namespace A031328.P13247626693618626982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031328.P13247626693618626982

/-! ## A031328.P547905648921761131

`A233583(eq[3, A031324(n)])`
-/

namespace A031328.P547905648921761131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031328.P547905648921761131

/-!
# A031329: Position of n-th 4 in A031324.

The programs for A031329, there is no canonical definition to state claims against.
-/

/-! ## A031329.P5400560684234158183

`eq[4, A031324(n+1)]`
-/

namespace A031329.P5400560684234158183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031329.P5400560684234158183

/-! ## A031329.P13580262127931464535

`eq[4, A031324(n)]-1`
-/

namespace A031329.P13580262127931464535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031329.P13580262127931464535

/-! ## A031329.P10376263165970997600

`A199969(eq[4, A031324(n)])`
-/

namespace A031329.P10376263165970997600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031329.P10376263165970997600

/-! ## A031329.P11115272545102447106

`eq[2, A031324(A153152(n))/2]`
-/

namespace A031329.P11115272545102447106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031324 (A153152 n).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031329.P11115272545102447106

/-! ## A031329.P9936326144450387192

`A023443(eq[4, A031324(n)])`
-/

namespace A031329.P9936326144450387192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031329.P9936326144450387192

/-! ## A031329.P8252908097697721639

`A233583(eq[4, A031324(n)])`
-/

namespace A031329.P8252908097697721639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031329.P8252908097697721639

/-!
# A031330: Position of n-th 5 in A031324.

The programs for A031330, there is no canonical definition to state claims against.
-/

/-! ## A031330.P4138412352159592272

`eq[5, A031324(n+1)]`
-/

namespace A031330.P4138412352159592272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031330.P4138412352159592272

/-! ## A031330.P589739640174120730

`eq[5, A031324(n)]-1`
-/

namespace A031330.P589739640174120730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031330.P589739640174120730

/-! ## A031330.P14913457612023640013

`A023443(eq[5, A031324(n)])`
-/

namespace A031330.P14913457612023640013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031330.P14913457612023640013

/-! ## A031330.P502466818855230293

`A004275(eq[5, A031324(n)])/2`
-/

namespace A031330.P502466818855230293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A031330.P502466818855230293

/-!
# A031331: Position of n-th 6 in A031324.

The programs for A031331, there is no canonical definition to state claims against.
-/

/-! ## A031331.P2522172282676383879

`eq[6, A031324(n+1)]`
-/

namespace A031331.P2522172282676383879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031331.P2522172282676383879

/-! ## A031331.P3504913872132113017

`eq[6, A031324(n)]-1`
-/

namespace A031331.P3504913872132113017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031331.P3504913872132113017

/-! ## A031331.P9455498467073115649

`A023443(eq[6, A031324(n)])`
-/

namespace A031331.P9455498467073115649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031331.P9455498467073115649

/-! ## A031331.P2833074719869758189

`A138153(eq[6, A031324(n)])`
-/

namespace A031331.P2833074719869758189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031331.P2833074719869758189

/-! ## A031331.P11929148111272815706

`A004275(eq[6, A031324(n)])/2`
-/

namespace A031331.P11929148111272815706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A031331.P11929148111272815706

/-! ## A031331.P5575390663149832362

`A233583(eq[6, A031324(n)])`
-/

namespace A031331.P5575390663149832362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031331.P5575390663149832362

/-!
# A031332: Position of n-th 7 in A031324.

The programs for A031332, there is no canonical definition to state claims against.
-/

/-! ## A031332.P15798048911055851380

`eq[7, A031324(n+1)]`
-/

namespace A031332.P15798048911055851380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031332.P15798048911055851380

/-! ## A031332.P8829203618759817511

`eq[7, A031324(n)]-1`
-/

namespace A031332.P8829203618759817511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031332.P8829203618759817511

/-! ## A031332.P13695926209014328387

`A023443(eq[7, A031324(n)])`
-/

namespace A031332.P13695926209014328387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031332.P13695926209014328387

/-! ## A031332.P7085610368045759280

`A199969(eq[7, A031324(n)])`
-/

namespace A031332.P7085610368045759280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031332.P7085610368045759280

/-! ## A031332.P13581438054334314356

`A233583(eq[7, A031324(n)])`
-/

namespace A031332.P13581438054334314356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031332.P13581438054334314356

/-!
# A031333: Position of n-th 8 in A031324.

The programs for A031333, there is no canonical definition to state claims against.
-/

/-! ## A031333.P1200916263718885905

`eq[8, A031324(n+1)]`
-/

namespace A031333.P1200916263718885905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031333.P1200916263718885905

/-! ## A031333.P16200056305215534849

`eq[8, A031324(n)]-1`
-/

namespace A031333.P16200056305215534849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031333.P16200056305215534849

/-! ## A031333.P779160741914501465

`A023443(eq[8, A031324(n)])`
-/

namespace A031333.P779160741914501465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031333.P779160741914501465

/-! ## A031333.P17335027605946725766

`A199969(eq[8, A031324(n)])`
-/

namespace A031333.P17335027605946725766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031333.P17335027605946725766

/-! ## A031333.P1250385478789221574

`A233583(eq[8, A031324(n)])`
-/

namespace A031333.P1250385478789221574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031333.P1250385478789221574

/-!
# A031334: Position of n-th 9 in A031324.

The programs for A031334, there is no canonical definition to state claims against.
-/

/-! ## A031334.P9291093905896931236

`eq[9, A031324(n+1)]`
-/

namespace A031334.P9291093905896931236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031334.P9291093905896931236

/-! ## A031334.P4463538751489382755

`eq[9, A031324(n)]-1`
-/

namespace A031334.P4463538751489382755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A031334.P4463538751489382755

/-! ## A031334.P10623513418987725149

`A023443(eq[9, A031324(n)])`
-/

namespace A031334.P10623513418987725149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031334.P10623513418987725149

/-! ## A031334.P13830188476012883934

`A199969(eq[9, A031324(n)])`
-/

namespace A031334.P13830188476012883934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031334.P13830188476012883934

/-! ## A031334.P13047241339968166216

`A233583(eq[9, A031324(n)])`
-/

namespace A031334.P13047241339968166216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031334.P13047241339968166216

/-!
# A031336: a(n) = prime(3*n).

The programs for A031336, the canonical program `A031336.P4665773882426171462` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031336 has offset 1).

The definition of A031336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1))` (program `A031336.P4665773882426171462`, by `A031336.P4665773882426171462.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031336.P4665773882426171462

`A000040(3*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031336

/-- `A000040(3*(n+1))` -/
def P4665773882426171462.Spec : Prop :=
  ∀ n, P4665773882426171462.a n = A031336 (n + 1)

theorem P4665773882426171462.correct : P4665773882426171462.Spec := by
  intro n
  simp only [A031336, Nat.add_sub_cancel]

end A031336

/-! ## A031336.P7910892448955216147

`A275988(n+1)+A000040(n+1)`
-/

namespace A031336.P7910892448955216147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275988 (n + 1) + A000040 (n + 1)

end

end A031336.P7910892448955216147

namespace A031336

/-- `A275988(n+1)+A000040(n+1)` -/
def P7910892448955216147.Spec : Prop :=
  ∀ n, P7910892448955216147.a n = A031336 (n + 1)

theorem P7910892448955216147.correct : P7910892448955216147.Spec := by
  intro n
  simp only [A031336, Nat.add_sub_cancel, A031336.P7910892448955216147.a, A031336.P4665773882426171462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A275988, A275988.P10341730878342561824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031336

/-! ## A031336.P8178478829883170736

`A255174(n+1)+A031215(n+1)`
-/

namespace A031336.P8178478829883170736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255174 (n + 1) + A031215 (n + 1)

end

end A031336.P8178478829883170736

namespace A031336

/-- `A255174(n+1)+A031215(n+1)` -/
def P8178478829883170736.Spec : Prop :=
  ∀ n, P8178478829883170736.a n = A031336 (n + 1)

theorem P8178478829883170736.correct : P8178478829883170736.Spec := by
  intro n
  simp only [A031336, Nat.add_sub_cancel, A031336.P8178478829883170736.a, A031336.P4665773882426171462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A255174, A255174.P18399948904925372527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031336

/-! ## A031336.P5378340188384793556

`∪[A031339(n+1), A031387(n+1)]`
-/

namespace A031336.P5378340188384793556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031336.P5378340188384793556

namespace A031336

/-- `∪[A031339(n+1), A031387(n+1)]` -/
def P5378340188384793556.Spec : Prop :=
  ∀ n, (P5378340188384793556.a n : ℤ) = A031336 (n + 1)

end A031336

/-! ## A031336.P12876482264773699948

`A275988(n+1)+∑[A054541(n+1)]`
-/

namespace A031336.P12876482264773699948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275988 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031336.P12876482264773699948

namespace A031336

/-- `A275988(n+1)+∑[A054541(n+1)]` -/
def P12876482264773699948.Spec : Prop :=
  ∀ n, P12876482264773699948.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P9783347489936180035

`A007504(3*(n+1))-A007504(3*n+2)`
-/

namespace A031336.P9783347489936180035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (3 * (n + 1)) - A007504 (3 * n + 2)

end

end A031336.P9783347489936180035

namespace A031336

/-- `A007504(3*(n+1))-A007504(3*n+2)` -/
def P9783347489936180035.Spec : Prop :=
  ∀ n, P9783347489936180035.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P7019259968124905372

`A055670(3*(n+1))-1`
-/

namespace A031336.P7019259968124905372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (3 * (n + 1)) - 1

end

end A031336.P7019259968124905372

namespace A031336

/-- `A055670(3*(n+1))-1` -/
def P7019259968124905372.Spec : Prop :=
  ∀ n, P7019259968124905372.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P9356925525958720186

`A001748(3*(n+1))/3`
-/

namespace A031336.P9356925525958720186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (3 * (n + 1)) : ℚ) / 3

end

end A031336.P9356925525958720186

namespace A031336

/-- `A001748(3*(n+1))/3` -/
def P9356925525958720186.Spec : Prop :=
  ∀ n, P9356925525958720186.a n = (A031336 (n + 1) : ℚ)

theorem P9356925525958720186.correct : P9356925525958720186.Spec := by
  intro n
  simp only [A031336, Nat.add_sub_cancel, A031336.P9356925525958720186.a, A031336.P4665773882426171462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031336

/-! ## A031336.P6717717729445428071

`A001749(3*(n+1))/4`
-/

namespace A031336.P6717717729445428071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (3 * (n + 1)) : ℚ) / 4

end

end A031336.P6717717729445428071

namespace A031336

/-- `A001749(3*(n+1))/4` -/
def P6717717729445428071.Spec : Prop :=
  ∀ n, P6717717729445428071.a n = (A031336 (n + 1) : ℚ)

theorem P6717717729445428071.correct : P6717717729445428071.Spec := by
  intro n
  simp only [A031336, Nat.add_sub_cancel, A031336.P6717717729445428071.a, A031336.P4665773882426171462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031336

/-! ## A031336.P13467797994473103912

`A156037(3*(n+1))+1`
-/

namespace A031336.P13467797994473103912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (3 * (n + 1)) + 1

end

end A031336.P13467797994473103912

namespace A031336

/-- `A156037(3*(n+1))+1` -/
def P13467797994473103912.Spec : Prop :=
  ∀ n, P13467797994473103912.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P7733609108494372486

`A215848(3*n+1)`
-/

namespace A031336.P7733609108494372486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (3 * n + 1)

end

end A031336.P7733609108494372486

namespace A031336

/-- `A215848(3*n+1)` -/
def P7733609108494372486.Spec : Prop :=
  ∀ n, P7733609108494372486.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P5118862663455733156

`A108719(A008486(n))`
-/

namespace A031336.P5118862663455733156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008486 n).toNat

end

end A031336.P5118862663455733156

namespace A031336

/-- `A108719(A008486(n))` -/
def P5118862663455733156.Spec : Prop :=
  ∀ n, P5118862663455733156.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P6673925351529935095

`A108719(A008574(n)-n)`
-/

namespace A031336.P6673925351529935095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008574 n - (n : ℤ)).toNat

end

end A031336.P6673925351529935095

namespace A031336

/-- `A108719(A008574(n)-n)` -/
def P6673925351529935095.Spec : Prop :=
  ∀ n, P6673925351529935095.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P17193813137971948750

`Δ[A073736(3*n)]`
-/

namespace A031336.P17193813137971948750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073736 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031336.P17193813137971948750

namespace A031336

/-- `Δ[A073736(3*n)]` -/
def P17193813137971948750.Spec : Prop :=
  ∀ n, P17193813137971948750.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P17057112074854275105

`A006005(3*(n+1))`
-/

namespace A031336.P17057112074854275105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (3 * (n + 1))

end

end A031336.P17057112074854275105

namespace A031336

/-- `A006005(3*(n+1))` -/
def P17057112074854275105.Spec : Prop :=
  ∀ n, P17057112074854275105.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P687131225457800745

`A171577(3*(n+1))`
-/

namespace A031336.P687131225457800745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (3 * (n + 1))

end

end A031336.P687131225457800745

namespace A031336

/-- `A171577(3*(n+1))` -/
def P687131225457800745.Spec : Prop :=
  ∀ n, P687131225457800745.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P2850704337250250914

`A045344(3*n+2)`
-/

namespace A031336.P2850704337250250914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (3 * n + 2)

end

end A031336.P2850704337250250914

namespace A031336

/-- `A045344(3*n+2)` -/
def P2850704337250250914.Spec : Prop :=
  ∀ n, P2850704337250250914.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P4684109491367963007

`A065091(3*n+2)`
-/

namespace A031336.P4684109491367963007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 2)

end

end A031336.P4684109491367963007

namespace A031336

/-- `A065091(3*n+2)` -/
def P4684109491367963007.Spec : Prop :=
  ∀ n, P4684109491367963007.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P4082642697669114890

`A140475(3*n+2)`
-/

namespace A031336.P4082642697669114890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (3 * n + 2)

end

end A031336.P4082642697669114890

namespace A031336

/-- `A140475(3*n+2)` -/
def P4082642697669114890.Spec : Prop :=
  ∀ n, P4082642697669114890.a n = A031336 (n + 1)

end A031336

/-! ## A031336.P1137434576266070746

`sqrt(A001248(3*(n+1)))`
-/

namespace A031336.P1137434576266070746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (3 * (n + 1)) : ℝ)

end

end A031336.P1137434576266070746

namespace A031336

/-- `sqrt(A001248(3*(n+1)))` -/
def P1137434576266070746.Spec : Prop :=
  ∀ n, P1137434576266070746.a n = (A031336 (n + 1) : ℝ)

end A031336

/-!
# A031337: a(n) = prime(4*n).

The programs for A031337, the canonical program `A031337.P9914527934000565798` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031337 has offset 1).

The definition of A031337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(4*(n+1))` (program `A031337.P9914527934000565798`, by `A031337.P9914527934000565798.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031337.P9914527934000565798

`A000040(4*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031337

/-- `A000040(4*(n+1))` -/
def P9914527934000565798.Spec : Prop :=
  ∀ n, P9914527934000565798.a n = A031337 (n + 1)

theorem P9914527934000565798.correct : P9914527934000565798.Spec := by
  intro n
  simp only [A031337, Nat.add_sub_cancel]

end A031337

/-! ## A031337.P16730522706018881580

`∪[A031341(n+1), A031395(n+1)]`
-/

namespace A031337.P16730522706018881580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031337.P16730522706018881580

namespace A031337

/-- `∪[A031341(n+1), A031395(n+1)]` -/
def P16730522706018881580.Spec : Prop :=
  ∀ n, (P16730522706018881580.a n : ℤ) = A031337 (n + 1)

end A031337

/-! ## A031337.P71462322612236772

`A060191(Δ[n²])`
-/

namespace A031337.P71462322612236772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031337.P71462322612236772

namespace A031337

/-- `A060191(Δ[n²])` -/
def P71462322612236772.Spec : Prop :=
  ∀ n, P71462322612236772.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P4949667839663439052

`A031215(2*(n+1))`
-/

namespace A031337.P4949667839663439052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (2 * (n + 1))

end

end A031337.P4949667839663439052

namespace A031337

/-- `A031215(2*(n+1))` -/
def P4949667839663439052.Spec : Prop :=
  ∀ n, P4949667839663439052.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P16494034922202914700

`record[A031215(A133265(n))]`
-/

namespace A031337.P16494034922202914700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031337.P16494034922202914700

namespace A031337

/-- `record[A031215(A133265(n))]` -/
def P16494034922202914700.Spec : Prop :=
  ∀ n, P16494034922202914700.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P903346337574050693

`∩[A031215(n+1), A060191(n)]`
-/

namespace A031337.P903346337574050693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031337.P903346337574050693

namespace A031337

/-- `∩[A031215(n+1), A060191(n)]` -/
def P903346337574050693.Spec : Prop :=
  ∀ n, (P903346337574050693.a n : ℤ) = A031337 (n + 1)

end A031337

/-! ## A031337.P12175772038173466115

`∩[A060191(n), A066207(n+1)]`
-/

namespace A031337.P12175772038173466115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031337.P12175772038173466115

namespace A031337

/-- `∩[A060191(n), A066207(n+1)]` -/
def P12175772038173466115.Spec : Prop :=
  ∀ n, (P12175772038173466115.a n : ℤ) = A031337 (n + 1)

end A031337

/-! ## A031337.P1048882699200965400

`A006005(4*(n+1))`
-/

namespace A031337.P1048882699200965400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (4 * (n + 1))

end

end A031337.P1048882699200965400

namespace A031337

/-- `A006005(4*(n+1))` -/
def P1048882699200965400.Spec : Prop :=
  ∀ n, P1048882699200965400.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P16283169732778667954

`A014193(4*(n+1))`
-/

namespace A031337.P16283169732778667954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014193 (4 * (n + 1))

end

end A031337.P16283169732778667954

namespace A031337

/-- `A014193(4*(n+1))` -/
def P16283169732778667954.Spec : Prop :=
  ∀ n, P16283169732778667954.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P15180657549727445833

`A062720(4*(n+1))`
-/

namespace A031337.P15180657549727445833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (4 * (n + 1))

end

end A031337.P15180657549727445833

namespace A031337

/-- `A062720(4*(n+1))` -/
def P15180657549727445833.Spec : Prop :=
  ∀ n, P15180657549727445833.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P10473821861558229874

`A068519(4*(n+1))`
-/

namespace A031337.P10473821861558229874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 (4 * (n + 1))

end

end A031337.P10473821861558229874

namespace A031337

/-- `A068519(4*(n+1))` -/
def P10473821861558229874.Spec : Prop :=
  ∀ n, P10473821861558229874.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P11374722282845299094

`A161847(4*(n+1))`
-/

namespace A031337.P11374722282845299094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (4 * (n + 1))

end

end A031337.P11374722282845299094

namespace A031337

/-- `A161847(4*(n+1))` -/
def P11374722282845299094.Spec : Prop :=
  ∀ n, P11374722282845299094.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P14849424389274914269

`A171577(4*(n+1))`
-/

namespace A031337.P14849424389274914269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (4 * (n + 1))

end

end A031337.P14849424389274914269

namespace A031337

/-- `A171577(4*(n+1))` -/
def P14849424389274914269.Spec : Prop :=
  ∀ n, P14849424389274914269.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P2853001751364781066

`A273960(4*(n+1))`
-/

namespace A031337.P2853001751364781066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (4 * (n + 1))

end

end A031337.P2853001751364781066

namespace A031337

/-- `A273960(4*(n+1))` -/
def P2853001751364781066.Spec : Prop :=
  ∀ n, P2853001751364781066.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P7015787605947800501

`A346180(4*(n+1))`
-/

namespace A031337.P7015787605947800501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (4 * (n + 1))

end

end A031337.P7015787605947800501

namespace A031337

/-- `A346180(4*(n+1))` -/
def P7015787605947800501.Spec : Prop :=
  ∀ n, P7015787605947800501.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P520327901778322038

`A350171(4*(n+1))`
-/

namespace A031337.P520327901778322038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (4 * (n + 1))

end

end A031337.P520327901778322038

namespace A031337

/-- `A350171(4*(n+1))` -/
def P520327901778322038.Spec : Prop :=
  ∀ n, P520327901778322038.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P10522700088802565545

`A350173(4*(n+1))`
-/

namespace A031337.P10522700088802565545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350173 (4 * (n + 1))

end

end A031337.P10522700088802565545

namespace A031337

/-- `A350173(4*(n+1))` -/
def P10522700088802565545.Spec : Prop :=
  ∀ n, P10522700088802565545.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P246263379718884663

`A383578(4*(n+1))`
-/

namespace A031337.P246263379718884663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (4 * (n + 1))

end

end A031337.P246263379718884663

namespace A031337

/-- `A383578(4*(n+1))` -/
def P246263379718884663.Spec : Prop :=
  ∀ n, P246263379718884663.a n = A031337 (n + 1)

end A031337

/-! ## A031337.P2921536775163078012

`A004139(4*n+2)`
-/

namespace A031337.P2921536775163078012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (4 * n + 2)

end

end A031337.P2921536775163078012

namespace A031337

/-- `A004139(4*n+2)` -/
def P2921536775163078012.Spec : Prop :=
  ∀ n, P2921536775163078012.a n = A031337 (n + 1)

end A031337

/-!
# A031338: a(n) = prime(5*n).

The programs for A031338, the canonical program `A031338.P10894287961732410553` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031338 has offset 1).

The definition of A031338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(5*(n+1))` (program `A031338.P10894287961732410553`, by `A031338.P10894287961732410553.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031338.P10894287961732410553

`A000040(5*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031338

/-- `A000040(5*(n+1))` -/
def P10894287961732410553.Spec : Prop :=
  ∀ n, P10894287961732410553.a n = A031338 (n + 1)

theorem P10894287961732410553.correct : P10894287961732410553.Spec := by
  intro n
  simp only [A031338, Nat.add_sub_cancel]

end A031338

/-! ## A031338.P16082668467273438020

`∪[A031343(n+1), A031910(n+1)]`
-/

namespace A031338.P16082668467273438020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031338.P16082668467273438020

namespace A031338

/-- `∪[A031343(n+1), A031910(n+1)]` -/
def P16082668467273438020.Spec : Prop :=
  ∀ n, (P16082668467273438020.a n : ℤ) = A031338 (n + 1)

end A031338

/-! ## A031338.P4369396185978533439

`A006005(5*(n+1))`
-/

namespace A031338.P4369396185978533439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (5 * (n + 1))

end

end A031338.P4369396185978533439

namespace A031338

/-- `A006005(5*(n+1))` -/
def P4369396185978533439.Spec : Prop :=
  ∀ n, P4369396185978533439.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P13689858749740578555

`A161847(5*(n+1))`
-/

namespace A031338.P13689858749740578555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (5 * (n + 1))

end

end A031338.P13689858749740578555

namespace A031338

/-- `A161847(5*(n+1))` -/
def P13689858749740578555.Spec : Prop :=
  ∀ n, P13689858749740578555.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P11687967002991361697

`A171577(5*(n+1))`
-/

namespace A031338.P11687967002991361697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (5 * (n + 1))

end

end A031338.P11687967002991361697

namespace A031338

/-- `A171577(5*(n+1))` -/
def P11687967002991361697.Spec : Prop :=
  ∀ n, P11687967002991361697.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P1366401188569051137

`A318871(5*(n+1))`
-/

namespace A031338.P1366401188569051137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (5 * (n + 1))

end

end A031338.P1366401188569051137

namespace A031338

/-- `A318871(5*(n+1))` -/
def P1366401188569051137.Spec : Prop :=
  ∀ n, P1366401188569051137.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P9283104965314389486

`A383578(5*(n+1))`
-/

namespace A031338.P9283104965314389486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (5 * (n + 1))

end

end A031338.P9283104965314389486

namespace A031338

/-- `A383578(5*(n+1))` -/
def P9283104965314389486.Spec : Prop :=
  ∀ n, P9283104965314389486.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P652711459161222868

`A004139(5*n+3)`
-/

namespace A031338.P652711459161222868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (5 * n + 3)

end

end A031338.P652711459161222868

namespace A031338

/-- `A004139(5*n+3)` -/
def P652711459161222868.Spec : Prop :=
  ∀ n, P652711459161222868.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P7431731199442111194

`A045319(5*n+4)`
-/

namespace A031338.P7431731199442111194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (5 * n + 4)

end

end A031338.P7431731199442111194

namespace A031338

/-- `A045319(5*n+4)` -/
def P7431731199442111194.Spec : Prop :=
  ∀ n, P7431731199442111194.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P6025996380697846738

`A065091(5*n+4)`
-/

namespace A031338.P6025996380697846738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (5 * n + 4)

end

end A031338.P6025996380697846738

namespace A031338

/-- `A065091(5*n+4)` -/
def P6025996380697846738.Spec : Prop :=
  ∀ n, P6025996380697846738.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P2040563678589144110

`sqrt(A001248(5*(n+1)))`
-/

namespace A031338.P2040563678589144110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (5 * (n + 1)) : ℝ)

end

end A031338.P2040563678589144110

namespace A031338

/-- `sqrt(A001248(5*(n+1)))` -/
def P2040563678589144110.Spec : Prop :=
  ∀ n, P2040563678589144110.a n = (A031338 (n + 1) : ℝ)

end A031338

/-! ## A031338.P3835802685803562051

`record[A000040(gcd(5, n)+n)]`
-/

namespace A031338.P3835802685803562051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd 5 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031338.P3835802685803562051

namespace A031338

/-- `record[A000040(gcd(5, n)+n)]` -/
def P3835802685803562051.Spec : Prop :=
  ∀ n, P3835802685803562051.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P14792201282100295519

`A006093(5*(n+1))+1`
-/

namespace A031338.P14792201282100295519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (5 * (n + 1)) + 1

end

end A031338.P14792201282100295519

namespace A031338

/-- `A006093(5*(n+1))+1` -/
def P14792201282100295519.Spec : Prop :=
  ∀ n, P14792201282100295519.a n = A031338 (n + 1)

theorem P14792201282100295519.correct : P14792201282100295519.Spec := by
  intro n
  simp only [A031338, Nat.add_sub_cancel, A031338.P14792201282100295519.a, A031338.P10894287961732410553.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031338

/-! ## A031338.P9533432136719860835

`A215848(4*n+n+3)`
-/

namespace A031338.P9533432136719860835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (4 * n + (n + 3))

end

end A031338.P9533432136719860835

namespace A031338

/-- `A215848(4*n+n+3)` -/
def P9533432136719860835.Spec : Prop :=
  ∀ n, P9533432136719860835.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P8246221074494371321

`A040976(2*n+3*n+5)+2`
-/

namespace A031338.P8246221074494371321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (2 * n + (3 * n + 5)) + 2

end

end A031338.P8246221074494371321

namespace A031338

/-- `A040976(2*n+3*n+5)+2` -/
def P8246221074494371321.Spec : Prop :=
  ∀ n, P8246221074494371321.a n = A031338 (n + 1)

theorem P8246221074494371321.correct : P8246221074494371321.Spec := by
  intro n
  simp only [A031338, Nat.add_sub_cancel, A031338.P8246221074494371321.a, A031338.P10894287961732410553.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031338

/-! ## A031338.P6621014482454086550

`or(1, A000040(5*(2*n-(n-1))))`
-/

namespace A031338.P6621014482454086550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (5 * ((2 * n : ℤ) - ((n : ℤ) - 1))).toNat)

end

end A031338.P6621014482454086550

namespace A031338

/-- `or(1, A000040(5*(2*n-(n-1))))` -/
def P6621014482454086550.Spec : Prop :=
  ∀ n, P6621014482454086550.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P12286484649529896800

`A140461(A016873(n))`
-/

namespace A031338.P12286484649529896800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (A016873 n).toNat

end

end A031338.P12286484649529896800

namespace A031338

/-- `A140461(A016873(n))` -/
def P12286484649529896800.Spec : Prop :=
  ∀ n, P12286484649529896800.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P9817028309538604786

`record[A000040(A266084(n))]`
-/

namespace A031338.P9817028309538604786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A266084 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031338.P9817028309538604786

namespace A031338

/-- `record[A000040(A266084(n))]` -/
def P9817028309538604786.Spec : Prop :=
  ∀ n, P9817028309538604786.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P7234517772816071727

`record[A000040(A116547(n+2))]`
-/

namespace A031338.P7234517772816071727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A116547 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031338.P7234517772816071727

namespace A031338

/-- `record[A000040(A116547(n+2))]` -/
def P7234517772816071727.Spec : Prop :=
  ∀ n, P7234517772816071727.a n = A031338 (n + 1)

end A031338

/-! ## A031338.P13427556630725237194

`record[A000040(A195140(n+2))]`
-/

namespace A031338.P13427556630725237194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A195140 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031338.P13427556630725237194

namespace A031338

/-- `record[A000040(A195140(n+2))]` -/
def P13427556630725237194.Spec : Prop :=
  ∀ n, P13427556630725237194.a n = A031338 (n + 1)

end A031338

/-!
# A031339: a(n) = prime(6*n).

The programs for A031339, the canonical program `A031339.P4660573578538509941` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031339 has offset 1).

The definition of A031339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(6*(n+1))` (program `A031339.P4660573578538509941`, by `A031339.P4660573578538509941.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031339.P4660573578538509941

`A000040(6*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031339

/-- `A000040(6*(n+1))` -/
def P4660573578538509941.Spec : Prop :=
  ∀ n, P4660573578538509941.a n = A031339 (n + 1)

theorem P4660573578538509941.correct : P4660573578538509941.Spec := by
  intro n
  simp only [A031339, Nat.add_sub_cancel]

end A031339

/-! ## A031339.P13047857505135678834

`A031336(2*(n+1))`
-/

namespace A031339.P13047857505135678834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (2 * (n + 1))

end

end A031339.P13047857505135678834

namespace A031339

/-- `A031336(2*(n+1))` -/
def P13047857505135678834.Spec : Prop :=
  ∀ n, P13047857505135678834.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P14015466531329163696

`A031215(3*(n+1))`
-/

namespace A031339.P14015466531329163696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (3 * (n + 1))

end

end A031339.P14015466531329163696

namespace A031339

/-- `A031215(3*(n+1))` -/
def P14015466531329163696.Spec : Prop :=
  ∀ n, P14015466531329163696.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P2070506453375397427

`A332806(A080148(2*n+n+3))`
-/

namespace A031339.P2070506453375397427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A080148 (2 * n + (n + 3))).toNat

end

end A031339.P2070506453375397427

namespace A031339

/-- `A332806(A080148(2*n+n+3))` -/
def P2070506453375397427.Spec : Prop :=
  ∀ n, P2070506453375397427.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P6954936620498259912

`∩[A031215(n+1), A031336(n+1)]`
-/

namespace A031339.P6954936620498259912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031339.P6954936620498259912

namespace A031339

/-- `∩[A031215(n+1), A031336(n+1)]` -/
def P6954936620498259912.Spec : Prop :=
  ∀ n, (P6954936620498259912.a n : ℤ) = A031339 (n + 1)

end A031339

/-! ## A031339.P2222540749664280018

`∩[A031336(n+1), A066207(n+1)]`
-/

namespace A031339.P2222540749664280018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031339.P2222540749664280018

namespace A031339

/-- `∩[A031336(n+1), A066207(n+1)]` -/
def P2222540749664280018.Spec : Prop :=
  ∀ n, (P2222540749664280018.a n : ℤ) = A031339 (n + 1)

end A031339

/-! ## A031339.P5974585945390604859

`A156037(A016969(n)+1)+1`
-/

namespace A031339.P5974585945390604859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A016969 n + 1).toNat + 1

end

end A031339.P5974585945390604859

namespace A031339

/-- `A156037(A016969(n)+1)+1` -/
def P5974585945390604859.Spec : Prop :=
  ∀ n, P5974585945390604859.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P393027912455560060

`A108719(6*n+3)`
-/

namespace A031339.P393027912455560060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (6 * n + 3)

end

end A031339.P393027912455560060

namespace A031339

/-- `A108719(6*n+3)` -/
def P393027912455560060.Spec : Prop :=
  ∀ n, P393027912455560060.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P17219588169034489856

`A140461(6*n+3)`
-/

namespace A031339.P17219588169034489856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (6 * n + 3)

end

end A031339.P17219588169034489856

namespace A031339

/-- `A140461(6*n+3)` -/
def P17219588169034489856.Spec : Prop :=
  ∀ n, P17219588169034489856.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P17551353228813074565

`A004139(6*n+4)`
-/

namespace A031339.P17551353228813074565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (6 * n + 4)

end

end A031339.P17551353228813074565

namespace A031339

/-- `A004139(6*n+4)` -/
def P17551353228813074565.Spec : Prop :=
  ∀ n, P17551353228813074565.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P421625819568650536

`A215848(6*n+4)`
-/

namespace A031339.P421625819568650536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (6 * n + 4)

end

end A031339.P421625819568650536

namespace A031339

/-- `A215848(6*n+4)` -/
def P421625819568650536.Spec : Prop :=
  ∀ n, P421625819568650536.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P3485653293189967202

`A071621(A008458(n))`
-/

namespace A031339.P3485653293189967202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A008458 n).toNat

end

end A031339.P3485653293189967202

namespace A031339

/-- `A071621(A008458(n))` -/
def P3485653293189967202.Spec : Prop :=
  ∀ n, P3485653293189967202.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P7418875251979714484

`A071621(A008486(2*n))`
-/

namespace A031339.P7418875251979714484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A008486 (2 * n)).toNat

end

end A031339.P7418875251979714484

namespace A031339

/-- `A071621(A008486(2*n))` -/
def P7418875251979714484.Spec : Prop :=
  ∀ n, P7418875251979714484.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P16080490353961044465

`A006005(6*(n+1))`
-/

namespace A031339.P16080490353961044465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (6 * (n + 1))

end

end A031339.P16080490353961044465

namespace A031339

/-- `A006005(6*(n+1))` -/
def P16080490353961044465.Spec : Prop :=
  ∀ n, P16080490353961044465.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P4014618484960399681

`A062720(6*(n+1))`
-/

namespace A031339.P4014618484960399681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (6 * (n + 1))

end

end A031339.P4014618484960399681

namespace A031339

/-- `A062720(6*(n+1))` -/
def P4014618484960399681.Spec : Prop :=
  ∀ n, P4014618484960399681.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P15833458368423115646

`A068519(6*(n+1))`
-/

namespace A031339.P15833458368423115646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 (6 * (n + 1))

end

end A031339.P15833458368423115646

namespace A031339

/-- `A068519(6*(n+1))` -/
def P15833458368423115646.Spec : Prop :=
  ∀ n, P15833458368423115646.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P5177802499742984885

`A161847(6*(n+1))`
-/

namespace A031339.P5177802499742984885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (6 * (n + 1))

end

end A031339.P5177802499742984885

namespace A031339

/-- `A161847(6*(n+1))` -/
def P5177802499742984885.Spec : Prop :=
  ∀ n, P5177802499742984885.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P10367117057649554036

`A171577(6*(n+1))`
-/

namespace A031339.P10367117057649554036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (6 * (n + 1))

end

end A031339.P10367117057649554036

namespace A031339

/-- `A171577(6*(n+1))` -/
def P10367117057649554036.Spec : Prop :=
  ∀ n, P10367117057649554036.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P18205966117107438950

`A273960(6*(n+1))`
-/

namespace A031339.P18205966117107438950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (6 * (n + 1))

end

end A031339.P18205966117107438950

namespace A031339

/-- `A273960(6*(n+1))` -/
def P18205966117107438950.Spec : Prop :=
  ∀ n, P18205966117107438950.a n = A031339 (n + 1)

end A031339

/-! ## A031339.P9065903042590632055

`A346180(6*(n+1))`
-/

namespace A031339.P9065903042590632055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (6 * (n + 1))

end

end A031339.P9065903042590632055

namespace A031339

/-- `A346180(6*(n+1))` -/
def P9065903042590632055.Spec : Prop :=
  ∀ n, P9065903042590632055.a n = A031339 (n + 1)

end A031339

/-!
# A031340: a(n) = prime(7*n).

The programs for A031340, the canonical program `A031340.P5032686630011137364` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031340 has offset 1).

The definition of A031340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(7*(n+1))` (program `A031340.P5032686630011137364`, by `A031340.P5032686630011137364.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031340.P5032686630011137364

`A000040(7*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031340

/-- `A000040(7*(n+1))` -/
def P5032686630011137364.Spec : Prop :=
  ∀ n, P5032686630011137364.a n = A031340 (n + 1)

theorem P5032686630011137364.correct : P5032686630011137364.Spec := by
  intro n
  simp only [A031340, Nat.add_sub_cancel]

end A031340

/-! ## A031340.P3091218829468855576

`A157996(7*n+2)`
-/

namespace A031340.P3091218829468855576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (7 * n + 2)

end

end A031340.P3091218829468855576

namespace A031340

/-- `A157996(7*n+2)` -/
def P3091218829468855576.Spec : Prop :=
  ∀ n, P3091218829468855576.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P345454035435751878

`A108719(A017029(n))`
-/

namespace A031340.P345454035435751878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017029 n).toNat

end

end A031340.P345454035435751878

namespace A031340

/-- `A108719(A017029(n))` -/
def P345454035435751878.Spec : Prop :=
  ∀ n, P345454035435751878.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P15828581764849286521

`A108719(A017017(n)+1)`
-/

namespace A031340.P15828581764849286521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017017 n + 1).toNat

end

end A031340.P15828581764849286521

namespace A031340

/-- `A108719(A017017(n)+1)` -/
def P15828581764849286521.Spec : Prop :=
  ∀ n, P15828581764849286521.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P10992865482351838414

`A006005(7*(n+1))`
-/

namespace A031340.P10992865482351838414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (7 * (n + 1))

end

end A031340.P10992865482351838414

namespace A031340

/-- `A006005(7*(n+1))` -/
def P10992865482351838414.Spec : Prop :=
  ∀ n, P10992865482351838414.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P5422709032458816164

`A083249(7*(n+1))`
-/

namespace A031340.P5422709032458816164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (7 * (n + 1))

end

end A031340.P5422709032458816164

namespace A031340

/-- `A083249(7*(n+1))` -/
def P5422709032458816164.Spec : Prop :=
  ∀ n, P5422709032458816164.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P3793900831159544516

`A161847(7*(n+1))`
-/

namespace A031340.P3793900831159544516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (7 * (n + 1))

end

end A031340.P3793900831159544516

namespace A031340

/-- `A161847(7*(n+1))` -/
def P3793900831159544516.Spec : Prop :=
  ∀ n, P3793900831159544516.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P3072519048130019519

`A171577(7*(n+1))`
-/

namespace A031340.P3072519048130019519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (7 * (n + 1))

end

end A031340.P3072519048130019519

namespace A031340

/-- `A171577(7*(n+1))` -/
def P3072519048130019519.Spec : Prop :=
  ∀ n, P3072519048130019519.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P1897085348505098631

`A318871(7*(n+1))`
-/

namespace A031340.P1897085348505098631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (7 * (n + 1))

end

end A031340.P1897085348505098631

namespace A031340

/-- `A318871(7*(n+1))` -/
def P1897085348505098631.Spec : Prop :=
  ∀ n, P1897085348505098631.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P12110383218125782465

`A383578(7*(n+1))`
-/

namespace A031340.P12110383218125782465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (7 * (n + 1))

end

end A031340.P12110383218125782465

namespace A031340

/-- `A383578(7*(n+1))` -/
def P12110383218125782465.Spec : Prop :=
  ∀ n, P12110383218125782465.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P7731550661024579388

`A004139(7*n+5)`
-/

namespace A031340.P7731550661024579388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (7 * n + 5)

end

end A031340.P7731550661024579388

namespace A031340

/-- `A004139(7*n+5)` -/
def P7731550661024579388.Spec : Prop :=
  ∀ n, P7731550661024579388.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P5792211202178336205

`A215848(7*n+5)`
-/

namespace A031340.P5792211202178336205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (7 * n + 5)

end

end A031340.P5792211202178336205

namespace A031340

/-- `A215848(7*n+5)` -/
def P5792211202178336205.Spec : Prop :=
  ∀ n, P5792211202178336205.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P12953887637374741229

`A045344(7*n+6)`
-/

namespace A031340.P12953887637374741229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (7 * n + 6)

end

end A031340.P12953887637374741229

namespace A031340

/-- `A045344(7*n+6)` -/
def P12953887637374741229.Spec : Prop :=
  ∀ n, P12953887637374741229.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P4588800272671918784

`A065091(7*n+6)`
-/

namespace A031340.P4588800272671918784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (7 * n + 6)

end

end A031340.P4588800272671918784

namespace A031340

/-- `A065091(7*n+6)` -/
def P4588800272671918784.Spec : Prop :=
  ∀ n, P4588800272671918784.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P7767974646567267952

`A008578(7*n+8)`
-/

namespace A031340.P7767974646567267952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (7 * n + 8)

end

end A031340.P7767974646567267952

namespace A031340

/-- `A008578(7*n+8)` -/
def P7767974646567267952.Spec : Prop :=
  ∀ n, P7767974646567267952.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P12261799663310568128

`A046022(7*n+9)`
-/

namespace A031340.P12261799663310568128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (7 * n + 9)

end

end A031340.P12261799663310568128

namespace A031340

/-- `A046022(7*n+9)` -/
def P12261799663310568128.Spec : Prop :=
  ∀ n, P12261799663310568128.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P17279194585051591323

`A158611(7*n+9)`
-/

namespace A031340.P17279194585051591323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (7 * n + 9)

end

end A031340.P17279194585051591323

namespace A031340

/-- `A158611(7*n+9)` -/
def P17279194585051591323.Spec : Prop :=
  ∀ n, P17279194585051591323.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P3634960843056049417

`record[A000040(gcd(7, n)+n)]`
-/

namespace A031340.P3634960843056049417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd 7 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031340.P3634960843056049417

namespace A031340

/-- `record[A000040(gcd(7, n)+n)]` -/
def P3634960843056049417.Spec : Prop :=
  ∀ n, P3634960843056049417.a n = A031340 (n + 1)

end A031340

/-! ## A031340.P2533571571192528554

`A040976(6*(n+1)+n+1)+2`
-/

namespace A031340.P2533571571192528554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (6 * (n + 1) + (n + 1)) + 2

end

end A031340.P2533571571192528554

namespace A031340

/-- `A040976(6*(n+1)+n+1)+2` -/
def P2533571571192528554.Spec : Prop :=
  ∀ n, P2533571571192528554.a n = A031340 (n + 1)

theorem P2533571571192528554.correct : P2533571571192528554.Spec := by
  intro n
  simp only [A031340, Nat.add_sub_cancel, A031340.P2533571571192528554.a, A031340.P5032686630011137364.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031340

/-! ## A031340.P3724987986999402909

`A045319(A017053(n))`
-/

namespace A031340.P3724987986999402909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017053 n).toNat

end

end A031340.P3724987986999402909

namespace A031340

/-- `A045319(A017053(n))` -/
def P3724987986999402909.Spec : Prop :=
  ∀ n, P3724987986999402909.a n = A031340 (n + 1)

end A031340

/-!
# A031341: a(n) = prime(8*n).

The programs for A031341, the canonical program `A031341.P557508293890200669` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031341 has offset 1).

The definition of A031341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(8*(n+1))` (program `A031341.P557508293890200669`, by `A031341.P557508293890200669.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031341.P557508293890200669

`A000040(8*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031341

/-- `A000040(8*(n+1))` -/
def P557508293890200669.Spec : Prop :=
  ∀ n, P557508293890200669.a n = A031341 (n + 1)

theorem P557508293890200669.correct : P557508293890200669.Spec := by
  intro n
  simp only [A031341, Nat.add_sub_cancel]

end A031341

/-! ## A031341.P1171299423854747081

`A031337(2*(n+1))`
-/

namespace A031341.P1171299423854747081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (2 * (n + 1))

end

end A031341.P1171299423854747081

namespace A031341

/-- `A031337(2*(n+1))` -/
def P1171299423854747081.Spec : Prop :=
  ∀ n, P1171299423854747081.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P8899174603750363992

`A373789(Δ[(2*(n+1))²])`
-/

namespace A031341.P8899174603750363992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031341.P8899174603750363992

namespace A031341

/-- `A373789(Δ[(2*(n+1))²])` -/
def P8899174603750363992.Spec : Prop :=
  ∀ n, P8899174603750363992.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P9658376252496317365

`A031215(4*(n+1))`
-/

namespace A031341.P9658376252496317365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (4 * (n + 1))

end

end A031341.P9658376252496317365

namespace A031341

/-- `A031215(4*(n+1))` -/
def P9658376252496317365.Spec : Prop :=
  ∀ n, P9658376252496317365.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P10571990556434454536

`A060191(3*(n+1)+n)`
-/

namespace A031341.P10571990556434454536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (3 * (n + 1) + n)

end

end A031341.P10571990556434454536

namespace A031341

/-- `A060191(3*(n+1)+n)` -/
def P10571990556434454536.Spec : Prop :=
  ∀ n, P10571990556434454536.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P16635005683686631209

`record[A031215(A059029(n+1)+1)]`
-/

namespace A031341.P16635005683686631209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A059029 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031341.P16635005683686631209

namespace A031341

/-- `record[A031215(A059029(n+1)+1)]` -/
def P16635005683686631209.Spec : Prop :=
  ∀ n, P16635005683686631209.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P11256280868827464957

`A065091(record[xor(7, n)])`
-/

namespace A031341.P11256280868827464957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A031341.P11256280868827464957

namespace A031341

/-- `A065091(record[xor(7, n)])` -/
def P11256280868827464957.Spec : Prop :=
  ∀ n, P11256280868827464957.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P14717902191547647702

`A006005(8*(n+1))`
-/

namespace A031341.P14717902191547647702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (8 * (n + 1))

end

end A031341.P14717902191547647702

namespace A031341

/-- `A006005(8*(n+1))` -/
def P14717902191547647702.Spec : Prop :=
  ∀ n, P14717902191547647702.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P6055704045872873703

`A014193(8*(n+1))`
-/

namespace A031341.P6055704045872873703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014193 (8 * (n + 1))

end

end A031341.P6055704045872873703

namespace A031341

/-- `A014193(8*(n+1))` -/
def P6055704045872873703.Spec : Prop :=
  ∀ n, P6055704045872873703.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P771697694417502124

`A062720(8*(n+1))`
-/

namespace A031341.P771697694417502124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (8 * (n + 1))

end

end A031341.P771697694417502124

namespace A031341

/-- `A062720(8*(n+1))` -/
def P771697694417502124.Spec : Prop :=
  ∀ n, P771697694417502124.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P9790218623993796246

`A068519(8*(n+1))`
-/

namespace A031341.P9790218623993796246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 (8 * (n + 1))

end

end A031341.P9790218623993796246

namespace A031341

/-- `A068519(8*(n+1))` -/
def P9790218623993796246.Spec : Prop :=
  ∀ n, P9790218623993796246.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P9225166023850481526

`A083249(8*(n+1))`
-/

namespace A031341.P9225166023850481526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (8 * (n + 1))

end

end A031341.P9225166023850481526

namespace A031341

/-- `A083249(8*(n+1))` -/
def P9225166023850481526.Spec : Prop :=
  ∀ n, P9225166023850481526.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P6722626467464167151

`A161847(8*(n+1))`
-/

namespace A031341.P6722626467464167151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (8 * (n + 1))

end

end A031341.P6722626467464167151

namespace A031341

/-- `A161847(8*(n+1))` -/
def P6722626467464167151.Spec : Prop :=
  ∀ n, P6722626467464167151.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P4008634414350386949

`A171577(8*(n+1))`
-/

namespace A031341.P4008634414350386949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (8 * (n + 1))

end

end A031341.P4008634414350386949

namespace A031341

/-- `A171577(8*(n+1))` -/
def P4008634414350386949.Spec : Prop :=
  ∀ n, P4008634414350386949.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P3318760706075059466

`A273960(8*(n+1))`
-/

namespace A031341.P3318760706075059466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (8 * (n + 1))

end

end A031341.P3318760706075059466

namespace A031341

/-- `A273960(8*(n+1))` -/
def P3318760706075059466.Spec : Prop :=
  ∀ n, P3318760706075059466.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P6050303446751688777

`A346180(8*(n+1))`
-/

namespace A031341.P6050303446751688777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (8 * (n + 1))

end

end A031341.P6050303446751688777

namespace A031341

/-- `A346180(8*(n+1))` -/
def P6050303446751688777.Spec : Prop :=
  ∀ n, P6050303446751688777.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P9298479319577513299

`A350171(8*(n+1))`
-/

namespace A031341.P9298479319577513299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (8 * (n + 1))

end

end A031341.P9298479319577513299

namespace A031341

/-- `A350171(8*(n+1))` -/
def P9298479319577513299.Spec : Prop :=
  ∀ n, P9298479319577513299.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P8062158752996726084

`A350173(8*(n+1))`
-/

namespace A031341.P8062158752996726084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350173 (8 * (n + 1))

end

end A031341.P8062158752996726084

namespace A031341

/-- `A350173(8*(n+1))` -/
def P8062158752996726084.Spec : Prop :=
  ∀ n, P8062158752996726084.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P2536927669013463060

`A383578(8*(n+1))`
-/

namespace A031341.P2536927669013463060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (8 * (n + 1))

end

end A031341.P2536927669013463060

namespace A031341

/-- `A383578(8*(n+1))` -/
def P2536927669013463060.Spec : Prop :=
  ∀ n, P2536927669013463060.a n = A031341 (n + 1)

end A031341

/-! ## A031341.P13289551272234900413

`A004139(8*n+6)`
-/

namespace A031341.P13289551272234900413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (8 * n + 6)

end

end A031341.P13289551272234900413

namespace A031341

/-- `A004139(8*n+6)` -/
def P13289551272234900413.Spec : Prop :=
  ∀ n, P13289551272234900413.a n = A031341 (n + 1)

end A031341

/-!
# A031342: a(n) = prime(9*n).

The programs for A031342, the canonical program `A031342.P7493403164457387370` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031342 has offset 1).

The definition of A031342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(9*(n+1))` (program `A031342.P7493403164457387370`, by `A031342.P7493403164457387370.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031342.P7493403164457387370

`A000040(9*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031342

/-- `A000040(9*(n+1))` -/
def P7493403164457387370.Spec : Prop :=
  ∀ n, P7493403164457387370.a n = A031342 (n + 1)

theorem P7493403164457387370.correct : P7493403164457387370.Spec := by
  intro n
  simp only [A031342, Nat.add_sub_cancel]

end A031342

/-! ## A031342.P3768870702408430836

`A031336(3*(n+1))`
-/

namespace A031342.P3768870702408430836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (3 * (n + 1))

end

end A031342.P3768870702408430836

namespace A031342

/-- `A031336(3*(n+1))` -/
def P3768870702408430836.Spec : Prop :=
  ∀ n, P3768870702408430836.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P16104605379631234143

`p?[dr(n+3)*p?[2*n+1]]`
-/

namespace A031342.P16104605379631234143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 3 : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031342.P16104605379631234143

namespace A031342

/-- `p?[dr(n+3)*p?[2*n+1]]` -/
def P16104605379631234143.Spec : Prop :=
  ∀ n, (P16104605379631234143.a n : ℤ) = A031342 (n + 1)

end A031342

/-! ## A031342.P5899299041231234791

`A006005(9*(n+1))`
-/

namespace A031342.P5899299041231234791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (9 * (n + 1))

end

end A031342.P5899299041231234791

namespace A031342

/-- `A006005(9*(n+1))` -/
def P5899299041231234791.Spec : Prop :=
  ∀ n, P5899299041231234791.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P14941862346282860079

`A014193(9*(n+1))`
-/

namespace A031342.P14941862346282860079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014193 (9 * (n + 1))

end

end A031342.P14941862346282860079

namespace A031342

/-- `A014193(9*(n+1))` -/
def P14941862346282860079.Spec : Prop :=
  ∀ n, P14941862346282860079.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P17385378509212571246

`A068519(9*(n+1))`
-/

namespace A031342.P17385378509212571246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 (9 * (n + 1))

end

end A031342.P17385378509212571246

namespace A031342

/-- `A068519(9*(n+1))` -/
def P17385378509212571246.Spec : Prop :=
  ∀ n, P17385378509212571246.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P9573492204770380163

`A083249(9*(n+1))`
-/

namespace A031342.P9573492204770380163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (9 * (n + 1))

end

end A031342.P9573492204770380163

namespace A031342

/-- `A083249(9*(n+1))` -/
def P9573492204770380163.Spec : Prop :=
  ∀ n, P9573492204770380163.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P9913598480494368882

`A161847(9*(n+1))`
-/

namespace A031342.P9913598480494368882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (9 * (n + 1))

end

end A031342.P9913598480494368882

namespace A031342

/-- `A161847(9*(n+1))` -/
def P9913598480494368882.Spec : Prop :=
  ∀ n, P9913598480494368882.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P9742124856621823154

`A171577(9*(n+1))`
-/

namespace A031342.P9742124856621823154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (9 * (n + 1))

end

end A031342.P9742124856621823154

namespace A031342

/-- `A171577(9*(n+1))` -/
def P9742124856621823154.Spec : Prop :=
  ∀ n, P9742124856621823154.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P16709172763064313812

`A318871(9*(n+1))`
-/

namespace A031342.P16709172763064313812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (9 * (n + 1))

end

end A031342.P16709172763064313812

namespace A031342

/-- `A318871(9*(n+1))` -/
def P16709172763064313812.Spec : Prop :=
  ∀ n, P16709172763064313812.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P4866734736383000720

`A346180(9*(n+1))`
-/

namespace A031342.P4866734736383000720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (9 * (n + 1))

end

end A031342.P4866734736383000720

namespace A031342

/-- `A346180(9*(n+1))` -/
def P4866734736383000720.Spec : Prop :=
  ∀ n, P4866734736383000720.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P5074312882693840195

`A383578(9*(n+1))`
-/

namespace A031342.P5074312882693840195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (9 * (n + 1))

end

end A031342.P5074312882693840195

namespace A031342

/-- `A383578(9*(n+1))` -/
def P5074312882693840195.Spec : Prop :=
  ∀ n, P5074312882693840195.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P9563664076359274975

`A004139(9*n+7)`
-/

namespace A031342.P9563664076359274975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (9 * n + 7)

end

end A031342.P9563664076359274975

namespace A031342

/-- `A004139(9*n+7)` -/
def P9563664076359274975.Spec : Prop :=
  ∀ n, P9563664076359274975.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P1160036449452534019

`A065091(9*n+8)`
-/

namespace A031342.P1160036449452534019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (9 * n + 8)

end

end A031342.P1160036449452534019

namespace A031342

/-- `A065091(9*n+8)` -/
def P1160036449452534019.Spec : Prop :=
  ∀ n, P1160036449452534019.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P14105328448839395472

`A008578(9*n+10)`
-/

namespace A031342.P14105328448839395472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 10)

end

end A031342.P14105328448839395472

namespace A031342

/-- `A008578(9*n+10)` -/
def P14105328448839395472.Spec : Prop :=
  ∀ n, P14105328448839395472.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P12303797781320826804

`record[A000040(gcd(9, n)+n)]`
-/

namespace A031342.P12303797781320826804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd 9 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031342.P12303797781320826804

namespace A031342

/-- `record[A000040(gcd(9, n)+n)]` -/
def P12303797781320826804.Spec : Prop :=
  ∀ n, P12303797781320826804.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P16741138610665138827

`A040976(9*(n+1))+2`
-/

namespace A031342.P16741138610665138827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (9 * (n + 1)) + 2

end

end A031342.P16741138610665138827

namespace A031342

/-- `A040976(9*(n+1))+2` -/
def P16741138610665138827.Spec : Prop :=
  ∀ n, P16741138610665138827.a n = A031342 (n + 1)

theorem P16741138610665138827.correct : P16741138610665138827.Spec := by
  intro n
  simp only [A031342, Nat.add_sub_cancel, A031342.P16741138610665138827.a, A031342.P7493403164457387370.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031342

/-! ## A031342.P6717082958876275725

`A045319(A017257(n))`
-/

namespace A031342.P6717082958876275725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017257 n).toNat

end

end A031342.P6717082958876275725

namespace A031342

/-- `A045319(A017257(n))` -/
def P6717082958876275725.Spec : Prop :=
  ∀ n, P6717082958876275725.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P12769840838593131204

`A071621(A017197(n))`
-/

namespace A031342.P12769840838593131204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017197 n).toNat

end

end A031342.P12769840838593131204

namespace A031342

/-- `A071621(A017197(n))` -/
def P12769840838593131204.Spec : Prop :=
  ∀ n, P12769840838593131204.a n = A031342 (n + 1)

end A031342

/-! ## A031342.P10607571993420988103

`A108719(A017233(n))`
-/

namespace A031342.P10607571993420988103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017233 n).toNat

end

end A031342.P10607571993420988103

namespace A031342

/-- `A108719(A017233(n))` -/
def P10607571993420988103.Spec : Prop :=
  ∀ n, P10607571993420988103.a n = A031342 (n + 1)

end A031342

/-!
# A031343: a(n) = prime(10*n).

The programs for A031343, the canonical program `A031343.P4744976987974907385` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031343 has offset 1).

The definition of A031343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(10*(n+1))` (program `A031343.P4744976987974907385`, by `A031343.P4744976987974907385.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031343.P4744976987974907385

`A000040(10*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031343

/-- `A000040(10*(n+1))` -/
def P4744976987974907385.Spec : Prop :=
  ∀ n, P4744976987974907385.a n = A031343 (n + 1)

theorem P4744976987974907385.correct : P4744976987974907385.Spec := by
  intro n
  simp only [A031343, Nat.add_sub_cancel]

end A031343

/-! ## A031343.P16180589133101354586

`A031338(2*(n+1))`
-/

namespace A031343.P16180589133101354586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (2 * (n + 1))

end

end A031343.P16180589133101354586

namespace A031343

/-- `A031338(2*(n+1))` -/
def P16180589133101354586.Spec : Prop :=
  ∀ n, P16180589133101354586.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P5595738115281708075

`A031215(5*(n+1))`
-/

namespace A031343.P5595738115281708075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (5 * (n + 1))

end

end A031343.P5595738115281708075

namespace A031343

/-- `A031215(5*(n+1))` -/
def P5595738115281708075.Spec : Prop :=
  ∀ n, P5595738115281708075.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P17814872774020694470

`∩[A031215(n+1), A031338(n+1)]`
-/

namespace A031343.P17814872774020694470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031343.P17814872774020694470

namespace A031343

/-- `∩[A031215(n+1), A031338(n+1)]` -/
def P17814872774020694470.Spec : Prop :=
  ∀ n, (P17814872774020694470.a n : ℤ) = A031343 (n + 1)

end A031343

/-! ## A031343.P2336043144303317503

`∩[A031338(n+1), A066207(n+1)]`
-/

namespace A031343.P2336043144303317503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031343.P2336043144303317503

namespace A031343

/-- `∩[A031338(n+1), A066207(n+1)]` -/
def P2336043144303317503.Spec : Prop :=
  ∀ n, (P2336043144303317503.a n : ℤ) = A031343 (n + 1)

end A031343

/-! ## A031343.P18230872498019780639

`A006005(10*(n+1))`
-/

namespace A031343.P18230872498019780639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (10 * (n + 1))

end

end A031343.P18230872498019780639

namespace A031343

/-- `A006005(10*(n+1))` -/
def P18230872498019780639.Spec : Prop :=
  ∀ n, P18230872498019780639.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P17011521556407757488

`A004139(10*n+8)`
-/

namespace A031343.P17011521556407757488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (10 * n + 8)

end

end A031343.P17011521556407757488

namespace A031343

/-- `A004139(10*n+8)` -/
def P17011521556407757488.Spec : Prop :=
  ∀ n, P17011521556407757488.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P12366566475289431948

`A065091(10*n+9)`
-/

namespace A031343.P12366566475289431948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (10 * n + 9)

end

end A031343.P12366566475289431948

namespace A031343

/-- `A065091(10*n+9)` -/
def P12366566475289431948.Spec : Prop :=
  ∀ n, P12366566475289431948.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P15046715316298084787

`record[A000040(gcd(10, n)+n)]`
-/

namespace A031343.P15046715316298084787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd 10 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031343.P15046715316298084787

namespace A031343

/-- `record[A000040(gcd(10, n)+n)]` -/
def P15046715316298084787.Spec : Prop :=
  ∀ n, P15046715316298084787.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P17347204893806903891

`A157996(5*(2*n+1))`
-/

namespace A031343.P17347204893806903891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (5 * (2 * n + 1))

end

end A031343.P17347204893806903891

namespace A031343

/-- `A157996(5*(2*n+1))` -/
def P17347204893806903891.Spec : Prop :=
  ∀ n, P17347204893806903891.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P12282272904649805085

`A008864(5*2*(n+1))-1`
-/

namespace A031343.P12282272904649805085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (5 * (2 * (n + 1))) - 1

end

end A031343.P12282272904649805085

namespace A031343

/-- `A008864(5*2*(n+1))-1` -/
def P12282272904649805085.Spec : Prop :=
  ∀ n, P12282272904649805085.a n = A031343 (n + 1)

theorem P12282272904649805085.correct : P12282272904649805085.Spec := by
  intro n
  simp only [A031343, Nat.add_sub_cancel, A031343.P12282272904649805085.a, A031343.P4744976987974907385.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031343

/-! ## A031343.P10467171928133432423

`A006093(9*(n+1)+1+n)+1`
-/

namespace A031343.P10467171928133432423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (9 * (n + 1) + 1 + n) + 1

end

end A031343.P10467171928133432423

namespace A031343

/-- `A006093(9*(n+1)+1+n)+1` -/
def P10467171928133432423.Spec : Prop :=
  ∀ n, P10467171928133432423.a n = A031343 (n + 1)

theorem P10467171928133432423.correct : P10467171928133432423.Spec := by
  intro n
  simp only [A031343, Nat.add_sub_cancel, A031343.P10467171928133432423.a, A031343.P4744976987974907385.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031343

/-! ## A031343.P1708357713356319356

`A040976(9*(n+1)+n+1)+2`
-/

namespace A031343.P1708357713356319356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (9 * (n + 1) + n + 1) + 2

end

end A031343.P1708357713356319356

namespace A031343

/-- `A040976(9*(n+1)+n+1)+2` -/
def P1708357713356319356.Spec : Prop :=
  ∀ n, P1708357713356319356.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P13507078477053634420

`A045319(A017377(n))`
-/

namespace A031343.P13507078477053634420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017377 n).toNat

end

end A031343.P13507078477053634420

namespace A031343

/-- `A045319(A017377(n))` -/
def P13507078477053634420.Spec : Prop :=
  ∀ n, P13507078477053634420.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P5027019209463343647

`A071621(A017317(n))`
-/

namespace A031343.P5027019209463343647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017317 n).toNat

end

end A031343.P5027019209463343647

namespace A031343

/-- `A071621(A017317(n))` -/
def P5027019209463343647.Spec : Prop :=
  ∀ n, P5027019209463343647.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P10542763832134240527

`A078138(A017305(n))`
-/

namespace A031343.P10542763832134240527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (A017305 n).toNat

end

end A031343.P10542763832134240527

namespace A031343

/-- `A078138(A017305(n))` -/
def P10542763832134240527.Spec : Prop :=
  ∀ n, P10542763832134240527.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P5373045988806200599

`A108719(A017353(n))`
-/

namespace A031343.P5373045988806200599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017353 n).toNat

end

end A031343.P5373045988806200599

namespace A031343

/-- `A108719(A017353(n))` -/
def P5373045988806200599.Spec : Prop :=
  ∀ n, P5373045988806200599.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P17229621753109153255

`A045319(A017365(n)+1)`
-/

namespace A031343.P17229621753109153255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017365 n + 1).toNat

end

end A031343.P17229621753109153255

namespace A031343

/-- `A045319(A017365(n)+1)` -/
def P17229621753109153255.Spec : Prop :=
  ∀ n, P17229621753109153255.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P7932957548270608427

`A071621(A017305(n)+1)`
-/

namespace A031343.P7932957548270608427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017305 n + 1).toNat

end

end A031343.P7932957548270608427

namespace A031343

/-- `A071621(A017305(n)+1)` -/
def P7932957548270608427.Spec : Prop :=
  ∀ n, P7932957548270608427.a n = A031343 (n + 1)

end A031343

/-! ## A031343.P3879418574603312350

`A108719(A017341(n)+1)`
-/

namespace A031343.P3879418574603312350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017341 n + 1).toNat

end

end A031343.P3879418574603312350

namespace A031343

/-- `A108719(A017341(n)+1)` -/
def P3879418574603312350.Spec : Prop :=
  ∀ n, P3879418574603312350.a n = A031343 (n + 1)

end A031343

/-!
# A031344: Write primes in base 10 but interpret as if in base 12.

The programs for A031344, there is no canonical definition to state claims against.
-/

/-! ## A031344.P7492206371482137469

`A102487(A000040(n+1)+1)`
-/

namespace A031344.P7492206371482137469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A000040 (n + 1) + 1).toNat

end

end A031344.P7492206371482137469

/-! ## A031344.P11201061066346253504

`A102487(A008864(n+1))`
-/

namespace A031344.P11201061066346253504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A008864 (n + 1)).toNat

end

end A031344.P11201061066346253504

/-! ## A031344.P15547799140317615278

`A102487(A028815(n+1))`
-/

namespace A031344.P15547799140317615278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A028815 (n + 1)).toNat

end

end A031344.P15547799140317615278

/-! ## A031344.P4507718834062414699

`A102487(A299763(n+2))`
-/

namespace A031344.P4507718834062414699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A299763 (n + 2)).toNat

end

end A031344.P4507718834062414699

/-! ## A031344.P7059844346786934290

`A102487(Δ[A007504(n)]+1)`
-/

namespace A031344.P7059844346786934290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (f1 (n + 1) - f1 n + 1).toNat

end

end A031344.P7059844346786934290

/-! ## A031344.P6618129453109675060

`A102487(A006093(n+1)+2)`
-/

namespace A031344.P6618129453109675060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A006093 (n + 1) + 2).toNat

end

end A031344.P6618129453109675060

/-! ## A031344.P7150670234078707880

`A102487(eq[1, A003415(n)]+1)`
-/

namespace A031344.P7150670234078707880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031344.P7150670234078707880

/-! ## A031344.P14281258885893147056

`A102487(eq[2, A005128(n)]+1)`
-/

namespace A031344.P14281258885893147056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031344.P14281258885893147056

/-! ## A031344.P7117470478572514200

`A102487(eq[2, A073855(n)]+1)`
-/

namespace A031344.P7117470478572514200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031344.P7117470478572514200

/-! ## A031344.P16194437143394980130

`A102487(record[A006530(n+2)+1])`
-/

namespace A031344.P16194437143394980130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031344.P16194437143394980130

/-! ## A031344.P9798766613965735380

`A102487(record[A014963(n+2)+1])`
-/

namespace A031344.P9798766613965735380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031344.P9798766613965735380

/-! ## A031344.P791141796789105621

`A102487(record[A020639(n+2)+1])`
-/

namespace A031344.P791141796789105621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031344.P791141796789105621

/-! ## A031344.P10909212530252760845

`A102487(comp[A018252(n+1)-1]+2)`
-/

namespace A031344.P10909212530252760845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A031344.P10909212530252760845

/-! ## A031344.P5466860358669483315

`A102487(A000203(Δ[A007504(n)]))`
-/

namespace A031344.P5466860358669483315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A000203 (f1 (n + 1) - f1 n).toNat).toNat

end

end A031344.P5466860358669483315

/-! ## A031344.P9450882601119697138

`A102487(eq[A074206(n), A210442(n)]+1)`
-/

namespace A031344.P9450882601119697138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A031344.P9450882601119697138

/-! ## A031344.P16650686557922095440

`A102487(eq[2, A190014(n)])`
-/

namespace A031344.P16650686557922095440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031344.P16650686557922095440

/-!
# A031345: Write primes in base 10 but interpret as if in base 13.

The programs for A031345, there is no canonical definition to state claims against.
-/

/-! ## A031345.P10462320271295697203

`A094823(p?[comp[n²]])`
-/

namespace A031345.P10462320271295697203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A031345.P10462320271295697203

/-! ## A031345.P6661787283105485560

`A094823(A000040(n+1))`
-/

namespace A031345.P6661787283105485560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A000040 (n + 1)).toNat

end

end A031345.P6661787283105485560

/-! ## A031345.P11324666030122334348

`A094823(A008578(n+2))`
-/

namespace A031345.P11324666030122334348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A008578 (n + 2)).toNat

end

end A031345.P11324666030122334348

/-! ## A031345.P1371064421102590103

`A094823(A182986(n+2))`
-/

namespace A031345.P1371064421102590103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A182986 (n + 2)).toNat

end

end A031345.P1371064421102590103

/-! ## A031345.P3388154054226254612

`A094823(eq[1, A003415(n)])`
-/

namespace A031345.P3388154054226254612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031345.P3388154054226254612

/-! ## A031345.P18069805239984290802

`A094823(eq[1, A018783(n)])`
-/

namespace A031345.P18069805239984290802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031345.P18069805239984290802

/-! ## A031345.P9756537506837727093

`A094823(sqrt(A001248(n+1)))`
-/

namespace A031345.P9756537506837727093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A031345.P9756537506837727093

/-! ## A031345.P4727186580231086955

`A094823(record[A006530(n+2)])`
-/

namespace A031345.P4727186580231086955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031345.P4727186580231086955

/-! ## A031345.P9766891106282101630

`A094823(record[A014963(n+2)])`
-/

namespace A031345.P9766891106282101630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031345.P9766891106282101630

/-! ## A031345.P14648714025221624699

`A094823(record[A020639(n+2)])`
-/

namespace A031345.P14648714025221624699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031345.P14648714025221624699

/-! ## A031345.P6826732105985966816

`A094823(eq[1, A231820(n+1)])`
-/

namespace A031345.P6826732105985966816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031345.P6826732105985966816

/-!
# A031346: Multiplicative persistence: number of iterations of "multiply digits" needed to reach a number < 10.

The programs for A031346, the canonical program `A031346.P8914373458751936499` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031346 has offset 0).

The definition of A031346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031346.P8914373458751936499

`(a(∏{digits}[n, #]%n)+1)%(1-∑{digits}[n, #]+n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A031346

/-- `(a(∏{digits}[n, #]%n)+1)%(1-∑{digits}[n, #]+n)` -/
def P8914373458751936499.Spec : Prop :=
  ∀ n, P8914373458751936499.a n = A031346 n

theorem P8914373458751936499.correct : P8914373458751936499.Spec := by
  intro n
  simp only [A031346]

end A031346

/-! ## A031346.P288470394920854058

`(a(A007954(n)%n)+1)%∑[char[10*n]]` with `a(0)=0`
-/

namespace A031346.P288470394920854058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (Int.tmod (A007954 n) (n : ℤ)).toNat + 1) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031346.P288470394920854058

namespace A031346

/-- `(a(A007954(n)%n)+1)%∑[char[10*n]]` -/
def P288470394920854058.Spec : Prop :=
  ∀ n, (P288470394920854058.a n : ℤ) = A031346 n

end A031346

/-!
# A031347: Multiplicative digital root of n (keep multiplying digits of n until reaching a single digit).

The programs for A031347, there is no canonical definition to state claims against.
-/

/-! ## A031347.P16389186800142581980

`char[comp[A034048(n+1)]]*A051802(n)`
-/

namespace A031347.P16389186800142581980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A051802 n

end

end A031347.P16389186800142581980

/-! ## A031347.P2540299240841443783

`A381965(lt[A381965(n), A381965(n+1)])`
-/

namespace A031347.P2540299240841443783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381965 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031347.P2540299240841443783

/-! ## A031347.P2562368400230125929

`A087471(n^A178334(n))-floor(acot(n))`
-/

namespace A031347.P2562368400230125929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A031347.P2562368400230125929

/-! ## A031347.P5862003637681664036

`A087471(n^A178334(n))-A000007(n)`
-/

namespace A031347.P5862003637681664036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A000007 n

end

end A031347.P5862003637681664036

/-! ## A031347.P11660917729136338222

`A057427(n)*A087471(n^A178334(n))`
-/

namespace A031347.P11660917729136338222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A031347.P11660917729136338222

/-! ## A031347.P10580100447280147158

`A087471(C(n, A178334(n)))*A178334(n)`
-/

namespace A031347.P10580100447280147158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (Nat.choose n (A178334 n).toNat) * A178334 n

end

end A031347.P10580100447280147158

/-! ## A031347.P18290374427841883561

`lcm(A062157(n), A087471(n^A178334(n)))`
-/

namespace A031347.P18290374427841883561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat)

end

end A031347.P18290374427841883561

/-! ## A031347.P7102127771574668780

`A057428(n)²*A087471(n^A178334(n))`
-/

namespace A031347.P7102127771574668780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A031347.P7102127771574668780

/-! ## A031347.P5535374464739441111

`xor(A000007(2*n), A087471(n^A178334(n)))`
-/

namespace A031347.P5535374464739441111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat)

end

end A031347.P5535374464739441111

/-! ## A031347.P8817291496215468089

`xor(A000038(n)/2, A087471(n^A178334(n)))`
-/

namespace A031347.P8817291496215468089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2)) (A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat)

end

end A031347.P8817291496215468089

/-! ## A031347.P17972234197951905029

`A087471(n^A178334(n))-A008683((n+1)²)`
-/

namespace A031347.P17972234197951905029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A008683 ((n + 1) ^ 2)

end

end A031347.P17972234197951905029

/-! ## A031347.P7966091706603427578

`A000040(n+1)%2*A087471(n^A178334(n))`
-/

namespace A031347.P7966091706603427578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A031347.P7966091706603427578

/-! ## A031347.P9975180624762879113

`A087471(n^A178334(n))-and(1, A000010(n+2))`
-/

namespace A031347.P9975180624762879113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - Int.land 1 (A000010 (n + 2))

end

end A031347.P9975180624762879113

/-! ## A031347.P1609670275797205529

`A087471(n^A178334(n))-A000045(C(2, n+2))`
-/

namespace A031347.P1609670275797205529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A031347.P1609670275797205529

/-! ## A031347.P16591078541509029389

`A001221(A001316(n))*A087471(n^A178334(n))`
-/

namespace A031347.P16591078541509029389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A031347.P16591078541509029389

/-! ## A031347.P10016050227986668088

`A008683(2*A000040(n+1))*A087471(n^A178334(n))`
-/

namespace A031347.P10016050227986668088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A031347.P10016050227986668088

/-!
# A031353: 7-multiplicative persistence: number of iterations of "multiply 7th powers of digits" needed to reach 0 or 1.

The programs for A031353, there is no canonical definition to state claims against.
-/

/-! ## A031353.P14985128968936369145

`or(A010051(A186085(n)), A031350(n+1))`
-/

namespace A031353.P14985128968936369145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A186085 n).toNat) (A031350 (n + 1))

end

end A031353.P14985128968936369145

/-!
# A031356: 10-multiplicative persistence: number of iterations of "multiply 10th powers of digits" needed to reach 0 or 1.

The programs for A031356, there is no canonical definition to state claims against.
-/

/-! ## A031356.P1592881173149076193

`A031351(A056524(n+1))-floor(acot(n))`
-/

namespace A031356.P1592881173149076193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A056524 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A031356.P1592881173149076193

/-! ## A031356.P4071700502386781259

`A031351(A020338(n+1))-A000007(n)`
-/

namespace A031356.P4071700502386781259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A020338 (n + 1)).toNat - A000007 n

end

end A031356.P4071700502386781259

/-! ## A031356.P1002980723247390978

`A031351(A056524(n+1))-A000007(n)`
-/

namespace A031356.P1002980723247390978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A056524 (n + 1)).toNat - A000007 n

end

end A031356.P1002980723247390978

/-! ## A031356.P2016816693522395563

`A031351(A056524(n+1))*A057427(n)`
-/

namespace A031356.P2016816693522395563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A056524 (n + 1)).toNat * A057427 n

end

end A031356.P2016816693522395563

/-! ## A031356.P10249178826672638681

`A031351(A056524(n+1))-A000038(n)/2`
-/

namespace A031356.P10249178826672638681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031351 (A056524 (n + 1)).toNat : ℚ) - (A000038 n : ℚ) / 2

end

end A031356.P10249178826672638681

/-! ## A031356.P1059917840356582615

`A031351(A056524(n+1))-A004277(n)%2`
-/

namespace A031356.P1059917840356582615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A056524 (n + 1)).toNat - Int.tmod (A004277 n) 2

end

end A031356.P1059917840356582615

/-! ## A031356.P5529166616495714567

`A000040(n+1)%2*A031351(A056524(n+1))`
-/

namespace A031356.P5529166616495714567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A031351 (A056524 (n + 1)).toNat

end

end A031356.P5529166616495714567

/-! ## A031356.P9623342099779642197

`A031351(A056524(n+1))-and(1, A000010(n+2))`
-/

namespace A031356.P9623342099779642197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A056524 (n + 1)).toNat - Int.land 1 (A000010 (n + 2))

end

end A031356.P9623342099779642197

/-! ## A031356.P15182973068954539929

`A031351(A056524(n+1))+A008683(2*(n+1)²)`
-/

namespace A031356.P15182973068954539929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A056524 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A031356.P15182973068954539929

/-! ## A031356.P15397719484656774565

`A031351(A056524(n+1))-A000005(n²+1)%2`
-/

namespace A031356.P15397719484656774565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031351 (A056524 (n + 1)).toNat - Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A031356.P15397719484656774565

/-!
# A031358: Number of coincidence site lattices of index 4n+1 in lattice Z^2.

The programs for A031358, the canonical program `A031358.P2464397492571462740` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031358 has offset 0).

The definition of A031358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031358.P2464397492571462740

`∏{p}[2*n+2*n+1, and(2, -#)]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A031358

/-- `∏{p}[2*n+2*n+1, and(2, -#)]` -/
def P2464397492571462740.Spec : Prop :=
  ∀ n, P2464397492571462740.a n = A031358 n

theorem P2464397492571462740.correct : P2464397492571462740.Spec := by
  intro n
  simp only [A031358]

end A031358

/-! ## A031358.P15190882027894575170

`A091379(4*n+1)`
-/

namespace A031358.P15190882027894575170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (4 * n + 1)

end

end A031358.P15190882027894575170

namespace A031358

/-- `A091379(4*n+1)` -/
def P15190882027894575170.Spec : Prop :=
  ∀ n, P15190882027894575170.a n = A031358 n

theorem P15190882027894575170.correct : P15190882027894575170.Spec := by
  intro n
  simp only [A031358, Nat.add_sub_cancel, A031358.P15190882027894575170.a, A031358.P2464397492571462740.f1, A031358.P2464397492571462740.a, A091379, A091379.P6458046850271695309.f1, A091379.P6458046850271695309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031358

/-! ## A031358.P14909814052499393764

`∏{p}[4*n+1, A354107(#)]`
-/

namespace A031358.P14909814052499393764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A354107 p

end

end A031358.P14909814052499393764

namespace A031358

/-- `∏{p}[4*n+1, A354107(#)]` -/
def P14909814052499393764.Spec : Prop :=
  ∀ n, P14909814052499393764.a n = A031358 n

end A031358

/-! ## A031358.P8284945250465471550

`∏{p}[A016813(n), A292603(A016813(n)/#)]`
-/

namespace A031358.P8284945250465471550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A292603 (SequenceMachineLib.roundAway ((A016813 n : ℚ) / (p : ℚ))).toNat

end

end A031358.P8284945250465471550

namespace A031358

/-- `∏{p}[A016813(n), A292603(A016813(n)/#)]` -/
def P8284945250465471550.Spec : Prop :=
  ∀ n, P8284945250465471550.a n = A031358 n

end A031358

/-! ## A031358.P9788234198373533510

`∏{p}[A016813(n), A292603(#)]`
-/

namespace A031358.P9788234198373533510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A292603 p

end

end A031358.P9788234198373533510

namespace A031358

/-- `∏{p}[A016813(n), A292603(#)]` -/
def P9788234198373533510.Spec : Prop :=
  ∀ n, P9788234198373533510.a n = A031358 n

end A031358

/-! ## A031358.P7946358248784673973

`∏{p}[A130773(2*n), A130731(#)]`
-/

namespace A031358.P7946358248784673973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A130731 p

end

end A031358.P7946358248784673973

namespace A031358

/-- `∏{p}[A130773(2*n), A130731(#)]` -/
def P7946358248784673973.Spec : Prop :=
  ∀ n, P7946358248784673973.a n = A031358 n

end A031358

/-! ## A031358.P8121801435501501583

`A000089(4*n+1)`
-/

namespace A031358.P8121801435501501583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (4 * n + 1)

end

end A031358.P8121801435501501583

namespace A031358

/-- `A000089(4*n+1)` -/
def P8121801435501501583.Spec : Prop :=
  ∀ n, P8121801435501501583.a n = A031358 n

end A031358

/-! ## A031358.P3868446773585593128

`A000095(4*n+1)`
-/

namespace A031358.P3868446773585593128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (4 * n + 1)

end

end A031358.P3868446773585593128

namespace A031358

/-- `A000095(4*n+1)` -/
def P3868446773585593128.Spec : Prop :=
  ∀ n, P3868446773585593128.a n = A031358 n

end A031358

/-! ## A031358.P17188124766492597430

`A091400(4*n+1)`
-/

namespace A031358.P17188124766492597430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (4 * n + 1)

end

end A031358.P17188124766492597430

namespace A031358

/-- `A091400(4*n+1)` -/
def P17188124766492597430.Spec : Prop :=
  ∀ n, P17188124766492597430.a n = A031358 n

end A031358

/-! ## A031358.P16484485498489837145

`A350872(3*n+n+1)`
-/

namespace A031358.P16484485498489837145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (3 * n + (n + 1))

end

end A031358.P16484485498489837145

namespace A031358

/-- `A350872(3*n+n+1)` -/
def P16484485498489837145.Spec : Prop :=
  ∀ n, P16484485498489837145.a n = A031358 n

end A031358

/-! ## A031358.P17111705961555342052

`A295819(A254667(2*n+1)+2*n)`
-/

namespace A031358.P17111705961555342052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 (A254667 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A031358.P17111705961555342052

namespace A031358

/-- `A295819(A254667(2*n+1)+2*n)` -/
def P17111705961555342052.Spec : Prop :=
  ∀ n, P17111705961555342052.a n = A031358 n

end A031358

/-! ## A031358.P263385486218781165

`A295819(8*n+2)`
-/

namespace A031358.P263385486218781165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 (8 * n + 2)

end

end A031358.P263385486218781165

namespace A031358

/-- `A295819(8*n+2)` -/
def P263385486218781165.Spec : Prop :=
  ∀ n, P263385486218781165.a n = A031358 n

end A031358

/-! ## A031358.P8583498769492258056

`A036453(n+1)*A106602(n)`
-/

namespace A031358.P8583498769492258056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A106602 n

end

end A031358.P8583498769492258056

namespace A031358

/-- `A036453(n+1)*A106602(n)` -/
def P8583498769492258056.Spec : Prop :=
  ∀ n, P8583498769492258056.a n = A031358 n

end A031358

/-! ## A031358.P4889617176609362308

`A106602(n)*A130335(n+1)`
-/

namespace A031358.P4889617176609362308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106602 n * A130335 (n + 1)

end

end A031358.P4889617176609362308

namespace A031358

/-- `A106602(n)*A130335(n+1)` -/
def P4889617176609362308.Spec : Prop :=
  ∀ n, P4889617176609362308.a n = A031358 n

end A031358

/-! ## A031358.P1857057762850352938

`A106602(n)*A143098(n+1)`
-/

namespace A031358.P1857057762850352938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106602 n * A143098 (n + 1)

end

end A031358.P1857057762850352938

namespace A031358

/-- `A106602(n)*A143098(n+1)` -/
def P1857057762850352938.Spec : Prop :=
  ∀ n, P1857057762850352938.a n = A031358 n

end A031358

/-! ## A031358.P11352810134636474182

`A106602(n)*A216022(n+1)`
-/

namespace A031358.P11352810134636474182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106602 n * A216022 (n + 1)

end

end A031358.P11352810134636474182

namespace A031358

/-- `A106602(n)*A216022(n+1)` -/
def P11352810134636474182.Spec : Prop :=
  ∀ n, P11352810134636474182.a n = A031358 n

end A031358

/-!
# A031359: Bisection of A001615.

The programs for A031359, the canonical program `A031359.P2951281356129990427` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031359 has offset 1).

The definition of A031359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A031359.P2951281356129990427

`A001615(2*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031359

/-- `A001615(2*n+1)` -/
def P2951281356129990427.Spec : Prop :=
  ∀ n, P2951281356129990427.a n = A031359 (n + 1)

theorem P2951281356129990427.correct : P2951281356129990427.Spec := by
  intro n
  simp only [A031359, Nat.add_sub_cancel]

end A031359

/-! ## A031359.P14706599650215717861

`∑{d}[∏{p}[2*n+1, #], (2*n+1)/#]`
-/

namespace A031359.P14706599650215717861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 * n + 1 : ℚ) / (d : ℚ)

end

end A031359.P14706599650215717861

namespace A031359

/-- `∑{d}[∏{p}[2*n+1, #], (2*n+1)/#]` -/
def P14706599650215717861.Spec : Prop :=
  ∀ n, P14706599650215717861.a n = (A031359 (n + 1) : ℚ)

end A031359

/-! ## A031359.P18132848819674057878

`A347385(Δ[n²])`
-/

namespace A031359.P18132848819674057878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031359.P18132848819674057878

namespace A031359

/-- `A347385(Δ[n²])` -/
def P18132848819674057878.Spec : Prop :=
  ∀ n, P18132848819674057878.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P16876609386996917125

`abs(A158523(2*n+1))`
-/

namespace A031359.P16876609386996917125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158523 (2 * n + 1)|

end

end A031359.P16876609386996917125

namespace A031359

/-- `abs(A158523(2*n+1))` -/
def P16876609386996917125.Spec : Prop :=
  ∀ n, P16876609386996917125.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P3405826996167850126

`and(or(1, -n)%2, A347385(2*n+1))`
-/

namespace A031359.P3405826996167850126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (Int.lor 1 (-(n : ℤ))) 2) (A347385 (2 * n + 1))

end

end A031359.P3405826996167850126

namespace A031359

/-- `and(or(1, -n)%2, A347385(2*n+1))` -/
def P3405826996167850126.Spec : Prop :=
  ∀ n, P3405826996167850126.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P9978391733074396185

`(2*n+1)*∏{p}[2*n+1, A000203(#)/#]`
-/

namespace A031359.P9978391733074396185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (A000203 p : ℚ) / (p : ℚ))

end

end A031359.P9978391733074396185

namespace A031359

/-- `(2*n+1)*∏{p}[2*n+1, A000203(#)/#]` -/
def P9978391733074396185.Spec : Prop :=
  ∀ n, P9978391733074396185.a n = (A031359 (n + 1) : ℚ)

end A031359

/-! ## A031359.P15826218658328428276

`A347385(2*n+1)%A017113(n)`
-/

namespace A031359.P15826218658328428276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347385 (2 * n + 1)) (A017113 n)

end

end A031359.P15826218658328428276

namespace A031359

/-- `A347385(2*n+1)%A017113(n)` -/
def P15826218658328428276.Spec : Prop :=
  ∀ n, P15826218658328428276.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P6882006866496000435

`gcd(A000038(n), A158523(2*n+1))`
-/

namespace A031359.P6882006866496000435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A158523 (2 * n + 1))

end

end A031359.P6882006866496000435

namespace A031359

/-- `gcd(A000038(n), A158523(2*n+1))` -/
def P6882006866496000435.Spec : Prop :=
  ∀ n, (P6882006866496000435.a n : ℤ) = A031359 (n + 1)

end A031359

/-! ## A031359.P6163996237351882732

`lcm(A006466(n), A158523(2*n+1))`
-/

namespace A031359.P6163996237351882732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A158523 (2 * n + 1))

end

end A031359.P6163996237351882732

namespace A031359

/-- `lcm(A006466(n), A158523(2*n+1))` -/
def P6163996237351882732.Spec : Prop :=
  ∀ n, (P6163996237351882732.a n : ℤ) = A031359 (n + 1)

end A031359

/-! ## A031359.P11656221004424088758

`A292786(2*n+1)+A000010(2*n+1)`
-/

namespace A031359.P11656221004424088758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292786 (2 * n + 1) + A000010 (2 * n + 1)

end

end A031359.P11656221004424088758

namespace A031359

/-- `A292786(2*n+1)+A000010(2*n+1)` -/
def P11656221004424088758.Spec : Prop :=
  ∀ n, P11656221004424088758.a n = A031359 (n + 1)

theorem P11656221004424088758.correct : P11656221004424088758.Spec := by
  intro n
  simp only [A031359, Nat.add_sub_cancel, A031359.P11656221004424088758.a, A031359.P2951281356129990427.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A292786, A292786.P1789774906474236372.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A031359

/-! ## A031359.P16413995973473044547

`A000010(2*n+1)+2*A318320(2*n+1)`
-/

namespace A031359.P16413995973473044547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) + 2 * A318320 (2 * n + 1)

end

end A031359.P16413995973473044547

namespace A031359

/-- `A000010(2*n+1)+2*A318320(2*n+1)` -/
def P16413995973473044547.Spec : Prop :=
  ∀ n, P16413995973473044547.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P7455935992348822507

`A160890(2*n+1)/7`
-/

namespace A031359.P7455935992348822507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160890 (2 * n + 1) : ℚ) / 7

end

end A031359.P7455935992348822507

namespace A031359

/-- `A160890(2*n+1)/7` -/
def P7455935992348822507.Spec : Prop :=
  ∀ n, P7455935992348822507.a n = (A031359 (n + 1) : ℚ)

theorem P7455935992348822507.correct : P7455935992348822507.Spec := by
  intro n
  simp only [A031359, Nat.add_sub_cancel, A031359.P7455935992348822507.a, A031359.P2951281356129990427.a, A001615, A001615.P12078511981713404634.a, A160890, A160890.P9259257314874269544.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031359

/-! ## A031359.P2802694471331607083

`A000203(2*n+1)-A244963(2*n+1)`
-/

namespace A031359.P2802694471331607083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A244963 (2 * n + 1)

end

end A031359.P2802694471331607083

namespace A031359

/-- `A000203(2*n+1)-A244963(2*n+1)` -/
def P2802694471331607083.Spec : Prop :=
  ∀ n, P2802694471331607083.a n = A031359 (n + 1)

theorem P2802694471331607083.correct : P2802694471331607083.Spec := by
  intro n
  simp only [A031359, Nat.add_sub_cancel, A031359.P2802694471331607083.a, A031359.P2951281356129990427.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A244963, A244963.P8812478636684031312.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031359

/-! ## A031359.P13518726228046547857

`A323364(2*n+1)-A323363(2*n+1)`
-/

namespace A031359.P13518726228046547857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323364 (2 * n + 1) - A323363 (2 * n + 1)

end

end A031359.P13518726228046547857

namespace A031359

/-- `A323364(2*n+1)-A323363(2*n+1)` -/
def P13518726228046547857.Spec : Prop :=
  ∀ n, P13518726228046547857.a n = A031359 (n + 1)

theorem P13518726228046547857.correct : P13518726228046547857.Spec := by
  intro n
  simp only [A031359, Nat.add_sub_cancel, A031359.P13518726228046547857.a, A031359.P2951281356129990427.a, A001615, A001615.P12078511981713404634.a, A323363, A323363.P90347779852001049.a, A323364, A323364.P3739898756084347257.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008836, A008836.P691704047226663751.a, A048250, A048250.P6137918235727910070.a, A001222, A001222.P11318177267732088261.a, A033999, A033999.P17703899380244199787.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031359

/-! ## A031359.P7949743832587385170

`A342915(2*n+1)*A342917(2*n+1)`
-/

namespace A031359.P7949743832587385170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342915 (2 * n + 1) * A342917 (2 * n + 1)

end

end A031359.P7949743832587385170

namespace A031359

/-- `A342915(2*n+1)*A342917(2*n+1)` -/
def P7949743832587385170.Spec : Prop :=
  ∀ n, P7949743832587385170.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P8733877797862681852

`A344695(2*n+1)*A344697(2*n+1)`
-/

namespace A031359.P8733877797862681852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (2 * n + 1) * A344697 (2 * n + 1)

end

end A031359.P8733877797862681852

namespace A031359

/-- `A344695(2*n+1)*A344697(2*n+1)` -/
def P8733877797862681852.Spec : Prop :=
  ∀ n, P8733877797862681852.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P17773229127339244020

`A344753(2*n+1)+A033879(2*n+1)`
-/

namespace A031359.P17773229127339244020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344753 (2 * n + 1) + A033879 (2 * n + 1)

end

end A031359.P17773229127339244020

namespace A031359

/-- `A344753(2*n+1)+A033879(2*n+1)` -/
def P17773229127339244020.Spec : Prop :=
  ∀ n, P17773229127339244020.a n = A031359 (n + 1)

theorem P17773229127339244020.correct : P17773229127339244020.Spec := by
  intro n
  simp only [A031359, Nat.add_sub_cancel, A031359.P17773229127339244020.a, A031359.P2951281356129990427.a, A001615, A001615.P12078511981713404634.a, A033879, A033879.P11735613842914743111.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A033880, A033880.P6005875780263802708.a, A306927, A306927.P17814691939423950955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031359

/-! ## A031359.P17462791598151734976

`A159634(Δ[n²])`
-/

namespace A031359.P17462791598151734976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031359.P17462791598151734976

namespace A031359

/-- `A159634(Δ[n²])` -/
def P17462791598151734976.Spec : Prop :=
  ∀ n, P17462791598151734976.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P6081738529975882531

`A253629(Δ[n²])`
-/

namespace A031359.P6081738529975882531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253629 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031359.P6081738529975882531

namespace A031359

/-- `A253629(Δ[n²])` -/
def P6081738529975882531.Spec : Prop :=
  ∀ n, P6081738529975882531.a n = A031359 (n + 1)

end A031359

/-! ## A031359.P414069717055491337

`∑{d}[2*n+1, A063659(#)]`
-/

namespace A031359.P414069717055491337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d

end

end A031359.P414069717055491337

namespace A031359

/-- `∑{d}[2*n+1, A063659(#)]` -/
def P414069717055491337.Spec : Prop :=
  ∀ n, P414069717055491337.a n = A031359 (n + 1)

end A031359

/-!
# A031360: Number of symmetrically inequivalent coincidence rotations of index 2n-1 in lattice D_4.

The programs for A031360, there is no canonical definition to state claims against.
-/

/-! ## A031360.P2971264260761553656

`A031361(Δ[n²])`
-/

namespace A031360.P2971264260761553656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031360.P2971264260761553656

/-! ## A031360.P16561909776697290758

`or(A000007(n), A031361(2*n+1))`
-/

namespace A031360.P16561909776697290758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A031361 (2 * n + 1))

end

end A031360.P16561909776697290758

/-! ## A031360.P9371298786856524664

`A031361(2*n+1)+A019590(n+3)`
-/

namespace A031360.P9371298786856524664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031361 (2 * n + 1) + A019590 (n + 3)

end

end A031360.P9371298786856524664

/-! ## A031360.P743621141051380339

`A031361(2*n+1)+A000007(n+4)`
-/

namespace A031360.P743621141051380339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031361 (2 * n + 1) + A000007 (n + 4)

end

end A031360.P743621141051380339

/-! ## A031360.P12360370657078891539

`A031361(2*n+1)+A002378(n)%2`
-/

namespace A031360.P12360370657078891539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031361 (2 * n + 1) + Int.tmod (A002378 n) 2

end

end A031360.P12360370657078891539

/-! ## A031360.P9568505765471401853

`A350872(2*(n+1))+A031361(2*n+1)`
-/

namespace A031360.P9568505765471401853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (2 * (n + 1)) + A031361 (2 * n + 1)

end

end A031360.P9568505765471401853

/-! ## A031360.P10932825931744483491

`A031361(A005408(n))%A212837(n+1)`
-/

namespace A031360.P10932825931744483491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031361 (A005408 n).toNat) (A212837 (n + 1))

end

end A031360.P10932825931744483491

/-! ## A031360.P9659964067853579889

`lcm(A031361(A005408(n)), A074295(n+1))`
-/

namespace A031360.P9659964067853579889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031361 (A005408 n).toNat) (A074295 (n + 1))

end

end A031360.P9659964067853579889

/-! ## A031360.P71487679373384027

`A031361(2*A005408(n))/2`
-/

namespace A031360.P71487679373384027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031361 (2 * A005408 n).toNat : ℚ) / 2

end

end A031360.P71487679373384027

/-! ## A031360.P10551603991523770445

`A031361(lcm(2, A005408(n)))/2`
-/

namespace A031360.P10551603991523770445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031361 (Int.lcm 2 (A005408 n)) : ℚ) / 2

end

end A031360.P10551603991523770445

/-! ## A031360.P7067815782056261300

`A031361(2*n+1)%A175876(n+1)`
-/

namespace A031360.P7067815782056261300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031361 (2 * n + 1)) (A175876 (n + 1))

end

end A031360.P7067815782056261300

/-! ## A031360.P13684929877788136760

`A031361(A005408(n))%A198794(n)`
-/

namespace A031360.P13684929877788136760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031361 (A005408 n).toNat) (A198794 n)

end

end A031360.P13684929877788136760

/-!
# A031362: Number of coincidence site modules of index 10n+1 with 10-fold symmetry in plane.

The programs for A031362, there is no canonical definition to state claims against.
-/

/-! ## A031362.P12327756206819904585

`A329491(n+1)^p?[A295663(n+1)]`
-/

namespace A031362.P12327756206819904585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329491 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A031362.P12327756206819904585

/-! ## A031362.P9109774577321084399

`A329491(n+1)²*A294333(A301250(n+1))`
-/

namespace A031362.P9109774577321084399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329491 (n + 1) ^ 2 * A294333 (A301250 (n + 1)).toNat

end

end A031362.P9109774577321084399

/-! ## A031362.P13270220733943813918

`and(A369355(n+1), A378012(n))`
-/

namespace A031362.P13270220733943813918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A369355 (n + 1)) (A378012 n)

end

end A031362.P13270220733943813918

/-! ## A031362.P15682740678919030670

`and(A001394(n), A378012(n))`
-/

namespace A031362.P15682740678919030670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001394 n) (A378012 n)

end

end A031362.P15682740678919030670

/-! ## A031362.P16163419168566105952

`and(A337441(n), A378012(n))`
-/

namespace A031362.P16163419168566105952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337441 n) (A378012 n)

end

end A031362.P16163419168566105952

/-!
# A031363: Positive numbers of the form x^2 + xy - y^2; or, of the form 5x^2 - y^2.

The programs for A031363, the canonical program `A031363.P1945995109535793114` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031363 has offset 1).

The definition of A031363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031363.P1945995109535793114

`filter[A035259(n+1), A035263(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A031363

/-- `filter[A035259(n+1), A035263(#)]` -/
def P1945995109535793114.Spec : Prop :=
  ∀ n, P1945995109535793114.a n = A031363 (n + 1)

theorem P1945995109535793114.correct : P1945995109535793114.Spec := by
  intro n
  simp only [A031363, Nat.add_sub_cancel]

end A031363

/-! ## A031363.P5568617955858890670

`filter[A035259(n+1), A372574(#)]`
-/

namespace A031363.P5568617955858890670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A031363.P5568617955858890670

namespace A031363

/-- `filter[A035259(n+1), A372574(#)]` -/
def P5568617955858890670.Spec : Prop :=
  ∀ n, P5568617955858890670.a n = A031363 (n + 1)

end A031363

/-! ## A031363.P5388911300463124990

`filter[A035259(n+1), A373136(#)]`
-/

namespace A031363.P5388911300463124990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A031363.P5388911300463124990

namespace A031363

/-- `filter[A035259(n+1), A373136(#)]` -/
def P5388911300463124990.Spec : Prop :=
  ∀ n, P5388911300463124990.a n = A031363 (n + 1)

end A031363

/-! ## A031363.P16090535486312562689

`∩[A035259(n+1), A339690(n+1)]`
-/

namespace A031363.P16090535486312562689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031363.P16090535486312562689

namespace A031363

/-- `∩[A035259(n+1), A339690(n+1)]` -/
def P16090535486312562689.Spec : Prop :=
  ∀ n, (P16090535486312562689.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P6659309077959141305

`∩[A035259(n+1), A036668(n+1)]`
-/

namespace A031363.P6659309077959141305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031363.P6659309077959141305

namespace A031363

/-- `∩[A035259(n+1), A036668(n+1)]` -/
def P6659309077959141305.Spec : Prop :=
  ∀ n, (P6659309077959141305.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P7254280592641857128

`∩[A003159(n+1), A035259(n+1)]`
-/

namespace A031363.P7254280592641857128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031363.P7254280592641857128

namespace A031363

/-- `∩[A003159(n+1), A035259(n+1)]` -/
def P7254280592641857128.Spec : Prop :=
  ∀ n, (P7254280592641857128.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P14960514395425582529

`lt[0, A078473(n+1)]+1`
-/

namespace A031363.P14960514395425582529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A031363.P14960514395425582529

namespace A031363

/-- `lt[0, A078473(n+1)]+1` -/
def P14960514395425582529.Spec : Prop :=
  ∀ n, (P14960514395425582529.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P1848149375181875352

`eq[1, gcd(5, A321562(n+1))]+1`
-/

namespace A031363.P1848149375181875352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A321562 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031363.P1848149375181875352

namespace A031363

/-- `eq[1, gcd(5, A321562(n+1))]+1` -/
def P1848149375181875352.Spec : Prop :=
  ∀ n, (P1848149375181875352.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P10406691180533739147

`record[gcd(n+1, val(A001157(n+1), 5))]`
-/

namespace A031363.P10406691180533739147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (A001157 (n + 1)).toNat 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031363.P10406691180533739147

namespace A031363

/-- `record[gcd(n+1, val(A001157(n+1), 5))]` -/
def P10406691180533739147.Spec : Prop :=
  ∀ n, (P10406691180533739147.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P18086244740546130055

`record[n%(A035187(n+1)+n)+1]`
-/

namespace A031363.P18086244740546130055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A035187 (n + 1) + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031363.P18086244740546130055

namespace A031363

/-- `record[n%(A035187(n+1)+n)+1]` -/
def P18086244740546130055.Spec : Prop :=
  ∀ n, P18086244740546130055.a n = A031363 (n + 1)

end A031363

/-! ## A031363.P12189962777832957591

`eq[2, A085192(a(A035187(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A031363.P12189962777832957591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A085192 (f2 (A035187 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031363.P12189962777832957591

namespace A031363

/-- `eq[2, A085192(a(A035187(n)))]` -/
def P12189962777832957591.Spec : Prop :=
  ∀ n, (P12189962777832957591.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P8994930776492777716

`eq[2, A091918(a(A035187(n))²)]` with `a(0)=3, a(1)=2`
-/

namespace A031363.P8994930776492777716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A091918 (f2 (A035187 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031363.P8994930776492777716

namespace A031363

/-- `eq[2, A091918(a(A035187(n))²)]` -/
def P8994930776492777716.Spec : Prop :=
  ∀ n, (P8994930776492777716.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P12315285711438855636

`eq[2, A132749(a(A035187(n))²)]` with `a(0)=3, a(1)=2`
-/

namespace A031363.P12315285711438855636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A132749 (f2 (A035187 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031363.P12315285711438855636

namespace A031363

/-- `eq[2, A132749(a(A035187(n))²)]` -/
def P12315285711438855636.Spec : Prop :=
  ∀ n, (P12315285711438855636.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P1361940859196356638

`eq[1, char[A281385(n+1)]]`
-/

namespace A031363.P1361940859196356638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031363.P1361940859196356638

namespace A031363

/-- `eq[1, char[A281385(n+1)]]` -/
def P1361940859196356638.Spec : Prop :=
  ∀ n, (P1361940859196356638.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P6566459598486601485

`lt[0, char[A022344(n)]]`
-/

namespace A031363.P6566459598486601485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031363.P6566459598486601485

namespace A031363

/-- `lt[0, char[A022344(n)]]` -/
def P6566459598486601485.Spec : Prop :=
  ∀ n, (P6566459598486601485.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P11375393243999931152

`eq[1, char[(n+1)²%A001950(n+1)+n]]`
-/

namespace A031363.P11375393243999931152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A001950 (n + 1)) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031363.P11375393243999931152

namespace A031363

/-- `eq[1, char[(n+1)²%A001950(n+1)+n]]` -/
def P11375393243999931152.Spec : Prop :=
  ∀ n, (P11375393243999931152.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P625802270034731030

`eq[1, char[A035337(n)²%A035339(n)]]`
-/

namespace A031363.P625802270034731030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n ^ 2) (A035339 n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031363.P625802270034731030

namespace A031363

/-- `eq[1, char[A035337(n)²%A035339(n)]]` -/
def P625802270034731030.Spec : Prop :=
  ∀ n, (P625802270034731030.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P15961843188926807084

`lt[0, A031364(n+1)]+1`
-/

namespace A031363.P15961843188926807084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A031363.P15961843188926807084

namespace A031363

/-- `lt[0, A031364(n+1)]+1` -/
def P15961843188926807084.Spec : Prop :=
  ∀ n, (P15961843188926807084.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P7874683587162395321

`eq[1, char[A005752(n+1)]]`
-/

namespace A031363.P7874683587162395321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031363.P7874683587162395321

namespace A031363

/-- `eq[1, char[A005752(n+1)]]` -/
def P7874683587162395321.Spec : Prop :=
  ∀ n, (P7874683587162395321.a n : ℤ) = A031363 (n + 1)

end A031363

/-! ## A031363.P10189794863687223912

`eq[char[A005752(n)], A057427(n)]`
-/

namespace A031363.P10189794863687223912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A031363.P10189794863687223912

namespace A031363

/-- `eq[char[A005752(n)], A057427(n)]` -/
def P10189794863687223912.Spec : Prop :=
  ∀ n, (P10189794863687223912.a n : ℤ) = A031363 (n + 1)

end A031363

/-!
# A031364: Number of coincidence site modules of index 10n+1 in an icosahedral module.

The programs for A031364, there is no canonical definition to state claims against.
-/

/-! ## A031364.P12388010166060706020

`A000196(A035202(n+1)*A331143(n+1))`
-/

namespace A031364.P12388010166060706020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A035202 (n + 1) * A331143 (n + 1)).toNat

end

end A031364.P12388010166060706020

/-! ## A031364.P9571264961241291143

`A078473(n+1)-A328959(A360134(2*n+1))`
-/

namespace A031364.P9571264961241291143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1) - A328959 (A360134 (2 * n + 1)).toNat

end

end A031364.P9571264961241291143

/-! ## A031364.P3176434284235718715

`and(A078473(n+1), A078477(A080535(n)))`
-/

namespace A031364.P3176434284235718715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078473 (n + 1)) (A078477 (A080535 n).toNat)

end

end A031364.P3176434284235718715

/-! ## A031364.P12474575124780212786

`A078473(n+1)-A016389(A119502(n))`
-/

namespace A031364.P12474575124780212786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1) - A016389 (A119502 n).toNat

end

end A031364.P12474575124780212786

/-!
# A031366: Number of symmetrically inequivalent coincidence rotations of icosian ring of index n.

The programs for A031366, there is no canonical definition to state claims against.
-/

/-! ## A031366.P7020217333410069132

`A331143(A043316(n+1))`
-/

namespace A031366.P7020217333410069132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331143 (A043316 (n + 1)).toNat

end

end A031366.P7020217333410069132

/-! ## A031366.P15665840324321109813

`A331143(A044913(n+1))`
-/

namespace A031366.P15665840324321109813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331143 (A044913 (n + 1)).toNat

end

end A031366.P15665840324321109813

/-! ## A031366.P9702940319997250415

`A331143(A049872(n+1))`
-/

namespace A031366.P9702940319997250415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331143 (A049872 (n + 1)).toNat

end

end A031366.P9702940319997250415

/-! ## A031366.P2500821211289397646

`A331143(A061147(n+1))`
-/

namespace A031366.P2500821211289397646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331143 (A061147 (n + 1)).toNat

end

end A031366.P2500821211289397646

/-! ## A031366.P3723590676951297721

`A331143(A061497(n+1))`
-/

namespace A031366.P3723590676951297721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331143 (A061497 (n + 1)).toNat

end

end A031366.P3723590676951297721

/-!
# A031367: Inflation orbit counts.

The programs for A031367, the canonical program `A031367.P59529258561244113` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031367 has offset 1).

The definition of A031367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031367.P15709645054624701543

`(n+1)*A060280(n+1)`
-/

namespace A031367.P15709645054624701543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060280 (n + 1)

end

end A031367.P15709645054624701543

namespace A031367

/-- `(n+1)*A060280(n+1)` -/
def P15709645054624701543.Spec : Prop :=
  ∀ n, P15709645054624701543.a n = A031367 (n + 1)

end A031367

/-! ## A031367.P2131852544327936954

`(n+1)*A006206(n+1)%A000032(n)`
-/

namespace A031367.P2131852544327936954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A006206 (n + 1)) (A000032 n)

end

end A031367.P2131852544327936954

namespace A031367

/-- `(n+1)*A006206(n+1)%A000032(n)` -/
def P2131852544327936954.Spec : Prop :=
  ∀ n, P2131852544327936954.a n = A031367 (n + 1)

end A031367

/-! ## A031367.P12138915966007724877

`(n+1)*lcm(A006206(n+1), A134323(n+1))`
-/

namespace A031367.P12138915966007724877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.lcm (A006206 (n + 1)) (A134323 (n + 1))

end

end A031367.P12138915966007724877

namespace A031367

/-- `(n+1)*lcm(A006206(n+1), A134323(n+1))` -/
def P12138915966007724877.Spec : Prop :=
  ∀ n, (P12138915966007724877.a n : ℤ) = A031367 (n + 1)

end A031367

/-! ## A031367.P59529258561244113

`∑{d}[n+1, A008683(#)*A001350((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031367

/-- `∑{d}[n+1, A008683(#)*A001350((n+1)/#)]` -/
def P59529258561244113.Spec : Prop :=
  ∀ n, P59529258561244113.a n = A031367 (n + 1)

theorem P59529258561244113.correct : P59529258561244113.Spec := by
  intro n
  simp only [A031367, Nat.add_sub_cancel]

end A031367

/-! ## A031367.P3744138393552499448

`∑{d}[n+1, A008683((n+1)/#)*(A000032(#)-1-(-1)^#)]`
-/

namespace A031367.P3744138393552499448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (A000032 d - 1 - (-1) ^ d)

end

end A031367.P3744138393552499448

namespace A031367

/-- `∑{d}[n+1, A008683((n+1)/#)*(A000032(#)-1-(-1)^#)]` -/
def P3744138393552499448.Spec : Prop :=
  ∀ n, P3744138393552499448.a n = A031367 (n + 1)

end A031367

/-! ## A031367.P13677715140708278542

`A060280(A110514(2*n))*A110514(2*n)`
-/

namespace A031367.P13677715140708278542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A031367.P13677715140708278542

namespace A031367

/-- `A060280(A110514(2*n))*A110514(2*n)` -/
def P13677715140708278542.Spec : Prop :=
  ∀ n, P13677715140708278542.a n = A031367 (n + 1)

end A031367

/-! ## A031367.P4064331829267400212

`A060280(A131732(2*n))*A131732(2*n)`
-/

namespace A031367.P4064331829267400212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (A131732 (2 * n)).toNat * A131732 (2 * n)

end

end A031367.P4064331829267400212

namespace A031367

/-- `A060280(A131732(2*n))*A131732(2*n)` -/
def P4064331829267400212.Spec : Prop :=
  ∀ n, P4064331829267400212.a n = A031367 (n + 1)

end A031367

/-! ## A031367.P8871217384478031065

`(n+1)*and(A006206(n+1), A052549(n))`
-/

namespace A031367.P8871217384478031065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (A006206 (n + 1)) (A052549 n)

end

end A031367.P8871217384478031065

namespace A031367

/-- `(n+1)*and(A006206(n+1), A052549(n))` -/
def P8871217384478031065.Spec : Prop :=
  ∀ n, P8871217384478031065.a n = A031367 (n + 1)

end A031367

/-! ## A031367.P17567061658036449735

`(n+1)*and(A006206(n+1), A047859(n))`
-/

namespace A031367.P17567061658036449735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (A006206 (n + 1)) (A047859 n)

end

end A031367.P17567061658036449735

namespace A031367

/-- `(n+1)*and(A006206(n+1), A047859(n))` -/
def P17567061658036449735.Spec : Prop :=
  ∀ n, P17567061658036449735.a n = A031367 (n + 1)

end A031367

/-! ## A031367.P632215322382565805

`(n+1)*A348422(∑[n]+1)`
-/

namespace A031367.P632215322382565805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A348422 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A031367.P632215322382565805

namespace A031367

/-- `(n+1)*A348422(∑[n]+1)` -/
def P632215322382565805.Spec : Prop :=
  ∀ n, P632215322382565805.a n = A031367 (n + 1)

end A031367

/-!
# A031368: Odd-indexed primes: a(n) = prime(2n-1).

The programs for A031368, the canonical program `A031368.P13740709942306963407` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031368 has offset 1).

The definition of A031368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*n+1)` (program `A031368.P13740709942306963407`, by `A031368.P13740709942306963407.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031368.P3529547152887844414

`A219603(n+1)/A000040(n+1)`
-/

namespace A031368.P3529547152887844414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219603 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A031368.P3529547152887844414

namespace A031368

/-- `A219603(n+1)/A000040(n+1)` -/
def P3529547152887844414.Spec : Prop :=
  ∀ n, P3529547152887844414.a n = (A031368 (n + 1) : ℚ)

end A031368

/-! ## A031368.P13740709942306963407

`A000040(2*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031368

/-- `A000040(2*n+1)` -/
def P13740709942306963407.Spec : Prop :=
  ∀ n, P13740709942306963407.a n = A031368 (n + 1)

theorem P13740709942306963407.correct : P13740709942306963407.Spec := by
  intro n
  simp only [A031368, Nat.add_sub_cancel]

end A031368

/-! ## A031368.P14889722970412698262

`A000040(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A031368.P14889722970412698262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1) - 1)

end

end A031368.P14889722970412698262

namespace A031368

/-- `A000040(2*(n+1)-1)` -/
def P14889722970412698262.Spec : Prop :=
  ∀ n, P14889722970412698262.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P12524562229868360695

`A001748(2*n+1)/3`
-/

namespace A031368.P12524562229868360695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (2 * n + 1) : ℚ) / 3

end

end A031368.P12524562229868360695

namespace A031368

/-- `A001748(2*n+1)/3` -/
def P12524562229868360695.Spec : Prop :=
  ∀ n, P12524562229868360695.a n = (A031368 (n + 1) : ℚ)

theorem P12524562229868360695.correct : P12524562229868360695.Spec := by
  intro n
  simp only [A031368, Nat.add_sub_cancel, A031368.P12524562229868360695.a, A031368.P13740709942306963407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031368

/-! ## A031368.P8788639652936612682

`A001749(2*n+1)/4`
-/

namespace A031368.P8788639652936612682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (2 * n + 1) : ℚ) / 4

end

end A031368.P8788639652936612682

namespace A031368

/-- `A001749(2*n+1)/4` -/
def P8788639652936612682.Spec : Prop :=
  ∀ n, P8788639652936612682.a n = (A031368 (n + 1) : ℚ)

theorem P8788639652936612682.correct : P8788639652936612682.Spec := by
  intro n
  simp only [A031368, Nat.add_sub_cancel, A031368.P8788639652936612682.a, A031368.P13740709942306963407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031368

/-! ## A031368.P12690809390862955640

`A109723(n)-A109722(n)`
-/

namespace A031368.P12690809390862955640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - A109722 n

end

end A031368.P12690809390862955640

namespace A031368

/-- `A109723(n)-A109722(n)` -/
def P12690809390862955640.Spec : Prop :=
  ∀ n, P12690809390862955640.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P12705426705939949881

`A135275(n+1)+A088680(n+1)`
-/

namespace A031368.P12705426705939949881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135275 (n + 1) + A088680 (n + 1)

end

end A031368.P12705426705939949881

namespace A031368

/-- `A135275(n+1)+A088680(n+1)` -/
def P12705426705939949881.Spec : Prop :=
  ∀ n, P12705426705939949881.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P18256871089129484270

`A031215(n+1)-A078584(n+1)`
-/

namespace A031368.P18256871089129484270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A078584 (n + 1)

end

end A031368.P18256871089129484270

namespace A031368

/-- `A031215(n+1)-A078584(n+1)` -/
def P18256871089129484270.Spec : Prop :=
  ∀ n, P18256871089129484270.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P4754235840854348500

`A100479(n+1)-A031215(n+1)`
-/

namespace A031368.P4754235840854348500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A031215 (n + 1)

end

end A031368.P4754235840854348500

namespace A031368

/-- `A100479(n+1)-A031215(n+1)` -/
def P4754235840854348500.Spec : Prop :=
  ∀ n, P4754235840854348500.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P12745987225219388343

`A092163(n+1)-A135274(n+1)`
-/

namespace A031368.P12745987225219388343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A135274 (n + 1)

end

end A031368.P12745987225219388343

namespace A031368

/-- `A092163(n+1)-A135274(n+1)` -/
def P12745987225219388343.Spec : Prop :=
  ∀ n, P12745987225219388343.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P14484930133070165988

`A135277(n+1)-A092163(n+1)`
-/

namespace A031368.P14484930133070165988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (n + 1) - A092163 (n + 1)

end

end A031368.P14484930133070165988

namespace A031368

/-- `A135277(n+1)-A092163(n+1)` -/
def P14484930133070165988.Spec : Prop :=
  ∀ n, P14484930133070165988.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P4151171213380132981

`A089581(n+1)/A031215(n+1)`
-/

namespace A031368.P4151171213380132981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089581 (n + 1) : ℚ) / (A031215 (n + 1) : ℚ)

end

end A031368.P4151171213380132981

namespace A031368

/-- `A089581(n+1)/A031215(n+1)` -/
def P4151171213380132981.Spec : Prop :=
  ∀ n, P4151171213380132981.a n = (A031368 (n + 1) : ℚ)

end A031368

/-! ## A031368.P339961994833765192

`A007797(n+1)%A031215(n+1)`
-/

namespace A031368.P339961994833765192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007797 (n + 1)) (A031215 (n + 1))

end

end A031368.P339961994833765192

namespace A031368

/-- `A007797(n+1)%A031215(n+1)` -/
def P339961994833765192.Spec : Prop :=
  ∀ n, P339961994833765192.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P1130470725838711374

`gcd(A089581(n+1), A219603(n+1))`
-/

namespace A031368.P1130470725838711374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089581 (n + 1)) (A219603 (n + 1))

end

end A031368.P1130470725838711374

namespace A031368

/-- `gcd(A089581(n+1), A219603(n+1))` -/
def P1130470725838711374.Spec : Prop :=
  ∀ n, (P1130470725838711374.a n : ℤ) = A031368 (n + 1)

end A031368

/-! ## A031368.P16605933475419510332

`p?[A324812(n+1)]`
-/

namespace A031368.P16605933475419510332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031368.P16605933475419510332

namespace A031368

/-- `p?[A324812(n+1)]` -/
def P16605933475419510332.Spec : Prop :=
  ∀ n, P16605933475419510332.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P12595444321463751221

`A156037(2*n+1)+1`
-/

namespace A031368.P12595444321463751221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (2 * n + 1) + 1

end

end A031368.P12595444321463751221

namespace A031368

/-- `A156037(2*n+1)+1` -/
def P12595444321463751221.Spec : Prop :=
  ∀ n, P12595444321463751221.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P13357764823151172951

`p?[p?[2*n+1]-char[2*n]]`
-/

namespace A031368.P13357764823151172951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031368.P13357764823151172951

namespace A031368

/-- `p?[p?[2*n+1]-char[2*n]]` -/
def P13357764823151172951.Spec : Prop :=
  ∀ n, P13357764823151172951.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P4726503819315496003

`p?[xor(p?[2*n+1], char[2*n])]`
-/

namespace A031368.P4726503819315496003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031368.P4726503819315496003

namespace A031368

/-- `p?[xor(p?[2*n+1], char[2*n])]` -/
def P4726503819315496003.Spec : Prop :=
  ∀ n, (P4726503819315496003.a n : ℤ) = A031368 (n + 1)

end A031368

/-! ## A031368.P8405399099794761066

`A045344(A004277(n))`
-/

namespace A031368.P8405399099794761066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A004277 n).toNat

end

end A031368.P8405399099794761066

namespace A031368

/-- `A045344(A004277(n))` -/
def P8405399099794761066.Spec : Prop :=
  ∀ n, P8405399099794761066.a n = A031368 (n + 1)

end A031368

/-! ## A031368.P11843212621770630478

`A213642(Δ[n²])`
-/

namespace A031368.P11843212621770630478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031368.P11843212621770630478

namespace A031368

/-- `A213642(Δ[n²])` -/
def P11843212621770630478.Spec : Prop :=
  ∀ n, P11843212621770630478.a n = A031368 (n + 1)

end A031368

/-!
# A031369: a(n) = prime(3n-1).

The programs for A031369, the canonical program `A031369.P7838803522888195590` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031369 has offset 1).

The definition of A031369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1)-1)` (program `A031369.P7838803522888195590`, by `A031369.P7838803522888195590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031369.P7838803522888195590

`A000040(3*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031369

/-- `A000040(3*(n+1)-1)` -/
def P7838803522888195590.Spec : Prop :=
  ∀ n, P7838803522888195590.a n = A031369 (n + 1)

theorem P7838803522888195590.correct : P7838803522888195590.Spec := by
  intro n
  simp only [A031369, Nat.add_sub_cancel]

end A031369

/-! ## A031369.P4790533930488143348

`A247665(A248387(3*n+2))`
-/

namespace A031369.P4790533930488143348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 (3 * n + 2)).toNat

end

end A031369.P4790533930488143348

namespace A031369

/-- `A247665(A248387(3*n+2))` -/
def P4790533930488143348.Spec : Prop :=
  ∀ n, P4790533930488143348.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P15835619253201267633

`∪[A031372(n+1), A031393(n+1)]`
-/

namespace A031369.P15835619253201267633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031369.P15835619253201267633

namespace A031369

/-- `∪[A031372(n+1), A031393(n+1)]` -/
def P15835619253201267633.Spec : Prop :=
  ∀ n, (P15835619253201267633.a n : ℤ) = A031369 (n + 1)

end A031369

/-! ## A031369.P13637420023791315275

`A007504(3*n+2)-A007504(3*n+1)`
-/

namespace A031369.P13637420023791315275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (3 * n + 2) - A007504 (3 * n + 1)

end

end A031369.P13637420023791315275

namespace A031369

/-- `A007504(3*n+2)-A007504(3*n+1)` -/
def P13637420023791315275.Spec : Prop :=
  ∀ n, P13637420023791315275.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P4071911669952117213

`A008347(3*n+1)+A008347(A016789(n))`
-/

namespace A031369.P4071911669952117213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (3 * n + 1) + A008347 (A016789 n).toNat

end

end A031369.P4071911669952117213

namespace A031369

/-- `A008347(3*n+1)+A008347(A016789(n))` -/
def P4071911669952117213.Spec : Prop :=
  ∀ n, P4071911669952117213.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P11127550677732254982

`A055670(3*n+2)-1`
-/

namespace A031369.P11127550677732254982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (3 * n + 2) - 1

end

end A031369.P11127550677732254982

namespace A031369

/-- `A055670(3*n+2)-1` -/
def P11127550677732254982.Spec : Prop :=
  ∀ n, P11127550677732254982.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P6921550845269697214

`A001748(3*n+2)/3`
-/

namespace A031369.P6921550845269697214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (3 * n + 2) : ℚ) / 3

end

end A031369.P6921550845269697214

namespace A031369

/-- `A001748(3*n+2)/3` -/
def P6921550845269697214.Spec : Prop :=
  ∀ n, P6921550845269697214.a n = (A031369 (n + 1) : ℚ)

end A031369

/-! ## A031369.P4720246091769913519

`A001749(3*n+2)/4`
-/

namespace A031369.P4720246091769913519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (3 * n + 2) : ℚ) / 4

end

end A031369.P4720246091769913519

namespace A031369

/-- `A001749(3*n+2)/4` -/
def P4720246091769913519.Spec : Prop :=
  ∀ n, P4720246091769913519.a n = (A031369 (n + 1) : ℚ)

end A031369

/-! ## A031369.P1547505847191777771

`A065091(3*n+1)`
-/

namespace A031369.P1547505847191777771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 1)

end

end A031369.P1547505847191777771

namespace A031369

/-- `A065091(3*n+1)` -/
def P1547505847191777771.Spec : Prop :=
  ∀ n, P1547505847191777771.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P9025760404032732882

`A048974(3*n+1)-2`
-/

namespace A031369.P9025760404032732882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (3 * n + 1) - 2

end

end A031369.P9025760404032732882

namespace A031369

/-- `A048974(3*n+1)-2` -/
def P9025760404032732882.Spec : Prop :=
  ∀ n, P9025760404032732882.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P13805656551743594321

`or(1, A045319(3*n+1))`
-/

namespace A031369.P13805656551743594321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045319 (3 * n + 1))

end

end A031369.P13805656551743594321

namespace A031369

/-- `or(1, A045319(3*n+1))` -/
def P13805656551743594321.Spec : Prop :=
  ∀ n, P13805656551743594321.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P12589168105815616942

`A004139(A008486(n))`
-/

namespace A031369.P12589168105815616942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008486 n).toNat

end

end A031369.P12589168105815616942

namespace A031369

/-- `A004139(A008486(n))` -/
def P12589168105815616942.Spec : Prop :=
  ∀ n, P12589168105815616942.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P5962614795217389296

`A045319(A008486(n)+1)`
-/

namespace A031369.P5962614795217389296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008486 n + 1).toNat

end

end A031369.P5962614795217389296

namespace A031369

/-- `A045319(A008486(n)+1)` -/
def P5962614795217389296.Spec : Prop :=
  ∀ n, P5962614795217389296.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P5665285148481373681

`A045319(A033627(n+2))`
-/

namespace A031369.P5665285148481373681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A033627 (n + 2)).toNat

end

end A031369.P5665285148481373681

namespace A031369

/-- `A045319(A033627(n+2))` -/
def P5665285148481373681.Spec : Prop :=
  ∀ n, P5665285148481373681.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P4587066332714457641

`A004139(A004277(n)+n)`
-/

namespace A031369.P4587066332714457641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A004277 n + (n : ℤ)).toNat

end

end A031369.P4587066332714457641

namespace A031369

/-- `A004139(A004277(n)+n)` -/
def P4587066332714457641.Spec : Prop :=
  ∀ n, P4587066332714457641.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P2150594194403681926

`A004139(A008574(n)-n)`
-/

namespace A031369.P2150594194403681926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008574 n - (n : ℤ)).toNat

end

end A031369.P2150594194403681926

namespace A031369

/-- `A004139(A008574(n)-n)` -/
def P2150594194403681926.Spec : Prop :=
  ∀ n, P2150594194403681926.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P13833289809209273904

`A008578(3*(n+1))`
-/

namespace A031369.P13833289809209273904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (3 * (n + 1))

end

end A031369.P13833289809209273904

namespace A031369

/-- `A008578(3*(n+1))` -/
def P13833289809209273904.Spec : Prop :=
  ∀ n, P13833289809209273904.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P16247574491005608601

`A182986(3*(n+1))`
-/

namespace A031369.P16247574491005608601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (3 * (n + 1))

end

end A031369.P16247574491005608601

namespace A031369

/-- `A182986(3*(n+1))` -/
def P16247574491005608601.Spec : Prop :=
  ∀ n, P16247574491005608601.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P10856909923563365925

`A006005(3*n+2)`
-/

namespace A031369.P10856909923563365925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (3 * n + 2)

end

end A031369.P10856909923563365925

namespace A031369

/-- `A006005(3*n+2)` -/
def P10856909923563365925.Spec : Prop :=
  ∀ n, P10856909923563365925.a n = A031369 (n + 1)

end A031369

/-! ## A031369.P17453236254492462579

`A161847(3*n+2)`
-/

namespace A031369.P17453236254492462579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (3 * n + 2)

end

end A031369.P17453236254492462579

namespace A031369

/-- `A161847(3*n+2)` -/
def P17453236254492462579.Spec : Prop :=
  ∀ n, P17453236254492462579.a n = A031369 (n + 1)

end A031369

/-!
# A031370: a(n) = prime(4n-1).

The programs for A031370, the canonical program `A031370.P11220492069330290192` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031370 has offset 1).

The definition of A031370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(4*(n+1)-1)` (program `A031370.P11220492069330290192`, by `A031370.P11220492069330290192.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031370.P11220492069330290192

`A000040(4*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031370

/-- `A000040(4*(n+1)-1)` -/
def P11220492069330290192.Spec : Prop :=
  ∀ n, P11220492069330290192.a n = A031370 (n + 1)

theorem P11220492069330290192.correct : P11220492069330290192.Spec := by
  intro n
  simp only [A031370, Nat.add_sub_cancel]

end A031370

/-! ## A031370.P2626228354564712356

`∪[A031374(n+1), A031908(n+1)]`
-/

namespace A031370.P2626228354564712356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031370.P2626228354564712356

namespace A031370

/-- `∪[A031374(n+1), A031908(n+1)]` -/
def P2626228354564712356.Spec : Prop :=
  ∀ n, (P2626228354564712356.a n : ℤ) = A031370 (n + 1)

end A031370

/-! ## A031370.P9115598881235146625

`A060192(Δ[n²])`
-/

namespace A031370.P9115598881235146625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031370.P9115598881235146625

namespace A031370

/-- `A060192(Δ[n²])` -/
def P9115598881235146625.Spec : Prop :=
  ∀ n, P9115598881235146625.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P14585030631251180812

`A031368(2*(n+1))`
-/

namespace A031370.P14585030631251180812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (2 * (n + 1))

end

end A031370.P14585030631251180812

namespace A031370

/-- `A031368(2*(n+1))` -/
def P14585030631251180812.Spec : Prop :=
  ∀ n, P14585030631251180812.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P16872373349052252290

`∩[A031368(n+1), A060192(n)]`
-/

namespace A031370.P16872373349052252290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031370.P16872373349052252290

namespace A031370

/-- `∩[A031368(n+1), A060192(n)]` -/
def P16872373349052252290.Spec : Prop :=
  ∀ n, (P16872373349052252290.a n : ℤ) = A031370 (n + 1)

end A031370

/-! ## A031370.P15993094932759464060

`∩[A324812(n+1), A060192(n)]`
-/

namespace A031370.P15993094932759464060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031370.P15993094932759464060

namespace A031370

/-- `∩[A324812(n+1), A060192(n)]` -/
def P15993094932759464060.Spec : Prop :=
  ∀ n, (P15993094932759464060.a n : ℤ) = A031370 (n + 1)

end A031370

/-! ## A031370.P6904494360243660198

`A108719(A008574(n))`
-/

namespace A031370.P6904494360243660198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008574 n).toNat

end

end A031370.P6904494360243660198

namespace A031370

/-- `A108719(A008574(n))` -/
def P6904494360243660198.Spec : Prop :=
  ∀ n, P6904494360243660198.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P7599584863265381943

`A108719(A008486(n)+n)`
-/

namespace A031370.P7599584863265381943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008486 n + (n : ℤ)).toNat

end

end A031370.P7599584863265381943

namespace A031370

/-- `A108719(A008486(n)+n)` -/
def P7599584863265381943.Spec : Prop :=
  ∀ n, P7599584863265381943.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P18275632890029361372

`A008578(4*(n+1))`
-/

namespace A031370.P18275632890029361372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (4 * (n + 1))

end

end A031370.P18275632890029361372

namespace A031370

/-- `A008578(4*(n+1))` -/
def P18275632890029361372.Spec : Prop :=
  ∀ n, P18275632890029361372.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P4290519055035905540

`A171525(4*(n+1))`
-/

namespace A031370.P4290519055035905540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (4 * (n + 1))

end

end A031370.P4290519055035905540

namespace A031370

/-- `A171525(4*(n+1))` -/
def P4290519055035905540.Spec : Prop :=
  ∀ n, P4290519055035905540.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P1792058136880150662

`A175787(4*(n+1))`
-/

namespace A031370.P1792058136880150662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (4 * (n + 1))

end

end A031370.P1792058136880150662

namespace A031370

/-- `A175787(4*(n+1))` -/
def P1792058136880150662.Spec : Prop :=
  ∀ n, P1792058136880150662.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P12265127538164835053

`A182986(4*(n+1))`
-/

namespace A031370.P12265127538164835053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (4 * (n + 1))

end

end A031370.P12265127538164835053

namespace A031370

/-- `A182986(4*(n+1))` -/
def P12265127538164835053.Spec : Prop :=
  ∀ n, P12265127538164835053.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P6278603736380797635

`A045344(4*n+2)`
-/

namespace A031370.P6278603736380797635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (4 * n + 2)

end

end A031370.P6278603736380797635

namespace A031370

/-- `A045344(4*n+2)` -/
def P6278603736380797635.Spec : Prop :=
  ∀ n, P6278603736380797635.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P15071744995981286606

`A065091(4*n+2)`
-/

namespace A031370.P15071744995981286606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (4 * n + 2)

end

end A031370.P15071744995981286606

namespace A031370

/-- `A065091(4*n+2)` -/
def P15071744995981286606.Spec : Prop :=
  ∀ n, P15071744995981286606.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P10344901630052201043

`A140475(4*n+2)`
-/

namespace A031370.P10344901630052201043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (4 * n + 2)

end

end A031370.P10344901630052201043

namespace A031370

/-- `A140475(4*n+2)` -/
def P10344901630052201043.Spec : Prop :=
  ∀ n, P10344901630052201043.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P4668386819044997417

`A093515(8*n+4)`
-/

namespace A031370.P4668386819044997417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (8 * n + 4)

end

end A031370.P4668386819044997417

namespace A031370

/-- `A093515(8*n+4)` -/
def P4668386819044997417.Spec : Prop :=
  ∀ n, P4668386819044997417.a n = A031370 (n + 1)

end A031370

/-! ## A031370.P11318987163455896579

`sqrt(A280076(4*(n+1)))`
-/

namespace A031370.P11318987163455896579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (4 * (n + 1)) : ℝ)

end

end A031370.P11318987163455896579

namespace A031370

/-- `sqrt(A280076(4*(n+1)))` -/
def P11318987163455896579.Spec : Prop :=
  ∀ n, P11318987163455896579.a n = (A031370 (n + 1) : ℝ)

end A031370

/-! ## A031370.P7555615375252353610

`A006005(3*(n+1)+n)`
-/

namespace A031370.P7555615375252353610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (3 * (n + 1) + n)

end

end A031370.P7555615375252353610

namespace A031370

/-- `A006005(3*(n+1)+n)` -/
def P7555615375252353610.Spec : Prop :=
  ∀ n, P7555615375252353610.a n = A031370 (n + 1)

end A031370

/-!
# A031371: a(n) = prime(5n-1).

The programs for A031371, the canonical program `A031371.P523496209099209207` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031371 has offset 1).

The definition of A031371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(5*(n+1)-1)` (program `A031371.P523496209099209207`, by `A031371.P523496209099209207.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031371.P523496209099209207

`A000040(5*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031371

/-- `A000040(5*(n+1)-1)` -/
def P523496209099209207.Spec : Prop :=
  ∀ n, P523496209099209207.a n = A031371 (n + 1)

theorem P523496209099209207.correct : P523496209099209207.Spec := by
  intro n
  simp only [A031371, Nat.add_sub_cancel]

end A031371

/-! ## A031371.P13001049561363545808

`∪[A031376(n+1), A031914(n+1)]`
-/

namespace A031371.P13001049561363545808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031371.P13001049561363545808

namespace A031371

/-- `∪[A031376(n+1), A031914(n+1)]` -/
def P13001049561363545808.Spec : Prop :=
  ∀ n, (P13001049561363545808.a n : ℤ) = A031371 (n + 1)

end A031371

/-! ## A031371.P11813742216072020672

`A008578(5*(n+1))`
-/

namespace A031371.P11813742216072020672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (5 * (n + 1))

end

end A031371.P11813742216072020672

namespace A031371

/-- `A008578(5*(n+1))` -/
def P11813742216072020672.Spec : Prop :=
  ∀ n, P11813742216072020672.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P17805162871286606962

`A116974(5*(n+1))`
-/

namespace A031371.P17805162871286606962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (5 * (n + 1))

end

end A031371.P17805162871286606962

namespace A031371

/-- `A116974(5*(n+1))` -/
def P17805162871286606962.Spec : Prop :=
  ∀ n, P17805162871286606962.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P15920470496392250752

`A171525(5*(n+1))`
-/

namespace A031371.P15920470496392250752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (5 * (n + 1))

end

end A031371.P15920470496392250752

namespace A031371

/-- `A171525(5*(n+1))` -/
def P15920470496392250752.Spec : Prop :=
  ∀ n, P15920470496392250752.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P10355491248074076901

`A175787(5*(n+1))`
-/

namespace A031371.P10355491248074076901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (5 * (n + 1))

end

end A031371.P10355491248074076901

namespace A031371

/-- `A175787(5*(n+1))` -/
def P10355491248074076901.Spec : Prop :=
  ∀ n, P10355491248074076901.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P18004727026135398852

`A182986(5*(n+1))`
-/

namespace A031371.P18004727026135398852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (5 * (n + 1))

end

end A031371.P18004727026135398852

namespace A031371

/-- `A182986(5*(n+1))` -/
def P18004727026135398852.Spec : Prop :=
  ∀ n, P18004727026135398852.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P9492995724726989915

`A045319(5*n+3)`
-/

namespace A031371.P9492995724726989915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (5 * n + 3)

end

end A031371.P9492995724726989915

namespace A031371

/-- `A045319(5*n+3)` -/
def P9492995724726989915.Spec : Prop :=
  ∀ n, P9492995724726989915.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P1377547592619785877

`A065091(5*n+3)`
-/

namespace A031371.P1377547592619785877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (5 * n + 3)

end

end A031371.P1377547592619785877

namespace A031371

/-- `A065091(5*n+3)` -/
def P1377547592619785877.Spec : Prop :=
  ∀ n, P1377547592619785877.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P17212930011181569669

`sqrt(A280076(5*(n+1)))`
-/

namespace A031371.P17212930011181569669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (5 * (n + 1)) : ℝ)

end

end A031371.P17212930011181569669

namespace A031371

/-- `sqrt(A280076(5*(n+1)))` -/
def P17212930011181569669.Spec : Prop :=
  ∀ n, P17212930011181569669.a n = (A031371 (n + 1) : ℝ)

end A031371

/-! ## A031371.P12152093714259231675

`A006005(4*(n+1)+n)`
-/

namespace A031371.P12152093714259231675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (4 * (n + 1) + n)

end

end A031371.P12152093714259231675

namespace A031371

/-- `A006005(4*(n+1)+n)` -/
def P12152093714259231675.Spec : Prop :=
  ∀ n, P12152093714259231675.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P7163392742483220030

`A215848(4*n+2+n)`
-/

namespace A031371.P7163392742483220030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (4 * n + 2 + n)

end

end A031371.P7163392742483220030

namespace A031371

/-- `A215848(4*n+2+n)` -/
def P7163392742483220030.Spec : Prop :=
  ∀ n, P7163392742483220030.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P14862813974152931620

`A040976(3*n+2*(n+2))+2`
-/

namespace A031371.P14862813974152931620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (3 * n + 2 * (n + 2)) + 2

end

end A031371.P14862813974152931620

namespace A031371

/-- `A040976(3*n+2*(n+2))+2` -/
def P14862813974152931620.Spec : Prop :=
  ∀ n, P14862813974152931620.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P439866285471744364

`A004139(A016873(n))`
-/

namespace A031371.P439866285471744364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A016873 n).toNat

end

end A031371.P439866285471744364

namespace A031371

/-- `A004139(A016873(n))` -/
def P439866285471744364.Spec : Prop :=
  ∀ n, P439866285471744364.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P14753960748487686431

`A108719(A008706(n)+1)`
-/

namespace A031371.P14753960748487686431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008706 n + 1).toNat

end

end A031371.P14753960748487686431

namespace A031371

/-- `A108719(A008706(n)+1)` -/
def P14753960748487686431.Spec : Prop :=
  ∀ n, P14753960748487686431.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P864292994266493550

`A004139(A016885(n)-1)`
-/

namespace A031371.P864292994266493550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A016885 n - 1).toNat

end

end A031371.P864292994266493550

namespace A031371

/-- `A004139(A016885(n)-1)` -/
def P864292994266493550.Spec : Prop :=
  ∀ n, P864292994266493550.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P3894894023959413208

`A004139(A017317(n)/2)`
-/

namespace A031371.P3894894023959413208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.roundAway ((A017317 n : ℚ) / 2)).toNat

end

end A031371.P3894894023959413208

namespace A031371

/-- `A004139(A017317(n)/2)` -/
def P3894894023959413208.Spec : Prop :=
  ∀ n, P3894894023959413208.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P16142193991662956558

`A004139(A016825(n)+n)`
-/

namespace A031371.P16142193991662956558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A016825 n + (n : ℤ)).toNat

end

end A031371.P16142193991662956558

namespace A031371

/-- `A004139(A016825(n)+n)` -/
def P16142193991662956558.Spec : Prop :=
  ∀ n, P16142193991662956558.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P14596373466383474616

`A004139(A016933(n)-n)`
-/

namespace A031371.P14596373466383474616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A016933 n - (n : ℤ)).toNat

end

end A031371.P14596373466383474616

namespace A031371

/-- `A004139(A016933(n)-n)` -/
def P14596373466383474616.Spec : Prop :=
  ∀ n, P14596373466383474616.a n = A031371 (n + 1)

end A031371

/-! ## A031371.P16619056710527781878

`A108719(A271114(n)-n)`
-/

namespace A031371.P16619056710527781878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A271114 n - (n : ℤ)).toNat

end

end A031371.P16619056710527781878

namespace A031371

/-- `A108719(A271114(n)-n)` -/
def P16619056710527781878.Spec : Prop :=
  ∀ n, P16619056710527781878.a n = A031371 (n + 1)

end A031371

/-!
# A031372: a(n) = prime(6*n - 1).

The programs for A031372, the canonical program `A031372.P15207058253949471696` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031372 has offset 1).

The definition of A031372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(6*(n+1)-1)` (program `A031372.P15207058253949471696`, by `A031372.P15207058253949471696.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031372.P15207058253949471696

`A000040(6*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031372

/-- `A000040(6*(n+1)-1)` -/
def P15207058253949471696.Spec : Prop :=
  ∀ n, P15207058253949471696.a n = A031372 (n + 1)

theorem P15207058253949471696.correct : P15207058253949471696.Spec := by
  intro n
  simp only [A031372, Nat.add_sub_cancel]

end A031372

/-! ## A031372.P16782165588753498518

`A373789(Δ[3*(n+1)²])`
-/

namespace A031372.P16782165588753498518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031372.P16782165588753498518

namespace A031372

/-- `A373789(Δ[3*(n+1)²])` -/
def P16782165588753498518.Spec : Prop :=
  ∀ n, P16782165588753498518.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P9671553406879512535

`A031369(2*(n+1))`
-/

namespace A031372.P9671553406879512535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (2 * (n + 1))

end

end A031372.P9671553406879512535

namespace A031372

/-- `A031369(2*(n+1))` -/
def P9671553406879512535.Spec : Prop :=
  ∀ n, P9671553406879512535.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P18333195443396175643

`A091735(2*(n+1))`
-/

namespace A031372.P18333195443396175643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 (2 * (n + 1))

end

end A031372.P18333195443396175643

namespace A031372

/-- `A091735(2*(n+1))` -/
def P18333195443396175643.Spec : Prop :=
  ∀ n, P18333195443396175643.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P8974438276241682544

`∩[A031369(n+1), A091735(n+1)]`
-/

namespace A031372.P8974438276241682544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031372.P8974438276241682544

namespace A031372

/-- `∩[A031369(n+1), A091735(n+1)]` -/
def P8974438276241682544.Spec : Prop :=
  ∀ n, (P8974438276241682544.a n : ℤ) = A031372 (n + 1)

end A031372

/-! ## A031372.P4567033316827016996

`A031368(3*(n+1))`
-/

namespace A031372.P4567033316827016996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (3 * (n + 1))

end

end A031372.P4567033316827016996

namespace A031372

/-- `A031368(3*(n+1))` -/
def P4567033316827016996.Spec : Prop :=
  ∀ n, P4567033316827016996.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P14631719737969930019

`A001749(6*n+5)/4`
-/

namespace A031372.P14631719737969930019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (6 * n + 5) : ℚ) / 4

end

end A031372.P14631719737969930019

namespace A031372

/-- `A001749(6*n+5)/4` -/
def P14631719737969930019.Spec : Prop :=
  ∀ n, P14631719737969930019.a n = (A031372 (n + 1) : ℚ)

end A031372

/-! ## A031372.P15958644603266124941

`∩[A031368(n+1), A031369(n+1)]`
-/

namespace A031372.P15958644603266124941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031372.P15958644603266124941

namespace A031372

/-- `∩[A031368(n+1), A031369(n+1)]` -/
def P15958644603266124941.Spec : Prop :=
  ∀ n, (P15958644603266124941.a n : ℤ) = A031372 (n + 1)

end A031372

/-! ## A031372.P3903343825542903217

`∩[A031369(n+1), A324812(n+1)]`
-/

namespace A031372.P3903343825542903217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031372.P3903343825542903217

namespace A031372

/-- `∩[A031369(n+1), A324812(n+1)]` -/
def P3903343825542903217.Spec : Prop :=
  ∀ n, (P3903343825542903217.a n : ℤ) = A031372 (n + 1)

end A031372

/-! ## A031372.P250751094206612091

`A156037(6*n+5)+1`
-/

namespace A031372.P250751094206612091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (6 * n + 5) + 1

end

end A031372.P250751094206612091

namespace A031372

/-- `A156037(6*n+5)+1` -/
def P250751094206612091.Spec : Prop :=
  ∀ n, P250751094206612091.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P13628638851976566682

`A004139(6*n+3)`
-/

namespace A031372.P13628638851976566682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (6 * n + 3)

end

end A031372.P13628638851976566682

namespace A031372

/-- `A004139(6*n+3)` -/
def P13628638851976566682.Spec : Prop :=
  ∀ n, P13628638851976566682.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P1383919561359597235

`A215848(6*n+3)`
-/

namespace A031372.P1383919561359597235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (6 * n + 3)

end

end A031372.P1383919561359597235

namespace A031372

/-- `A215848(6*n+3)` -/
def P1383919561359597235.Spec : Prop :=
  ∀ n, P1383919561359597235.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P6389104320048643222

`A045319(A016957(n))`
-/

namespace A031372.P6389104320048643222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A016957 n).toNat

end

end A031372.P6389104320048643222

namespace A031372

/-- `A045319(A016957(n))` -/
def P6389104320048643222.Spec : Prop :=
  ∀ n, P6389104320048643222.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P369716490981985581

`A140461(A016933(n))`
-/

namespace A031372.P369716490981985581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (A016933 n).toNat

end

end A031372.P369716490981985581

namespace A031372

/-- `A140461(A016933(n))` -/
def P369716490981985581.Spec : Prop :=
  ∀ n, P369716490981985581.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P1934761107147132663

`A045344(A016933(n)+2)`
-/

namespace A031372.P1934761107147132663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A016933 n + 2).toNat

end

end A031372.P1934761107147132663

namespace A031372

/-- `A045344(A016933(n)+2)` -/
def P1934761107147132663.Spec : Prop :=
  ∀ n, P1934761107147132663.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P17409795379538593495

`A045319(A016969(n)-1)`
-/

namespace A031372.P17409795379538593495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A016969 n - 1).toNat

end

end A031372.P17409795379538593495

namespace A031372

/-- `A045319(A016969(n)-1)` -/
def P17409795379538593495.Spec : Prop :=
  ∀ n, P17409795379538593495.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P5260487771515101956

`A045344(2*A016789(n))`
-/

namespace A031372.P5260487771515101956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (2 * A016789 n).toNat

end

end A031372.P5260487771515101956

namespace A031372

/-- `A045344(2*A016789(n))` -/
def P5260487771515101956.Spec : Prop :=
  ∀ n, P5260487771515101956.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P2278238188340905664

`A065091(2*A016789(n))`
-/

namespace A031372.P2278238188340905664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * A016789 n).toNat

end

end A031372.P2278238188340905664

namespace A031372

/-- `A065091(2*A016789(n))` -/
def P2278238188340905664.Spec : Prop :=
  ∀ n, P2278238188340905664.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P13938747820972208213

`A045319(A016897(n)+n)`
-/

namespace A031372.P13938747820972208213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A016897 n + (n : ℤ)).toNat

end

end A031372.P13938747820972208213

namespace A031372

/-- `A045319(A016897(n)+n)` -/
def P13938747820972208213.Spec : Prop :=
  ∀ n, P13938747820972208213.a n = A031372 (n + 1)

end A031372

/-! ## A031372.P7636949440075335775

`A045319(A017029(n)-n)`
-/

namespace A031372.P7636949440075335775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017029 n - (n : ℤ)).toNat

end

end A031372.P7636949440075335775

namespace A031372

/-- `A045319(A017029(n)-n)` -/
def P7636949440075335775.Spec : Prop :=
  ∀ n, P7636949440075335775.a n = A031372 (n + 1)

end A031372

/-!
# A031373: a(n) = prime(7n-1).

The programs for A031373, the canonical program `A031373.P15475474767460795559` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031373 has offset 1).

The definition of A031373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(7*(n+1)-1)` (program `A031373.P15475474767460795559`, by `A031373.P15475474767460795559.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031373.P15475474767460795559

`A000040(7*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031373

/-- `A000040(7*(n+1)-1)` -/
def P15475474767460795559.Spec : Prop :=
  ∀ n, P15475474767460795559.a n = A031373 (n + 1)

theorem P15475474767460795559.correct : P15475474767460795559.Spec := by
  intro n
  simp only [A031373, Nat.add_sub_cancel]

end A031373

/-! ## A031373.P14820799205756807778

`A156037(7*n+6)+1`
-/

namespace A031373.P14820799205756807778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (7 * n + 6) + 1

end

end A031373.P14820799205756807778

namespace A031373

/-- `A156037(7*n+6)+1` -/
def P14820799205756807778.Spec : Prop :=
  ∀ n, P14820799205756807778.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P2681437466347562382

`A215848(6*n+4+n)`
-/

namespace A031373.P2681437466347562382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (6 * n + 4 + n)

end

end A031373.P2681437466347562382

namespace A031373

/-- `A215848(6*n+4+n)` -/
def P2681437466347562382.Spec : Prop :=
  ∀ n, P2681437466347562382.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P7202120671981322716

`A004139(A017029(n))`
-/

namespace A031373.P7202120671981322716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A017029 n).toNat

end

end A031373.P7202120671981322716

namespace A031373

/-- `A004139(A017029(n))` -/
def P7202120671981322716.Spec : Prop :=
  ∀ n, P7202120671981322716.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P11164450684542764263

`A108719(A017017(n))`
-/

namespace A031373.P11164450684542764263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017017 n).toNat

end

end A031373.P11164450684542764263

namespace A031373

/-- `A108719(A017017(n))` -/
def P11164450684542764263.Spec : Prop :=
  ∀ n, P11164450684542764263.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P15110022689816844228

`A004139(A017017(n)+1)`
-/

namespace A031373.P15110022689816844228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A017017 n + 1).toNat

end

end A031373.P15110022689816844228

namespace A031373

/-- `A004139(A017017(n)+1)` -/
def P15110022689816844228.Spec : Prop :=
  ∀ n, P15110022689816844228.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P12213712691537589400

`A004139(A017005(n)+2)`
-/

namespace A031373.P12213712691537589400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A017005 n + 2).toNat

end

end A031373.P12213712691537589400

namespace A031373

/-- `A004139(A017005(n)+2)` -/
def P12213712691537589400.Spec : Prop :=
  ∀ n, P12213712691537589400.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P15750096654956766955

`A004139(A017041(n)-1)`
-/

namespace A031373.P15750096654956766955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A017041 n - 1).toNat

end

end A031373.P15750096654956766955

namespace A031373

/-- `A004139(A017041(n)-1)` -/
def P15750096654956766955.Spec : Prop :=
  ∀ n, P15750096654956766955.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P15448957637396584452

`A108719(A017029(n)-1)`
-/

namespace A031373.P15448957637396584452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017029 n - 1).toNat

end

end A031373.P15448957637396584452

namespace A031373

/-- `A108719(A017029(n)-1)` -/
def P15448957637396584452.Spec : Prop :=
  ∀ n, P15448957637396584452.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P12979958293645762501

`A071621(A008458(n)+n)`
-/

namespace A031373.P12979958293645762501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A008458 n + (n : ℤ)).toNat

end

end A031373.P12979958293645762501

namespace A031373

/-- `A071621(A008458(n)+n)` -/
def P12979958293645762501.Spec : Prop :=
  ∀ n, P12979958293645762501.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P17506605910786599722

`A004139(A017113(n)-n)`
-/

namespace A031373.P17506605910786599722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A017113 n - (n : ℤ)).toNat

end

end A031373.P17506605910786599722

namespace A031373

/-- `A004139(A017113(n)-n)` -/
def P17506605910786599722.Spec : Prop :=
  ∀ n, P17506605910786599722.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P13368685511736267572

`A071621(A022144(n)-n)`
-/

namespace A031373.P13368685511736267572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A022144 n - (n : ℤ)).toNat

end

end A031373.P13368685511736267572

namespace A031373

/-- `A071621(A022144(n)-n)` -/
def P13368685511736267572.Spec : Prop :=
  ∀ n, P13368685511736267572.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P11614430068887352693

`A108719(A017101(n)-n)`
-/

namespace A031373.P11614430068887352693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017101 n - (n : ℤ)).toNat

end

end A031373.P11614430068887352693

namespace A031373

/-- `A108719(A017101(n)-n)` -/
def P11614430068887352693.Spec : Prop :=
  ∀ n, P11614430068887352693.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P2617088432922949841

`A071621(A008486(2*n)+n)`
-/

namespace A031373.P2617088432922949841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A008486 (2 * n) + (n : ℤ)).toNat

end

end A031373.P2617088432922949841

namespace A031373

/-- `A071621(A008486(2*n)+n)` -/
def P2617088432922949841.Spec : Prop :=
  ∀ n, P2617088432922949841.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P7631357479154291634

`A004139(A004770(n+1)-(n+1))`
-/

namespace A031373.P7631357479154291634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A004770 (n + 1) - (n + 1 : ℤ)).toNat

end

end A031373.P7631357479154291634

namespace A031373

/-- `A004139(A004770(n+1)-(n+1))` -/
def P7631357479154291634.Spec : Prop :=
  ∀ n, P7631357479154291634.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P1373685783800335765

`A108719(A008486(2*n+1)+n)`
-/

namespace A031373.P1373685783800335765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008486 (2 * n + 1) + (n : ℤ)).toNat

end

end A031373.P1373685783800335765

namespace A031373

/-- `A108719(A008486(2*n+1)+n)` -/
def P1373685783800335765.Spec : Prop :=
  ∀ n, P1373685783800335765.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P14358681704154384449

`A008578(7*(n+1))`
-/

namespace A031373.P14358681704154384449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (7 * (n + 1))

end

end A031373.P14358681704154384449

namespace A031373

/-- `A008578(7*(n+1))` -/
def P14358681704154384449.Spec : Prop :=
  ∀ n, P14358681704154384449.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P3506420114160628549

`A116974(7*(n+1))`
-/

namespace A031373.P3506420114160628549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (7 * (n + 1))

end

end A031373.P3506420114160628549

namespace A031373

/-- `A116974(7*(n+1))` -/
def P3506420114160628549.Spec : Prop :=
  ∀ n, P3506420114160628549.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P6186947089593390941

`A161428(7*(n+1))`
-/

namespace A031373.P6186947089593390941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (7 * (n + 1))

end

end A031373.P6186947089593390941

namespace A031373

/-- `A161428(7*(n+1))` -/
def P6186947089593390941.Spec : Prop :=
  ∀ n, P6186947089593390941.a n = A031373 (n + 1)

end A031373

/-! ## A031373.P11815468162612364505

`A162786(7*(n+1))`
-/

namespace A031373.P11815468162612364505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162786 (7 * (n + 1))

end

end A031373.P11815468162612364505

namespace A031373

/-- `A162786(7*(n+1))` -/
def P11815468162612364505.Spec : Prop :=
  ∀ n, P11815468162612364505.a n = A031373 (n + 1)

end A031373

/-!
# A031374: a(n) = prime(8*n - 1).

The programs for A031374, the canonical program `A031374.P6218413521165039251` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031374 has offset 1).

The definition of A031374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(8*(n+1)-1)` (program `A031374.P6218413521165039251`, by `A031374.P6218413521165039251.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031374.P6218413521165039251

`A000040(8*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031374

/-- `A000040(8*(n+1)-1)` -/
def P6218413521165039251.Spec : Prop :=
  ∀ n, P6218413521165039251.a n = A031374 (n + 1)

theorem P6218413521165039251.correct : P6218413521165039251.Spec := by
  intro n
  simp only [A031374, Nat.add_sub_cancel]

end A031374

/-! ## A031374.P6567541883320236962

`A031370(2*(n+1))`
-/

namespace A031374.P6567541883320236962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (2 * (n + 1))

end

end A031374.P6567541883320236962

namespace A031374

/-- `A031370(2*(n+1))` -/
def P6567541883320236962.Spec : Prop :=
  ∀ n, P6567541883320236962.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P12738738414215903932

`A031368(4*(n+1))`
-/

namespace A031374.P12738738414215903932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (4 * (n + 1))

end

end A031374.P12738738414215903932

namespace A031374

/-- `A031368(4*(n+1))` -/
def P12738738414215903932.Spec : Prop :=
  ∀ n, P12738738414215903932.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P11783559211692540235

`A001749(8*n+7)/4`
-/

namespace A031374.P11783559211692540235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (8 * n + 7) : ℚ) / 4

end

end A031374.P11783559211692540235

namespace A031374

/-- `A001749(8*n+7)/4` -/
def P11783559211692540235.Spec : Prop :=
  ∀ n, P11783559211692540235.a n = (A031374 (n + 1) : ℚ)

end A031374

/-! ## A031374.P16510104916042475606

`A060192(3*(n+1)+n)`
-/

namespace A031374.P16510104916042475606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 (3 * (n + 1) + n)

end

end A031374.P16510104916042475606

namespace A031374

/-- `A060192(3*(n+1)+n)` -/
def P16510104916042475606.Spec : Prop :=
  ∀ n, P16510104916042475606.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P650005195801043723

`A332806(A080147(A332805(A080147(2*n+1))))`
-/

namespace A031374.P650005195801043723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A080147 (A332805 (A080147 (2 * n + 1)).toNat).toNat).toNat

end

end A031374.P650005195801043723

namespace A031374

/-- `A332806(A080147(A332805(A080147(2*n+1))))` -/
def P650005195801043723.Spec : Prop :=
  ∀ n, P650005195801043723.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P11373465348491564604

`A008578(8*(n+1))`
-/

namespace A031374.P11373465348491564604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (8 * (n + 1))

end

end A031374.P11373465348491564604

namespace A031374

/-- `A008578(8*(n+1))` -/
def P11373465348491564604.Spec : Prop :=
  ∀ n, P11373465348491564604.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P15016664745875466705

`A116974(8*(n+1))`
-/

namespace A031374.P15016664745875466705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (8 * (n + 1))

end

end A031374.P15016664745875466705

namespace A031374

/-- `A116974(8*(n+1))` -/
def P15016664745875466705.Spec : Prop :=
  ∀ n, P15016664745875466705.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P17141824307803473713

`A161428(8*(n+1))`
-/

namespace A031374.P17141824307803473713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (8 * (n + 1))

end

end A031374.P17141824307803473713

namespace A031374

/-- `A161428(8*(n+1))` -/
def P17141824307803473713.Spec : Prop :=
  ∀ n, P17141824307803473713.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P3885045479950507459

`A162786(8*(n+1))`
-/

namespace A031374.P3885045479950507459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162786 (8 * (n + 1))

end

end A031374.P3885045479950507459

namespace A031374

/-- `A162786(8*(n+1))` -/
def P3885045479950507459.Spec : Prop :=
  ∀ n, P3885045479950507459.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P6368640210710035697

`A171525(8*(n+1))`
-/

namespace A031374.P6368640210710035697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (8 * (n + 1))

end

end A031374.P6368640210710035697

namespace A031374

/-- `A171525(8*(n+1))` -/
def P6368640210710035697.Spec : Prop :=
  ∀ n, P6368640210710035697.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P3457741072100305131

`A175787(8*(n+1))`
-/

namespace A031374.P3457741072100305131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (8 * (n + 1))

end

end A031374.P3457741072100305131

namespace A031374

/-- `A175787(8*(n+1))` -/
def P3457741072100305131.Spec : Prop :=
  ∀ n, P3457741072100305131.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P9942576772873649345

`A182986(8*(n+1))`
-/

namespace A031374.P9942576772873649345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (8 * (n + 1))

end

end A031374.P9942576772873649345

namespace A031374

/-- `A182986(8*(n+1))` -/
def P9942576772873649345.Spec : Prop :=
  ∀ n, P9942576772873649345.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P5799508003183063428

`A108719(8*n+4)`
-/

namespace A031374.P5799508003183063428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (8 * n + 4)

end

end A031374.P5799508003183063428

namespace A031374

/-- `A108719(8*n+4)` -/
def P5799508003183063428.Spec : Prop :=
  ∀ n, P5799508003183063428.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P332435701486430292

`A140461(8*n+4)`
-/

namespace A031374.P332435701486430292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (8 * n + 4)

end

end A031374.P332435701486430292

namespace A031374

/-- `A140461(8*n+4)` -/
def P332435701486430292.Spec : Prop :=
  ∀ n, P332435701486430292.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P747217788300480114

`A065091(8*n+6)`
-/

namespace A031374.P747217788300480114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (8 * n + 6)

end

end A031374.P747217788300480114

namespace A031374

/-- `A065091(8*n+6)` -/
def P747217788300480114.Spec : Prop :=
  ∀ n, P747217788300480114.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P2254898750886296300

`A006093(8*n+7)+1`
-/

namespace A031374.P2254898750886296300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (8 * n + 7) + 1

end

end A031374.P2254898750886296300

namespace A031374

/-- `A006093(8*n+7)+1` -/
def P2254898750886296300.Spec : Prop :=
  ∀ n, P2254898750886296300.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P1602262061871455495

`A045319(A017137(n))`
-/

namespace A031374.P1602262061871455495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017137 n).toNat

end

end A031374.P1602262061871455495

namespace A031374

/-- `A045319(A017137(n))` -/
def P1602262061871455495.Spec : Prop :=
  ∀ n, P1602262061871455495.a n = A031374 (n + 1)

end A031374

/-! ## A031374.P4263296671791741015

`A157996(A017089(n))`
-/

namespace A031374.P4263296671791741015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017089 n).toNat

end

end A031374.P4263296671791741015

namespace A031374

/-- `A157996(A017089(n))` -/
def P4263296671791741015.Spec : Prop :=
  ∀ n, P4263296671791741015.a n = A031374 (n + 1)

end A031374

/-!
# A031375: a(n) = prime(9n-1).

The programs for A031375, the canonical program `A031375.P6511818016845057507` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031375 has offset 1).

The definition of A031375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(9*(n+1)-1)` (program `A031375.P6511818016845057507`, by `A031375.P6511818016845057507.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031375.P6511818016845057507

`A000040(9*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031375

/-- `A000040(9*(n+1)-1)` -/
def P6511818016845057507.Spec : Prop :=
  ∀ n, P6511818016845057507.a n = A031375 (n + 1)

theorem P6511818016845057507.correct : P6511818016845057507.Spec := by
  intro n
  simp only [A031375, Nat.add_sub_cancel]

end A031375

/-! ## A031375.P12755134045357932822

`A031369(3*(n+1))`
-/

namespace A031375.P12755134045357932822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (3 * (n + 1))

end

end A031375.P12755134045357932822

namespace A031375

/-- `A031369(3*(n+1))` -/
def P12755134045357932822.Spec : Prop :=
  ∀ n, P12755134045357932822.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P13586444545490083625

`A008578(9*(n+1))`
-/

namespace A031375.P13586444545490083625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * (n + 1))

end

end A031375.P13586444545490083625

namespace A031375

/-- `A008578(9*(n+1))` -/
def P13586444545490083625.Spec : Prop :=
  ∀ n, P13586444545490083625.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P4799255432702570672

`A116974(9*(n+1))`
-/

namespace A031375.P4799255432702570672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (9 * (n + 1))

end

end A031375.P4799255432702570672

namespace A031375

/-- `A116974(9*(n+1))` -/
def P4799255432702570672.Spec : Prop :=
  ∀ n, P4799255432702570672.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P3528954166068063578

`A161428(9*(n+1))`
-/

namespace A031375.P3528954166068063578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (9 * (n + 1))

end

end A031375.P3528954166068063578

namespace A031375

/-- `A161428(9*(n+1))` -/
def P3528954166068063578.Spec : Prop :=
  ∀ n, P3528954166068063578.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P5410023311632460791

`A162786(9*(n+1))`
-/

namespace A031375.P5410023311632460791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162786 (9 * (n + 1))

end

end A031375.P5410023311632460791

namespace A031375

/-- `A162786(9*(n+1))` -/
def P5410023311632460791.Spec : Prop :=
  ∀ n, P5410023311632460791.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P6680938144869782754

`A171525(9*(n+1))`
-/

namespace A031375.P6680938144869782754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (9 * (n + 1))

end

end A031375.P6680938144869782754

namespace A031375

/-- `A171525(9*(n+1))` -/
def P6680938144869782754.Spec : Prop :=
  ∀ n, P6680938144869782754.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P8628145272206532531

`A175787(9*(n+1))`
-/

namespace A031375.P8628145272206532531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (9 * (n + 1))

end

end A031375.P8628145272206532531

namespace A031375

/-- `A175787(9*(n+1))` -/
def P8628145272206532531.Spec : Prop :=
  ∀ n, P8628145272206532531.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P3217023031307990029

`A182986(9*(n+1))`
-/

namespace A031375.P3217023031307990029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (9 * (n + 1))

end

end A031375.P3217023031307990029

namespace A031375

/-- `A182986(9*(n+1))` -/
def P3217023031307990029.Spec : Prop :=
  ∀ n, P3217023031307990029.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P3032154116192034833

`A065091(9*n+7)`
-/

namespace A031375.P3032154116192034833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (9 * n + 7)

end

end A031375.P3032154116192034833

namespace A031375

/-- `A065091(9*n+7)` -/
def P3032154116192034833.Spec : Prop :=
  ∀ n, P3032154116192034833.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P9706815580160144428

`A162788(9*n+10)`
-/

namespace A031375.P9706815580160144428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (9 * n + 10)

end

end A031375.P9706815580160144428

namespace A031375

/-- `A162788(9*n+10)` -/
def P9706815580160144428.Spec : Prop :=
  ∀ n, P9706815580160144428.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P10576005516291564410

`A158611(9*(n+1)+1)`
-/

namespace A031375.P10576005516291564410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (9 * (n + 1) + 1)

end

end A031375.P10576005516291564410

namespace A031375

/-- `A158611(9*(n+1)+1)` -/
def P10576005516291564410.Spec : Prop :=
  ∀ n, P10576005516291564410.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P3375833219275104180

`A004139(8*n+6+n)`
-/

namespace A031375.P3375833219275104180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (8 * n + 6 + n)

end

end A031375.P3375833219275104180

namespace A031375

/-- `A004139(8*n+6+n)` -/
def P3375833219275104180.Spec : Prop :=
  ∀ n, P3375833219275104180.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P728211795752832103

`A008864(9*(n+1)-1)-1`
-/

namespace A031375.P728211795752832103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (9 * (n + 1) - 1) - 1

end

end A031375.P728211795752832103

namespace A031375

/-- `A008864(9*(n+1)-1)-1` -/
def P728211795752832103.Spec : Prop :=
  ∀ n, P728211795752832103.a n = A031375 (n + 1)

theorem P728211795752832103.correct : P728211795752832103.Spec := by
  intro n
  simp only [A031375, Nat.add_sub_cancel, A031375.P728211795752832103.a, A031375.P6511818016845057507.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031375

/-! ## A031375.P11630400574839566144

`A040976(abs(9*(n+1)-2)+1)+2`
-/

namespace A031375.P11630400574839566144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (|(9 * (n + 1) : ℤ) - 2| + 1).toNat + 2

end

end A031375.P11630400574839566144

namespace A031375

/-- `A040976(abs(9*(n+1)-2)+1)+2` -/
def P11630400574839566144.Spec : Prop :=
  ∀ n, P11630400574839566144.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P9531733668352178076

`A006093(7*(n+1)+2*n+1)+1`
-/

namespace A031375.P9531733668352178076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (7 * (n + 1) + (2 * n + 1)) + 1

end

end A031375.P9531733668352178076

namespace A031375

/-- `A006093(7*(n+1)+2*n+1)+1` -/
def P9531733668352178076.Spec : Prop :=
  ∀ n, P9531733668352178076.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P8590748188496600512

`A045319(A017245(n))`
-/

namespace A031375.P8590748188496600512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017245 n).toNat

end

end A031375.P8590748188496600512

namespace A031375

/-- `A045319(A017245(n))` -/
def P8590748188496600512.Spec : Prop :=
  ∀ n, P8590748188496600512.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P6927452462161604236

`A071621(A017185(n))`
-/

namespace A031375.P6927452462161604236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017185 n).toNat

end

end A031375.P6927452462161604236

namespace A031375

/-- `A071621(A017185(n))` -/
def P6927452462161604236.Spec : Prop :=
  ∀ n, P6927452462161604236.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P13054797011010390494

`A108719(A017221(n))`
-/

namespace A031375.P13054797011010390494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017221 n).toNat

end

end A031375.P13054797011010390494

namespace A031375

/-- `A108719(A017221(n))` -/
def P13054797011010390494.Spec : Prop :=
  ∀ n, P13054797011010390494.a n = A031375 (n + 1)

end A031375

/-! ## A031375.P7411387661131687373

`A157996(A017197(n))`
-/

namespace A031375.P7411387661131687373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017197 n).toNat

end

end A031375.P7411387661131687373

namespace A031375

/-- `A157996(A017197(n))` -/
def P7411387661131687373.Spec : Prop :=
  ∀ n, P7411387661131687373.a n = A031375 (n + 1)

end A031375

/-!
# A031376: a(n) = prime(10*n - 1).

The programs for A031376, the canonical program `A031376.P7113975391194711635` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031376 has offset 1).

The definition of A031376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(10*(n+1)-1)` (program `A031376.P7113975391194711635`, by `A031376.P7113975391194711635.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031376.P7113975391194711635

`A000040(10*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031376

/-- `A000040(10*(n+1)-1)` -/
def P7113975391194711635.Spec : Prop :=
  ∀ n, P7113975391194711635.a n = A031376 (n + 1)

theorem P7113975391194711635.correct : P7113975391194711635.Spec := by
  intro n
  simp only [A031376, Nat.add_sub_cancel]

end A031376

/-! ## A031376.P16604304891973431353

`A031371(2*(n+1))`
-/

namespace A031376.P16604304891973431353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 (2 * (n + 1))

end

end A031376.P16604304891973431353

namespace A031376

/-- `A031371(2*(n+1))` -/
def P16604304891973431353.Spec : Prop :=
  ∀ n, P16604304891973431353.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P5242699868877184810

`A031368(5*(n+1))`
-/

namespace A031376.P5242699868877184810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (5 * (n + 1))

end

end A031376.P5242699868877184810

namespace A031376

/-- `A031368(5*(n+1))` -/
def P5242699868877184810.Spec : Prop :=
  ∀ n, P5242699868877184810.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P5392893817930314932

`A001749(A017377(n))/4`
-/

namespace A031376.P5392893817930314932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017377 n).toNat : ℚ) / 4

end

end A031376.P5392893817930314932

namespace A031376

/-- `A001749(A017377(n))/4` -/
def P5392893817930314932.Spec : Prop :=
  ∀ n, P5392893817930314932.a n = (A031376 (n + 1) : ℚ)

end A031376

/-! ## A031376.P4003247209285022910

`∩[A031368(n+1), A031371(n+1)]`
-/

namespace A031376.P4003247209285022910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031376.P4003247209285022910

namespace A031376

/-- `∩[A031368(n+1), A031371(n+1)]` -/
def P4003247209285022910.Spec : Prop :=
  ∀ n, (P4003247209285022910.a n : ℤ) = A031376 (n + 1)

end A031376

/-! ## A031376.P2663377625684830511

`∩[A031371(n+1), A324812(n+1)]`
-/

namespace A031376.P2663377625684830511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031376.P2663377625684830511

namespace A031376

/-- `∩[A031371(n+1), A324812(n+1)]` -/
def P2663377625684830511.Spec : Prop :=
  ∀ n, (P2663377625684830511.a n : ℤ) = A031376 (n + 1)

end A031376

/-! ## A031376.P11667381849863237496

`A008578(10*(n+1))`
-/

namespace A031376.P11667381849863237496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (10 * (n + 1))

end

end A031376.P11667381849863237496

namespace A031376

/-- `A008578(10*(n+1))` -/
def P11667381849863237496.Spec : Prop :=
  ∀ n, P11667381849863237496.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P9446885984377184800

`A004139(10*n+7)`
-/

namespace A031376.P9446885984377184800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (10 * n + 7)

end

end A031376.P9446885984377184800

namespace A031376

/-- `A004139(10*n+7)` -/
def P9446885984377184800.Spec : Prop :=
  ∀ n, P9446885984377184800.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P17068882737804874040

`A215848(10*n+7)`
-/

namespace A031376.P17068882737804874040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (10 * n + 7)

end

end A031376.P17068882737804874040

namespace A031376

/-- `A215848(10*n+7)` -/
def P17068882737804874040.Spec : Prop :=
  ∀ n, P17068882737804874040.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P9770496573564062929

`A006093(9*(n+1)+n)+1`
-/

namespace A031376.P9770496573564062929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (9 * (n + 1) + n) + 1

end

end A031376.P9770496573564062929

namespace A031376

/-- `A006093(9*(n+1)+n)+1` -/
def P9770496573564062929.Spec : Prop :=
  ∀ n, P9770496573564062929.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P10546225532381301540

`A008864(2*(5*n+4)+1)-1`
-/

namespace A031376.P10546225532381301540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (2 * (5 * n + 4) + 1) - 1

end

end A031376.P10546225532381301540

namespace A031376

/-- `A008864(2*(5*n+4)+1)-1` -/
def P10546225532381301540.Spec : Prop :=
  ∀ n, P10546225532381301540.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P11185905027644179784

`A040976(2*(5*n+4)+1)+2`
-/

namespace A031376.P11185905027644179784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (2 * (5 * n + 4) + 1) + 2

end

end A031376.P11185905027644179784

namespace A031376

/-- `A040976(2*(5*n+4)+1)+2` -/
def P11185905027644179784.Spec : Prop :=
  ∀ n, P11185905027644179784.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P9178360607280145194

`A045319(A017365(n))`
-/

namespace A031376.P9178360607280145194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017365 n).toNat

end

end A031376.P9178360607280145194

namespace A031376

/-- `A045319(A017365(n))` -/
def P9178360607280145194.Spec : Prop :=
  ∀ n, P9178360607280145194.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P8611872812983942824

`A071621(A017305(n))`
-/

namespace A031376.P8611872812983942824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017305 n).toNat

end

end A031376.P8611872812983942824

namespace A031376

/-- `A071621(A017305(n))` -/
def P8611872812983942824.Spec : Prop :=
  ∀ n, P8611872812983942824.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P2413493965478391542

`A108719(A017341(n))`
-/

namespace A031376.P2413493965478391542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017341 n).toNat

end

end A031376.P2413493965478391542

namespace A031376

/-- `A108719(A017341(n))` -/
def P2413493965478391542.Spec : Prop :=
  ∀ n, P2413493965478391542.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P14747140903460356562

`A045319(A017353(n)+1)`
-/

namespace A031376.P14747140903460356562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017353 n + 1).toNat

end

end A031376.P14747140903460356562

namespace A031376

/-- `A045319(A017353(n)+1)` -/
def P14747140903460356562.Spec : Prop :=
  ∀ n, P14747140903460356562.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P10569642204073601594

`A071621(A017293(n)+1)`
-/

namespace A031376.P10569642204073601594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017293 n + 1).toNat

end

end A031376.P10569642204073601594

namespace A031376

/-- `A071621(A017293(n)+1)` -/
def P10569642204073601594.Spec : Prop :=
  ∀ n, P10569642204073601594.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P10616678454473859398

`A157996(A017305(n)+1)`
-/

namespace A031376.P10616678454473859398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017305 n + 1).toNat

end

end A031376.P10616678454473859398

namespace A031376

/-- `A157996(A017305(n)+1)` -/
def P10616678454473859398.Spec : Prop :=
  ∀ n, P10616678454473859398.a n = A031376 (n + 1)

end A031376

/-! ## A031376.P14948434947888209984

`A045319(A017341(n)+2)`
-/

namespace A031376.P14948434947888209984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017341 n + 2).toNat

end

end A031376.P14948434947888209984

namespace A031376

/-- `A045319(A017341(n)+2)` -/
def P14948434947888209984.Spec : Prop :=
  ∀ n, P14948434947888209984.a n = A031376 (n + 1)

end A031376

/-!
# A031377: a(n) = prime(3n-2).

The programs for A031377, the canonical program `A031377.P14585949674201147163` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031377 has offset 1).

The definition of A031377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*n+1)` (program `A031377.P14585949674201147163`, by `A031377.P14585949674201147163.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031377.P14585949674201147163

`A000040(3*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031377

/-- `A000040(3*n+1)` -/
def P14585949674201147163.Spec : Prop :=
  ∀ n, P14585949674201147163.a n = A031377 (n + 1)

theorem P14585949674201147163.correct : P14585949674201147163.Spec := by
  intro n
  simp only [A031377, Nat.add_sub_cancel]

end A031377

/-! ## A031377.P2980469161821621959

`A000040(3*(n+1)-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A031377.P2980469161821621959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * (n + 1) - 2)

end

end A031377.P2980469161821621959

namespace A031377

/-- `A000040(3*(n+1)-2)` -/
def P2980469161821621959.Spec : Prop :=
  ∀ n, P2980469161821621959.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P2569108697658365113

`∪[A031380(n+1), A031906(n+1)]`
-/

namespace A031377.P2569108697658365113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031377.P2569108697658365113

namespace A031377

/-- `∪[A031380(n+1), A031906(n+1)]` -/
def P2569108697658365113.Spec : Prop :=
  ∀ n, (P2569108697658365113.a n : ℤ) = A031377 (n + 1)

end A031377

/-! ## A031377.P12442272591123244915

`A031369(n+1)-A001223(3*n+1)`
-/

namespace A031377.P12442272591123244915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1) - A001223 (3 * n + 1)

end

end A031377.P12442272591123244915

namespace A031377

/-- `A031369(n+1)-A001223(3*n+1)` -/
def P12442272591123244915.Spec : Prop :=
  ∀ n, P12442272591123244915.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P3073257635688972205

`A007504(A016777(n))-A007504(3*n)`
-/

namespace A031377.P3073257635688972205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A016777 n).toNat - A007504 (3 * n)

end

end A031377.P3073257635688972205

namespace A031377

/-- `A007504(A016777(n))-A007504(3*n)` -/
def P3073257635688972205.Spec : Prop :=
  ∀ n, P3073257635688972205.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P16886860391121280318

`A001748(3*n+1)/3`
-/

namespace A031377.P16886860391121280318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (3 * n + 1) : ℚ) / 3

end

end A031377.P16886860391121280318

namespace A031377

/-- `A001748(3*n+1)/3` -/
def P16886860391121280318.Spec : Prop :=
  ∀ n, P16886860391121280318.a n = (A031377 (n + 1) : ℚ)

theorem P16886860391121280318.correct : P16886860391121280318.Spec := by
  intro n
  simp only [A031377, Nat.add_sub_cancel, A031377.P16886860391121280318.a, A031377.P14585949674201147163.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031377

/-! ## A031377.P15598907560611129441

`A001749(3*n+1)/4`
-/

namespace A031377.P15598907560611129441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (3 * n + 1) : ℚ) / 4

end

end A031377.P15598907560611129441

namespace A031377

/-- `A001749(3*n+1)/4` -/
def P15598907560611129441.Spec : Prop :=
  ∀ n, P15598907560611129441.a n = (A031377 (n + 1) : ℚ)

theorem P15598907560611129441.correct : P15598907560611129441.Spec := by
  intro n
  simp only [A031377, Nat.add_sub_cancel, A031377.P15598907560611129441.a, A031377.P14585949674201147163.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031377

/-! ## A031377.P1382052310705581296

`A161847(3*n+1)`
-/

namespace A031377.P1382052310705581296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (3 * n + 1)

end

end A031377.P1382052310705581296

namespace A031377

/-- `A161847(3*n+1)` -/
def P1382052310705581296.Spec : Prop :=
  ∀ n, P1382052310705581296.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P9129815622393187595

`sqrt(A001248(3*n+1))`
-/

namespace A031377.P9129815622393187595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (3 * n + 1) : ℝ)

end

end A031377.P9129815622393187595

namespace A031377

/-- `sqrt(A001248(3*n+1))` -/
def P9129815622393187595.Spec : Prop :=
  ∀ n, P9129815622393187595.a n = (A031377 (n + 1) : ℝ)

end A031377

/-! ## A031377.P2647056558546182202

`A006093(3*n+1)+1`
-/

namespace A031377.P2647056558546182202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (3 * n + 1) + 1

end

end A031377.P2647056558546182202

namespace A031377

/-- `A006093(3*n+1)+1` -/
def P2647056558546182202.Spec : Prop :=
  ∀ n, P2647056558546182202.a n = A031377 (n + 1)

theorem P2647056558546182202.correct : P2647056558546182202.Spec := by
  intro n
  simp only [A031377, Nat.add_sub_cancel, A031377.P2647056558546182202.a, A031377.P14585949674201147163.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031377

/-! ## A031377.P11306934315988175163

`A008864(3*n+1)-1`
-/

namespace A031377.P11306934315988175163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (3 * n + 1) - 1

end

end A031377.P11306934315988175163

namespace A031377

/-- `A008864(3*n+1)-1` -/
def P11306934315988175163.Spec : Prop :=
  ∀ n, P11306934315988175163.a n = A031377 (n + 1)

theorem P11306934315988175163.correct : P11306934315988175163.Spec := by
  intro n
  simp only [A031377, Nat.add_sub_cancel, A031377.P11306934315988175163.a, A031377.P14585949674201147163.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031377

/-! ## A031377.P2152980010666770767

`A100484(3*n+1)/2`
-/

namespace A031377.P2152980010666770767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (3 * n + 1) : ℚ) / 2

end

end A031377.P2152980010666770767

namespace A031377

/-- `A100484(3*n+1)/2` -/
def P2152980010666770767.Spec : Prop :=
  ∀ n, P2152980010666770767.a n = (A031377 (n + 1) : ℚ)

theorem P2152980010666770767.correct : P2152980010666770767.Spec := by
  intro n
  simp only [A031377, Nat.add_sub_cancel, A031377.P2152980010666770767.a, A031377.P14585949674201147163.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031377

/-! ## A031377.P8221357851345657053

`A045319(A008486(n))`
-/

namespace A031377.P8221357851345657053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008486 n).toNat

end

end A031377.P8221357851345657053

namespace A031377

/-- `A045319(A008486(n))` -/
def P8221357851345657053.Spec : Prop :=
  ∀ n, P8221357851345657053.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P5950316212518385432

`A045319(A004277(n)+n)`
-/

namespace A031377.P5950316212518385432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A004277 n + (n : ℤ)).toNat

end

end A031377.P5950316212518385432

namespace A031377

/-- `A045319(A004277(n)+n)` -/
def P5950316212518385432.Spec : Prop :=
  ∀ n, P5950316212518385432.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P12913989970760855428

`A045344(A004277(n)+n)`
-/

namespace A031377.P12913989970760855428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A004277 n + (n : ℤ)).toNat

end

end A031377.P12913989970760855428

namespace A031377

/-- `A045344(A004277(n)+n)` -/
def P12913989970760855428.Spec : Prop :=
  ∀ n, P12913989970760855428.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P12173785021753505816

`A045319(A008574(n)-n)`
-/

namespace A031377.P12173785021753505816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008574 n - (n : ℤ)).toNat

end

end A031377.P12173785021753505816

namespace A031377

/-- `A045319(A008574(n)-n)` -/
def P12173785021753505816.Spec : Prop :=
  ∀ n, P12173785021753505816.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P9721218314759737883

`A045344(A008574(n)-n)`
-/

namespace A031377.P9721218314759737883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A008574 n - (n : ℤ)).toNat

end

end A031377.P9721218314759737883

namespace A031377

/-- `A045344(A008574(n)-n)` -/
def P9721218314759737883.Spec : Prop :=
  ∀ n, P9721218314759737883.a n = A031377 (n + 1)

end A031377

/-! ## A031377.P11824247235511733024

`record[A000040(A071045(n)+1)]`
-/

namespace A031377.P11824247235511733024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071045 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031377.P11824247235511733024

namespace A031377

/-- `record[A000040(A071045(n)+1)]` -/
def P11824247235511733024.Spec : Prop :=
  ∀ n, P11824247235511733024.a n = A031377 (n + 1)

end A031377

/-!
# A031378: a(n) = prime(4*n - 2).

The programs for A031378, the canonical program `A031378.P701728384603288061` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031378 has offset 1).

The definition of A031378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(4*(n+1)-2)` (program `A031378.P701728384603288061`, by `A031378.P701728384603288061.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031378.P7182389519507571766

`A031215(2*n+1)`
-/

namespace A031378.P7182389519507571766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (2 * n + 1)

end

end A031378.P7182389519507571766

namespace A031378

/-- `A031215(2*n+1)` -/
def P7182389519507571766.Spec : Prop :=
  ∀ n, P7182389519507571766.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P701728384603288061

`A000040(4*(n+1)-2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031378

/-- `A000040(4*(n+1)-2)` -/
def P701728384603288061.Spec : Prop :=
  ∀ n, P701728384603288061.a n = A031378 (n + 1)

theorem P701728384603288061.correct : P701728384603288061.Spec := by
  intro n
  simp only [A031378, Nat.add_sub_cancel]

end A031378

/-! ## A031378.P10951429204273475008

`∪[A031382(n+1), A031912(n+1)]`
-/

namespace A031378.P10951429204273475008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031378.P10951429204273475008

namespace A031378

/-- `∪[A031382(n+1), A031912(n+1)]` -/
def P10951429204273475008.Spec : Prop :=
  ∀ n, (P10951429204273475008.a n : ℤ) = A031378 (n + 1)

end A031378

/-! ## A031378.P16587132798674615432

`A060192(2*n)`
-/

namespace A031378.P16587132798674615432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 (2 * n)

end

end A031378.P16587132798674615432

namespace A031378

/-- `A060192(2*n)` -/
def P16587132798674615432.Spec : Prop :=
  ∀ n, P16587132798674615432.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P7751654511931189486

`A001748(A016825(n))/3`
-/

namespace A031378.P7751654511931189486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A016825 n).toNat : ℚ) / 3

end

end A031378.P7751654511931189486

namespace A031378

/-- `A001748(A016825(n))/3` -/
def P7751654511931189486.Spec : Prop :=
  ∀ n, P7751654511931189486.a n = (A031378 (n + 1) : ℚ)

end A031378

/-! ## A031378.P16431059969565142932

`∩[A031215(n+1), A060192(n)]`
-/

namespace A031378.P16431059969565142932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031378.P16431059969565142932

namespace A031378

/-- `∩[A031215(n+1), A060192(n)]` -/
def P16431059969565142932.Spec : Prop :=
  ∀ n, (P16431059969565142932.a n : ℤ) = A031378 (n + 1)

end A031378

/-! ## A031378.P4198215580051659898

`∩[A060192(n), A066207(n+1)]`
-/

namespace A031378.P4198215580051659898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031378.P4198215580051659898

namespace A031378

/-- `∩[A060192(n), A066207(n+1)]` -/
def P4198215580051659898.Spec : Prop :=
  ∀ n, (P4198215580051659898.a n : ℤ) = A031378 (n + 1)

end A031378

/-! ## A031378.P13345206443399976595

`A004139(A008574(n))`
-/

namespace A031378.P13345206443399976595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008574 n).toNat

end

end A031378.P13345206443399976595

namespace A031378

/-- `A004139(A008574(n))` -/
def P13345206443399976595.Spec : Prop :=
  ∀ n, P13345206443399976595.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P1580235748998554706

`A004139(A004277(2*n))`
-/

namespace A031378.P1580235748998554706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A004277 (2 * n)).toNat

end

end A031378.P1580235748998554706

namespace A031378

/-- `A004139(A004277(2*n))` -/
def P1580235748998554706.Spec : Prop :=
  ∀ n, P1580235748998554706.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P10706894796268687547

`A004139(A008486(n)+n)`
-/

namespace A031378.P10706894796268687547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008486 n + (n : ℤ)).toNat

end

end A031378.P10706894796268687547

namespace A031378

/-- `A004139(A008486(n)+n)` -/
def P10706894796268687547.Spec : Prop :=
  ∀ n, P10706894796268687547.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P9337818279703893989

`A004139(A008706(n)-n)`
-/

namespace A031378.P9337818279703893989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008706 n - (n : ℤ)).toNat

end

end A031378.P9337818279703893989

namespace A031378

/-- `A004139(A008706(n)-n)` -/
def P9337818279703893989.Spec : Prop :=
  ∀ n, P9337818279703893989.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P9719386293426191581

`A158611(4*(n+1))`
-/

namespace A031378.P9719386293426191581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (4 * (n + 1))

end

end A031378.P9719386293426191581

namespace A031378

/-- `A158611(4*(n+1))` -/
def P9719386293426191581.Spec : Prop :=
  ∀ n, P9719386293426191581.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P8408847954598140046

`A006005(4*n+2)`
-/

namespace A031378.P8408847954598140046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (4 * n + 2)

end

end A031378.P8408847954598140046

namespace A031378

/-- `A006005(4*n+2)` -/
def P8408847954598140046.Spec : Prop :=
  ∀ n, P8408847954598140046.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P14343573278612917455

`A062720(4*n+2)`
-/

namespace A031378.P14343573278612917455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (4 * n + 2)

end

end A031378.P14343573278612917455

namespace A031378

/-- `A062720(4*n+2)` -/
def P14343573278612917455.Spec : Prop :=
  ∀ n, P14343573278612917455.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P7990917654855410224

`A161847(4*n+2)`
-/

namespace A031378.P7990917654855410224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (4 * n + 2)

end

end A031378.P7990917654855410224

namespace A031378

/-- `A161847(4*n+2)` -/
def P7990917654855410224.Spec : Prop :=
  ∀ n, P7990917654855410224.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P14216136317991072221

`A273960(4*n+2)`
-/

namespace A031378.P14216136317991072221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (4 * n + 2)

end

end A031378.P14216136317991072221

namespace A031378

/-- `A273960(4*n+2)` -/
def P14216136317991072221.Spec : Prop :=
  ∀ n, P14216136317991072221.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P2336811485599120354

`A318871(4*n+2)`
-/

namespace A031378.P2336811485599120354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (4 * n + 2)

end

end A031378.P2336811485599120354

namespace A031378

/-- `A318871(4*n+2)` -/
def P2336811485599120354.Spec : Prop :=
  ∀ n, P2336811485599120354.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P11302010038597923939

`A350171(4*n+2)`
-/

namespace A031378.P11302010038597923939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (4 * n + 2)

end

end A031378.P11302010038597923939

namespace A031378

/-- `A350171(4*n+2)` -/
def P11302010038597923939.Spec : Prop :=
  ∀ n, P11302010038597923939.a n = A031378 (n + 1)

end A031378

/-! ## A031378.P2423405001935914325

`A350173(4*n+2)`
-/

namespace A031378.P2423405001935914325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350173 (4 * n + 2)

end

end A031378.P2423405001935914325

namespace A031378

/-- `A350173(4*n+2)` -/
def P2423405001935914325.Spec : Prop :=
  ∀ n, P2423405001935914325.a n = A031378 (n + 1)

end A031378

/-!
# A031379: a(n) = prime(5*n - 2).

The programs for A031379, the canonical program `A031379.P15124732238001696136` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031379 has offset 1).

The definition of A031379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(5*(n+1)-2)` (program `A031379.P15124732238001696136`, by `A031379.P15124732238001696136.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031379.P15124732238001696136

`A000040(5*(n+1)-2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031379

/-- `A000040(5*(n+1)-2)` -/
def P15124732238001696136.Spec : Prop :=
  ∀ n, P15124732238001696136.a n = A031379 (n + 1)

theorem P15124732238001696136.correct : P15124732238001696136.Spec := by
  intro n
  simp only [A031379, Nat.add_sub_cancel]

end A031379

/-! ## A031379.P11553635578591015333

`∪[A031384(n+1), A031917(n+1)]`
-/

namespace A031379.P11553635578591015333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031379.P11553635578591015333

namespace A031379

/-- `∪[A031384(n+1), A031917(n+1)]` -/
def P11553635578591015333.Spec : Prop :=
  ∀ n, (P11553635578591015333.a n : ℤ) = A031379 (n + 1)

end A031379

/-! ## A031379.P18214959282378897042

`A108719(A008706(n))`
-/

namespace A031379.P18214959282378897042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008706 n).toNat

end

end A031379.P18214959282378897042

namespace A031379

/-- `A108719(A008706(n))` -/
def P18214959282378897042.Spec : Prop :=
  ∀ n, P18214959282378897042.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P4040876952635649529

`A108719(A008574(n)+n)`
-/

namespace A031379.P4040876952635649529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008574 n + (n : ℤ)).toNat

end

end A031379.P4040876952635649529

namespace A031379

/-- `A108719(A008574(n)+n)` -/
def P4040876952635649529.Spec : Prop :=
  ∀ n, P4040876952635649529.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P16130665478349313945

`A108719(A008458(n)-n)`
-/

namespace A031379.P16130665478349313945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008458 n - (n : ℤ)).toNat

end

end A031379.P16130665478349313945

namespace A031379

/-- `A108719(A008458(n)-n)` -/
def P16130665478349313945.Spec : Prop :=
  ∀ n, P16130665478349313945.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P2811710347600573174

`A046022(5*(n+1))`
-/

namespace A031379.P2811710347600573174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (5 * (n + 1))

end

end A031379.P2811710347600573174

namespace A031379

/-- `A046022(5*(n+1))` -/
def P2811710347600573174.Spec : Prop :=
  ∀ n, P2811710347600573174.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P5015924754674306048

`A158611(5*(n+1))`
-/

namespace A031379.P5015924754674306048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (5 * (n + 1))

end

end A031379.P5015924754674306048

namespace A031379

/-- `A158611(5*(n+1))` -/
def P5015924754674306048.Spec : Prop :=
  ∀ n, P5015924754674306048.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P12190392593336779199

`A335402(5*(n+1))`
-/

namespace A031379.P12190392593336779199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (5 * (n + 1))

end

end A031379.P12190392593336779199

namespace A031379

/-- `A335402(5*(n+1))` -/
def P12190392593336779199.Spec : Prop :=
  ∀ n, P12190392593336779199.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P12405960422359268521

`A045344(5*n+2)`
-/

namespace A031379.P12405960422359268521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (5 * n + 2)

end

end A031379.P12405960422359268521

namespace A031379

/-- `A045344(5*n+2)` -/
def P12405960422359268521.Spec : Prop :=
  ∀ n, P12405960422359268521.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P7172801959148942383

`A065091(5*n+2)`
-/

namespace A031379.P7172801959148942383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (5 * n + 2)

end

end A031379.P7172801959148942383

namespace A031379

/-- `A065091(5*n+2)` -/
def P7172801959148942383.Spec : Prop :=
  ∀ n, P7172801959148942383.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P12150872924023483240

`A006005(5*n+3)`
-/

namespace A031379.P12150872924023483240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (5 * n + 3)

end

end A031379.P12150872924023483240

namespace A031379

/-- `A006005(5*n+3)` -/
def P12150872924023483240.Spec : Prop :=
  ∀ n, P12150872924023483240.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P10686835555777431750

`A008578(5*n+4)`
-/

namespace A031379.P10686835555777431750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (5 * n + 4)

end

end A031379.P10686835555777431750

namespace A031379

/-- `A008578(5*n+4)` -/
def P10686835555777431750.Spec : Prop :=
  ∀ n, P10686835555777431750.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P18443925725073904855

`A175787(5*n+4)`
-/

namespace A031379.P18443925725073904855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (5 * n + 4)

end

end A031379.P18443925725073904855

namespace A031379

/-- `A175787(5*n+4)` -/
def P18443925725073904855.Spec : Prop :=
  ∀ n, P18443925725073904855.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P15850894068514296294

`A215848(4*n+n+1)`
-/

namespace A031379.P15850894068514296294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (4 * n + (n + 1))

end

end A031379.P15850894068514296294

namespace A031379

/-- `A215848(4*n+n+1)` -/
def P15850894068514296294.Spec : Prop :=
  ∀ n, P15850894068514296294.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P2841012688836149573

`A040976(A016885(n))+2`
-/

namespace A031379.P2841012688836149573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A016885 n).toNat + 2

end

end A031379.P2841012688836149573

namespace A031379

/-- `A040976(A016885(n))+2` -/
def P2841012688836149573.Spec : Prop :=
  ∀ n, P2841012688836149573.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P1405397806337655591

`record[A000040(A185452(n+1))]`
-/

namespace A031379.P1405397806337655591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A185452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031379.P1405397806337655591

namespace A031379

/-- `record[A000040(A185452(n+1))]` -/
def P1405397806337655591.Spec : Prop :=
  ∀ n, P1405397806337655591.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P17416730252022178576

`record[A000040(A074067(n+2)+1)]`
-/

namespace A031379.P17416730252022178576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074067 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031379.P17416730252022178576

namespace A031379

/-- `record[A000040(A074067(n+2)+1)]` -/
def P17416730252022178576.Spec : Prop :=
  ∀ n, P17416730252022178576.a n = A031379 (n + 1)

end A031379

/-! ## A031379.P1372469547839141249

`record[A000040(A241155(n+1)+2)]`
-/

namespace A031379.P1372469547839141249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A241155 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031379.P1372469547839141249

namespace A031379

/-- `record[A000040(A241155(n+1)+2)]` -/
def P1372469547839141249.Spec : Prop :=
  ∀ n, P1372469547839141249.a n = A031379 (n + 1)

end A031379

/-!
# A031380: a(n) = prime(6*n - 2).

The programs for A031380, the canonical program `A031380.P15909299554830182336` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031380 has offset 1).

The definition of A031380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(6*(n+1)-2)` (program `A031380.P15909299554830182336`, by `A031380.P15909299554830182336.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031380.P15909299554830182336

`A000040(6*(n+1)-2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031380

/-- `A000040(6*(n+1)-2)` -/
def P15909299554830182336.Spec : Prop :=
  ∀ n, P15909299554830182336.a n = A031380 (n + 1)

theorem P15909299554830182336.correct : P15909299554830182336.Spec := by
  intro n
  simp only [A031380, Nat.add_sub_cancel]

end A031380

/-! ## A031380.P5591748985726001025

`A031377(2*(n+1))`
-/

namespace A031380.P5591748985726001025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (2 * (n + 1))

end

end A031380.P5591748985726001025

namespace A031380

/-- `A031377(2*(n+1))` -/
def P5591748985726001025.Spec : Prop :=
  ∀ n, P5591748985726001025.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P17307221984439755425

`A091738(2*(n+1))`
-/

namespace A031380.P17307221984439755425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091738 (2 * (n + 1))

end

end A031380.P17307221984439755425

namespace A031380

/-- `A091738(2*(n+1))` -/
def P17307221984439755425.Spec : Prop :=
  ∀ n, P17307221984439755425.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P7659257677581989487

`∩[A031377(n+1), A091738(n+1)]`
-/

namespace A031380.P7659257677581989487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031380.P7659257677581989487

namespace A031380

/-- `∩[A031377(n+1), A091738(n+1)]` -/
def P7659257677581989487.Spec : Prop :=
  ∀ n, (P7659257677581989487.a n : ℤ) = A031380 (n + 1)

end A031380

/-! ## A031380.P11939374344932922517

`A031215(3*n+2)`
-/

namespace A031380.P11939374344932922517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (3 * n + 2)

end

end A031380.P11939374344932922517

namespace A031380

/-- `A031215(3*n+2)` -/
def P11939374344932922517.Spec : Prop :=
  ∀ n, P11939374344932922517.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P996564912937967025

`A055670(6*n+4)-1`
-/

namespace A031380.P996564912937967025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (6 * n + 4) - 1

end

end A031380.P996564912937967025

namespace A031380

/-- `A055670(6*n+4)-1` -/
def P996564912937967025.Spec : Prop :=
  ∀ n, P996564912937967025.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P13823115311287007980

`A001748(6*n+4)/3`
-/

namespace A031380.P13823115311287007980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (6 * n + 4) : ℚ) / 3

end

end A031380.P13823115311287007980

namespace A031380

/-- `A001748(6*n+4)/3` -/
def P13823115311287007980.Spec : Prop :=
  ∀ n, P13823115311287007980.a n = (A031380 (n + 1) : ℚ)

end A031380

/-! ## A031380.P11465208548298975239

`or(1, A031215(A016789(n)))`
-/

namespace A031380.P11465208548298975239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031215 (A016789 n).toNat)

end

end A031380.P11465208548298975239

namespace A031380

/-- `or(1, A031215(A016789(n)))` -/
def P11465208548298975239.Spec : Prop :=
  ∀ n, P11465208548298975239.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P8413003343136740295

`∩[A031215(n+1), A031377(n+1)]`
-/

namespace A031380.P8413003343136740295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031380.P8413003343136740295

namespace A031380

/-- `∩[A031215(n+1), A031377(n+1)]` -/
def P8413003343136740295.Spec : Prop :=
  ∀ n, (P8413003343136740295.a n : ℤ) = A031380 (n + 1)

end A031380

/-! ## A031380.P5019486177662260407

`∩[A031377(n+1), A066207(n+1)]`
-/

namespace A031380.P5019486177662260407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031380.P5019486177662260407

namespace A031380

/-- `∩[A031377(n+1), A066207(n+1)]` -/
def P5019486177662260407.Spec : Prop :=
  ∀ n, (P5019486177662260407.a n : ℤ) = A031380 (n + 1)

end A031380

/-! ## A031380.P278580438482324803

`A045319(6*n+3)`
-/

namespace A031380.P278580438482324803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (6 * n + 3)

end

end A031380.P278580438482324803

namespace A031380

/-- `A045319(6*n+3)` -/
def P278580438482324803.Spec : Prop :=
  ∀ n, P278580438482324803.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P5585073749112162815

`A045344(6*n+3)`
-/

namespace A031380.P5585073749112162815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (6 * n + 3)

end

end A031380.P5585073749112162815

namespace A031380

/-- `A045344(6*n+3)` -/
def P5585073749112162815.Spec : Prop :=
  ∀ n, P5585073749112162815.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P12729324317623224221

`A065091(6*n+3)`
-/

namespace A031380.P12729324317623224221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (6 * n + 3)

end

end A031380.P12729324317623224221

namespace A031380

/-- `A065091(6*n+3)` -/
def P12729324317623224221.Spec : Prop :=
  ∀ n, P12729324317623224221.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P1253427125258555511

`A140475(6*n+3)`
-/

namespace A031380.P1253427125258555511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (6 * n + 3)

end

end A031380.P1253427125258555511

namespace A031380

/-- `A140475(6*n+3)` -/
def P1253427125258555511.Spec : Prop :=
  ∀ n, P1253427125258555511.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P12668748324934552755

`A093515(6*(2*n+1))`
-/

namespace A031380.P12668748324934552755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (6 * (2 * n + 1))

end

end A031380.P12668748324934552755

namespace A031380

/-- `A093515(6*(2*n+1))` -/
def P12668748324934552755.Spec : Prop :=
  ∀ n, P12668748324934552755.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P4946664021674036076

`A006093(3*Δ[n²]+1)+1`
-/

namespace A031380.P4946664021674036076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1).toNat + 1

end

end A031380.P4946664021674036076

namespace A031380

/-- `A006093(3*Δ[n²]+1)+1` -/
def P4946664021674036076.Spec : Prop :=
  ∀ n, P4946664021674036076.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P2190367976912575864

`A040976(3*(2*n+1)+1)+2`
-/

namespace A031380.P2190367976912575864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (3 * (2 * n + 1) + 1) + 2

end

end A031380.P2190367976912575864

namespace A031380

/-- `A040976(3*(2*n+1)+1)+2` -/
def P2190367976912575864.Spec : Prop :=
  ∀ n, P2190367976912575864.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P6422598285270096216

`A008864(2*n+4*(n+1))-1`
-/

namespace A031380.P6422598285270096216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (2 * n + 4 * (n + 1)) - 1

end

end A031380.P6422598285270096216

namespace A031380

/-- `A008864(2*n+4*(n+1))-1` -/
def P6422598285270096216.Spec : Prop :=
  ∀ n, P6422598285270096216.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P11121799873076064554

`A004139(A016933(n))`
-/

namespace A031380.P11121799873076064554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A016933 n).toNat

end

end A031380.P11121799873076064554

namespace A031380

/-- `A004139(A016933(n))` -/
def P11121799873076064554.Spec : Prop :=
  ∀ n, P11121799873076064554.a n = A031380 (n + 1)

end A031380

/-! ## A031380.P5610518716527637930

`A108719(A271114(n))`
-/

namespace A031380.P5610518716527637930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A271114 n).toNat

end

end A031380.P5610518716527637930

namespace A031380

/-- `A108719(A271114(n))` -/
def P5610518716527637930.Spec : Prop :=
  ∀ n, P5610518716527637930.a n = A031380 (n + 1)

end A031380

/-!
# A031381: a(n) = prime(7*n - 2).

The programs for A031381, the canonical program `A031381.P8878317618231561466` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031381 has offset 1).

The definition of A031381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(7*(n+1)-2)` (program `A031381.P8878317618231561466`, by `A031381.P8878317618231561466.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031381.P8878317618231561466

`A000040(7*(n+1)-2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031381

/-- `A000040(7*(n+1)-2)` -/
def P8878317618231561466.Spec : Prop :=
  ∀ n, P8878317618231561466.a n = A031381 (n + 1)

theorem P8878317618231561466.correct : P8878317618231561466.Spec := by
  intro n
  simp only [A031381, Nat.add_sub_cancel]

end A031381

/-! ## A031381.P4365240931444153468

`A001749(A017041(n))/4`
-/

namespace A031381.P4365240931444153468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017041 n).toNat : ℚ) / 4

end

end A031381.P4365240931444153468

namespace A031381

/-- `A001749(A017041(n))/4` -/
def P4365240931444153468.Spec : Prop :=
  ∀ n, P4365240931444153468.a n = (A031381 (n + 1) : ℚ)

end A031381

/-! ## A031381.P3117860562668869963

`A156037(A016969(n)+n)+1`
-/

namespace A031381.P3117860562668869963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A016969 n + (n : ℤ)).toNat + 1

end

end A031381.P3117860562668869963

namespace A031381

/-- `A156037(A016969(n)+n)+1` -/
def P3117860562668869963.Spec : Prop :=
  ∀ n, P3117860562668869963.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P9866891678523642942

`A004139(7*n+3)`
-/

namespace A031381.P9866891678523642942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (7 * n + 3)

end

end A031381.P9866891678523642942

namespace A031381

/-- `A004139(7*n+3)` -/
def P9866891678523642942.Spec : Prop :=
  ∀ n, P9866891678523642942.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P5672600059444907447

`A215848(7*n+3)`
-/

namespace A031381.P5672600059444907447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (7 * n + 3)

end

end A031381.P5672600059444907447

namespace A031381

/-- `A215848(7*n+3)` -/
def P5672600059444907447.Spec : Prop :=
  ∀ n, P5672600059444907447.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P2813754845930449279

`A065091(7*n+4)`
-/

namespace A031381.P2813754845930449279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (7 * n + 4)

end

end A031381.P2813754845930449279

namespace A031381

/-- `A065091(7*n+4)` -/
def P2813754845930449279.Spec : Prop :=
  ∀ n, P2813754845930449279.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P14565822389332936924

`A045319(A017029(n))`
-/

namespace A031381.P14565822389332936924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017029 n).toNat

end

end A031381.P14565822389332936924

namespace A031381

/-- `A045319(A017029(n))` -/
def P14565822389332936924.Spec : Prop :=
  ∀ n, P14565822389332936924.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P16259782488576125735

`A140461(A017005(n))`
-/

namespace A031381.P16259782488576125735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (A017005 n).toNat

end

end A031381.P16259782488576125735

namespace A031381

/-- `A140461(A017005(n))` -/
def P16259782488576125735.Spec : Prop :=
  ∀ n, P16259782488576125735.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P16307381867032980085

`A045319(A017041(n)-1)`
-/

namespace A031381.P16307381867032980085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017041 n - 1).toNat

end

end A031381.P16307381867032980085

namespace A031381

/-- `A045319(A017041(n)-1)` -/
def P16307381867032980085.Spec : Prop :=
  ∀ n, P16307381867032980085.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P11624376201935859477

`A045319(A017053(n)-2)`
-/

namespace A031381.P11624376201935859477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017053 n - 2).toNat

end

end A031381.P11624376201935859477

namespace A031381

/-- `A045319(A017053(n)-2)` -/
def P11624376201935859477.Spec : Prop :=
  ∀ n, P11624376201935859477.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P3635713712429013582

`A045319(A016957(n)+n)`
-/

namespace A031381.P3635713712429013582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A016957 n + (n : ℤ)).toNat

end

end A031381.P3635713712429013582

namespace A031381

/-- `A045319(A016957(n)+n)` -/
def P3635713712429013582.Spec : Prop :=
  ∀ n, P3635713712429013582.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P5880966943876879662

`A157996(A022144(n)-n)`
-/

namespace A031381.P5880966943876879662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A022144 n - (n : ℤ)).toNat

end

end A031381.P5880966943876879662

namespace A031381

/-- `A157996(A022144(n)-n)` -/
def P5880966943876879662.Spec : Prop :=
  ∀ n, P5880966943876879662.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P14162263574730588014

`A046022(7*(n+1))`
-/

namespace A031381.P14162263574730588014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (7 * (n + 1))

end

end A031381.P14162263574730588014

namespace A031381

/-- `A046022(7*(n+1))` -/
def P14162263574730588014.Spec : Prop :=
  ∀ n, P14162263574730588014.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P3755766233351516367

`A158611(7*(n+1))`
-/

namespace A031381.P3755766233351516367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (7 * (n + 1))

end

end A031381.P3755766233351516367

namespace A031381

/-- `A158611(7*(n+1))` -/
def P3755766233351516367.Spec : Prop :=
  ∀ n, P3755766233351516367.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P7838663252055173584

`A161346(7*(n+1))`
-/

namespace A031381.P7838663252055173584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (7 * (n + 1))

end

end A031381.P7838663252055173584

namespace A031381

/-- `A161346(7*(n+1))` -/
def P7838663252055173584.Spec : Prop :=
  ∀ n, P7838663252055173584.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P5028829861941287465

`A193339(7*(n+1))`
-/

namespace A031381.P5028829861941287465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (7 * (n + 1))

end

end A031381.P5028829861941287465

namespace A031381

/-- `A193339(7*(n+1))` -/
def P5028829861941287465.Spec : Prop :=
  ∀ n, P5028829861941287465.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P13655296512148854583

`A335402(7*(n+1))`
-/

namespace A031381.P13655296512148854583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (7 * (n + 1))

end

end A031381.P13655296512148854583

namespace A031381

/-- `A335402(7*(n+1))` -/
def P13655296512148854583.Spec : Prop :=
  ∀ n, P13655296512148854583.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P10755273751806686348

`A006005(7*n+5)`
-/

namespace A031381.P10755273751806686348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (7 * n + 5)

end

end A031381.P10755273751806686348

namespace A031381

/-- `A006005(7*n+5)` -/
def P10755273751806686348.Spec : Prop :=
  ∀ n, P10755273751806686348.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P10609539189037243125

`A008578(7*n+6)`
-/

namespace A031381.P10609539189037243125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (7 * n + 6)

end

end A031381.P10609539189037243125

namespace A031381

/-- `A008578(7*n+6)` -/
def P10609539189037243125.Spec : Prop :=
  ∀ n, P10609539189037243125.a n = A031381 (n + 1)

end A031381

/-! ## A031381.P2549757288328428835

`A182986(7*n+6)`
-/

namespace A031381.P2549757288328428835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (7 * n + 6)

end

end A031381.P2549757288328428835

namespace A031381

/-- `A182986(7*n+6)` -/
def P2549757288328428835.Spec : Prop :=
  ∀ n, P2549757288328428835.a n = A031381 (n + 1)

end A031381

/-!
# A031382: a(n) = prime(8*n - 2).

The programs for A031382, the canonical program `A031382.P15470646938025085887` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031382 has offset 1).

The definition of A031382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(8*(n+1)-2)` (program `A031382.P15470646938025085887`, by `A031382.P15470646938025085887.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031382.P15470646938025085887

`A000040(8*(n+1)-2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031382

/-- `A000040(8*(n+1)-2)` -/
def P15470646938025085887.Spec : Prop :=
  ∀ n, P15470646938025085887.a n = A031382 (n + 1)

theorem P15470646938025085887.correct : P15470646938025085887.Spec := by
  intro n
  simp only [A031382, Nat.add_sub_cancel]

end A031382

/-! ## A031382.P8648011770165763457

`A031378(2*(n+1))`
-/

namespace A031382.P8648011770165763457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031378 (2 * (n + 1))

end

end A031382.P8648011770165763457

namespace A031382

/-- `A031378(2*(n+1))` -/
def P8648011770165763457.Spec : Prop :=
  ∀ n, P8648011770165763457.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P11429617446977379059

`A060192(4*n+2)`
-/

namespace A031382.P11429617446977379059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 (4 * n + 2)

end

end A031382.P11429617446977379059

namespace A031382

/-- `A060192(4*n+2)` -/
def P11429617446977379059.Spec : Prop :=
  ∀ n, P11429617446977379059.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P2852651267668523321

`A031215(4*n+3)`
-/

namespace A031382.P2852651267668523321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (4 * n + 3)

end

end A031382.P2852651267668523321

namespace A031382

/-- `A031215(4*n+3)` -/
def P2852651267668523321.Spec : Prop :=
  ∀ n, P2852651267668523321.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P7107021138708506629

`A001749(A017137(n))/4`
-/

namespace A031382.P7107021138708506629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017137 n).toNat : ℚ) / 4

end

end A031382.P7107021138708506629

namespace A031382

/-- `A001749(A017137(n))/4` -/
def P7107021138708506629.Spec : Prop :=
  ∀ n, P7107021138708506629.a n = (A031382 (n + 1) : ℚ)

end A031382

/-! ## A031382.P7984206544301106234

`A071621(A022144(n))`
-/

namespace A031382.P7984206544301106234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A022144 n).toNat

end

end A031382.P7984206544301106234

namespace A031382

/-- `A071621(A022144(n))` -/
def P7984206544301106234.Spec : Prop :=
  ∀ n, P7984206544301106234.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P15722993950777136582

`A078138(A133655(n))`
-/

namespace A031382.P15722993950777136582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (A133655 n).toNat

end

end A031382.P15722993950777136582

namespace A031382

/-- `A078138(A133655(n))` -/
def P15722993950777136582.Spec : Prop :=
  ∀ n, P15722993950777136582.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P16478903032062424279

`A071621(A008486(3*n)-n)`
-/

namespace A031382.P16478903032062424279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A008486 (3 * n) - (n : ℤ)).toNat

end

end A031382.P16478903032062424279

namespace A031382

/-- `A071621(A008486(3*n)-n)` -/
def P16478903032062424279.Spec : Prop :=
  ∀ n, P16478903032062424279.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P13814605112081574549

`A071621(5*n+A008486(n))`
-/

namespace A031382.P13814605112081574549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 ((5 * n : ℤ) + A008486 n).toNat

end

end A031382.P13814605112081574549

namespace A031382

/-- `A071621(5*n+A008486(n))` -/
def P13814605112081574549.Spec : Prop :=
  ∀ n, P13814605112081574549.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P7758400758596220472

`A008578(record[xor(7, n)])`
-/

namespace A031382.P7758400758596220472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A031382.P7758400758596220472

namespace A031382

/-- `A008578(record[xor(7, n)])` -/
def P7758400758596220472.Spec : Prop :=
  ∀ n, P7758400758596220472.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P16784431663137535768

`A046022(8*(n+1))`
-/

namespace A031382.P16784431663137535768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (8 * (n + 1))

end

end A031382.P16784431663137535768

namespace A031382

/-- `A046022(8*(n+1))` -/
def P16784431663137535768.Spec : Prop :=
  ∀ n, P16784431663137535768.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P8108315941332596802

`A158611(8*(n+1))`
-/

namespace A031382.P8108315941332596802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (8 * (n + 1))

end

end A031382.P8108315941332596802

namespace A031382

/-- `A158611(8*(n+1))` -/
def P8108315941332596802.Spec : Prop :=
  ∀ n, P8108315941332596802.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P9011207614096197463

`A161346(8*(n+1))`
-/

namespace A031382.P9011207614096197463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (8 * (n + 1))

end

end A031382.P9011207614096197463

namespace A031382

/-- `A161346(8*(n+1))` -/
def P9011207614096197463.Spec : Prop :=
  ∀ n, P9011207614096197463.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P10889343661666780583

`A193339(8*(n+1))`
-/

namespace A031382.P10889343661666780583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (8 * (n + 1))

end

end A031382.P10889343661666780583

namespace A031382

/-- `A193339(8*(n+1))` -/
def P10889343661666780583.Spec : Prop :=
  ∀ n, P10889343661666780583.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P4277551636390970413

`A335402(8*(n+1))`
-/

namespace A031382.P4277551636390970413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (8 * (n + 1))

end

end A031382.P4277551636390970413

namespace A031382

/-- `A335402(8*(n+1))` -/
def P4277551636390970413.Spec : Prop :=
  ∀ n, P4277551636390970413.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P12457769401991952053

`A004139(8*n+4)`
-/

namespace A031382.P12457769401991952053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (8 * n + 4)

end

end A031382.P12457769401991952053

namespace A031382

/-- `A004139(8*n+4)` -/
def P12457769401991952053.Spec : Prop :=
  ∀ n, P12457769401991952053.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P1964062819737503326

`A215848(8*n+4)`
-/

namespace A031382.P1964062819737503326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (8 * n + 4)

end

end A031382.P1964062819737503326

namespace A031382

/-- `A215848(8*n+4)` -/
def P1964062819737503326.Spec : Prop :=
  ∀ n, P1964062819737503326.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P3429492956457979206

`record[A000040(xor(3, or(5, n)))]`
-/

namespace A031382.P3429492956457979206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.xor 3 (Nat.lor 5 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031382.P3429492956457979206

namespace A031382

/-- `record[A000040(xor(3, or(5, n)))]` -/
def P3429492956457979206.Spec : Prop :=
  ∀ n, P3429492956457979206.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P16306187262306195282

`record[A000040(lcm(4, n+1)+2)]`
-/

namespace A031382.P16306187262306195282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lcm 4 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031382.P16306187262306195282

namespace A031382

/-- `record[A000040(lcm(4, n+1)+2)]` -/
def P16306187262306195282.Spec : Prop :=
  ∀ n, P16306187262306195282.a n = A031382 (n + 1)

end A031382

/-! ## A031382.P9764280809022798616

`A008578(A004771(n))`
-/

namespace A031382.P9764280809022798616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004771 n).toNat

end

end A031382.P9764280809022798616

namespace A031382

/-- `A008578(A004771(n))` -/
def P9764280809022798616.Spec : Prop :=
  ∀ n, P9764280809022798616.a n = A031382 (n + 1)

end A031382

/-!
# A031383: a(n) = prime(9*n - 2).

The programs for A031383, the canonical program `A031383.P14648744335981175329` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031383 has offset 1).

The definition of A031383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(9*(n+1)-2)` (program `A031383.P14648744335981175329`, by `A031383.P14648744335981175329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031383.P14648744335981175329

`A000040(9*(n+1)-2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031383

/-- `A000040(9*(n+1)-2)` -/
def P14648744335981175329.Spec : Prop :=
  ∀ n, P14648744335981175329.a n = A031383 (n + 1)

theorem P14648744335981175329.correct : P14648744335981175329.Spec := by
  intro n
  simp only [A031383, Nat.add_sub_cancel]

end A031383

/-! ## A031383.P194245590334256938

`A031377(3*(n+1))`
-/

namespace A031383.P194245590334256938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (3 * (n + 1))

end

end A031383.P194245590334256938

namespace A031383

/-- `A031377(3*(n+1))` -/
def P194245590334256938.Spec : Prop :=
  ∀ n, P194245590334256938.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P3054710707300455506

`A001748(A017245(n))/3`
-/

namespace A031383.P3054710707300455506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A017245 n).toNat : ℚ) / 3

end

end A031383.P3054710707300455506

namespace A031383

/-- `A001748(A017245(n))/3` -/
def P3054710707300455506.Spec : Prop :=
  ∀ n, P3054710707300455506.a n = (A031383 (n + 1) : ℚ)

end A031383

/-! ## A031383.P11716700544147113599

`A156037(9*n+7)+1`
-/

namespace A031383.P11716700544147113599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (9 * n + 7) + 1

end

end A031383.P11716700544147113599

namespace A031383

/-- `A156037(9*n+7)+1` -/
def P11716700544147113599.Spec : Prop :=
  ∀ n, P11716700544147113599.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P18378793981595626229

`p?[dr(2*n)*p?[2*n+1]]`
-/

namespace A031383.P18378793981595626229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * n : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031383.P18378793981595626229

namespace A031383

/-- `p?[dr(2*n)*p?[2*n+1]]` -/
def P18378793981595626229.Spec : Prop :=
  ∀ n, (P18378793981595626229.a n : ℤ) = A031383 (n + 1)

end A031383

/-! ## A031383.P5751359269825947842

`A046022(9*(n+1))`
-/

namespace A031383.P5751359269825947842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (9 * (n + 1))

end

end A031383.P5751359269825947842

namespace A031383

/-- `A046022(9*(n+1))` -/
def P5751359269825947842.Spec : Prop :=
  ∀ n, P5751359269825947842.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P4610978663629287523

`A158611(9*(n+1))`
-/

namespace A031383.P4610978663629287523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (9 * (n + 1))

end

end A031383.P4610978663629287523

namespace A031383

/-- `A158611(9*(n+1))` -/
def P4610978663629287523.Spec : Prop :=
  ∀ n, P4610978663629287523.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P2297303604382884152

`A161346(9*(n+1))`
-/

namespace A031383.P2297303604382884152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (9 * (n + 1))

end

end A031383.P2297303604382884152

namespace A031383

/-- `A161346(9*(n+1))` -/
def P2297303604382884152.Spec : Prop :=
  ∀ n, P2297303604382884152.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P6879912748647294009

`A162788(9*(n+1))`
-/

namespace A031383.P6879912748647294009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (9 * (n + 1))

end

end A031383.P6879912748647294009

namespace A031383

/-- `A162788(9*(n+1))` -/
def P6879912748647294009.Spec : Prop :=
  ∀ n, P6879912748647294009.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P1316117697795978674

`A193339(9*(n+1))`
-/

namespace A031383.P1316117697795978674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (9 * (n + 1))

end

end A031383.P1316117697795978674

namespace A031383

/-- `A193339(9*(n+1))` -/
def P1316117697795978674.Spec : Prop :=
  ∀ n, P1316117697795978674.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P5507014421207164987

`A335402(9*(n+1))`
-/

namespace A031383.P5507014421207164987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (9 * (n + 1))

end

end A031383.P5507014421207164987

namespace A031383

/-- `A335402(9*(n+1))` -/
def P5507014421207164987.Spec : Prop :=
  ∀ n, P5507014421207164987.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P18258274632884105699

`A004139(9*n+5)`
-/

namespace A031383.P18258274632884105699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (9 * n + 5)

end

end A031383.P18258274632884105699

namespace A031383

/-- `A004139(9*n+5)` -/
def P18258274632884105699.Spec : Prop :=
  ∀ n, P18258274632884105699.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P11348606740135417511

`A083249(9*n+7)`
-/

namespace A031383.P11348606740135417511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (9 * n + 7)

end

end A031383.P11348606740135417511

namespace A031383

/-- `A083249(9*n+7)` -/
def P11348606740135417511.Spec : Prop :=
  ∀ n, P11348606740135417511.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P14569812959896336613

`A008578(9*n+8)`
-/

namespace A031383.P14569812959896336613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 8)

end

end A031383.P14569812959896336613

namespace A031383

/-- `A008578(9*n+8)` -/
def P14569812959896336613.Spec : Prop :=
  ∀ n, P14569812959896336613.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P7916280726638672140

`A006093(9*n+7)+1`
-/

namespace A031383.P7916280726638672140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (9 * n + 7) + 1

end

end A031383.P7916280726638672140

namespace A031383

/-- `A006093(9*n+7)+1` -/
def P7916280726638672140.Spec : Prop :=
  ∀ n, P7916280726638672140.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P9390942189876269253

`A040976(9*n+7)+2`
-/

namespace A031383.P9390942189876269253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (9 * n + 7) + 2

end

end A031383.P9390942189876269253

namespace A031383

/-- `A040976(9*n+7)+2` -/
def P9390942189876269253.Spec : Prop :=
  ∀ n, P9390942189876269253.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P13157361169745415377

`A065091(8*n+6+n)`
-/

namespace A031383.P13157361169745415377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (8 * n + 6 + n)

end

end A031383.P13157361169745415377

namespace A031383

/-- `A065091(8*n+6+n)` -/
def P13157361169745415377.Spec : Prop :=
  ∀ n, P13157361169745415377.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P2897244005242780566

`abs(1-A008864(9*n+7))`
-/

namespace A031383.P2897244005242780566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A008864 (9 * n + 7)|

end

end A031383.P2897244005242780566

namespace A031383

/-- `abs(1-A008864(9*n+7))` -/
def P2897244005242780566.Spec : Prop :=
  ∀ n, P2897244005242780566.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P1624119275300761614

`A045319(A017233(n))`
-/

namespace A031383.P1624119275300761614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017233 n).toNat

end

end A031383.P1624119275300761614

namespace A031383

/-- `A045319(A017233(n))` -/
def P1624119275300761614.Spec : Prop :=
  ∀ n, P1624119275300761614.a n = A031383 (n + 1)

end A031383

/-! ## A031383.P5971072897006861915

`A108719(A017209(n))`
-/

namespace A031383.P5971072897006861915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017209 n).toNat

end

end A031383.P5971072897006861915

namespace A031383

/-- `A108719(A017209(n))` -/
def P5971072897006861915.Spec : Prop :=
  ∀ n, P5971072897006861915.a n = A031383 (n + 1)

end A031383

/-!
# A031384: a(n) = prime(10*n - 2).

The programs for A031384, the canonical program `A031384.P1606058216891611286` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031384 has offset 1).

The definition of A031384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(10*(n+1)-2)` (program `A031384.P1606058216891611286`, by `A031384.P1606058216891611286.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031384.P1606058216891611286

`A000040(10*(n+1)-2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031384

/-- `A000040(10*(n+1)-2)` -/
def P1606058216891611286.Spec : Prop :=
  ∀ n, P1606058216891611286.a n = A031384 (n + 1)

theorem P1606058216891611286.correct : P1606058216891611286.Spec := by
  intro n
  simp only [A031384, Nat.add_sub_cancel]

end A031384

/-! ## A031384.P16213216840638665120

`A031379(2*(n+1))`
-/

namespace A031384.P16213216840638665120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031379 (2 * (n + 1))

end

end A031384.P16213216840638665120

namespace A031384

/-- `A031379(2*(n+1))` -/
def P16213216840638665120.Spec : Prop :=
  ∀ n, P16213216840638665120.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P9023148076662582076

`A031215(4*(n+1)+n)`
-/

namespace A031384.P9023148076662582076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (4 * (n + 1) + n)

end

end A031384.P9023148076662582076

namespace A031384

/-- `A031215(4*(n+1)+n)` -/
def P9023148076662582076.Spec : Prop :=
  ∀ n, P9023148076662582076.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P6151925061074002513

`∩[A031215(n+1), A031379(n+1)]`
-/

namespace A031384.P6151925061074002513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031384.P6151925061074002513

namespace A031384

/-- `∩[A031215(n+1), A031379(n+1)]` -/
def P6151925061074002513.Spec : Prop :=
  ∀ n, (P6151925061074002513.a n : ℤ) = A031384 (n + 1)

end A031384

/-! ## A031384.P11563414381764182398

`∩[A031379(n+1), A066207(n+1)]`
-/

namespace A031384.P11563414381764182398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031384.P11563414381764182398

namespace A031384

/-- `∩[A031379(n+1), A066207(n+1)]` -/
def P11563414381764182398.Spec : Prop :=
  ∀ n, (P11563414381764182398.a n : ℤ) = A031384 (n + 1)

end A031384

/-! ## A031384.P8228469248905245199

`A156037(A017365(n))+1`
-/

namespace A031384.P8228469248905245199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A017365 n).toNat + 1

end

end A031384.P8228469248905245199

namespace A031384

/-- `A156037(A017365(n))+1` -/
def P8228469248905245199.Spec : Prop :=
  ∀ n, P8228469248905245199.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P17077169653028521767

`A046022(10*(n+1))`
-/

namespace A031384.P17077169653028521767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (10 * (n + 1))

end

end A031384.P17077169653028521767

namespace A031384

/-- `A046022(10*(n+1))` -/
def P17077169653028521767.Spec : Prop :=
  ∀ n, P17077169653028521767.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P6823847978185715860

`A158611(10*(n+1))`
-/

namespace A031384.P6823847978185715860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (10 * (n + 1))

end

end A031384.P6823847978185715860

namespace A031384

/-- `A158611(10*(n+1))` -/
def P6823847978185715860.Spec : Prop :=
  ∀ n, P6823847978185715860.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P15746554184367404318

`A162788(10*(n+1))`
-/

namespace A031384.P15746554184367404318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (10 * (n + 1))

end

end A031384.P15746554184367404318

namespace A031384

/-- `A162788(10*(n+1))` -/
def P15746554184367404318.Spec : Prop :=
  ∀ n, P15746554184367404318.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P2284464406833428551

`A004139(10*n+6)`
-/

namespace A031384.P2284464406833428551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (10 * n + 6)

end

end A031384.P2284464406833428551

namespace A031384

/-- `A004139(10*n+6)` -/
def P2284464406833428551.Spec : Prop :=
  ∀ n, P2284464406833428551.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P5929999342221592383

`A008578(10*n+9)`
-/

namespace A031384.P5929999342221592383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (10 * n + 9)

end

end A031384.P5929999342221592383

namespace A031384

/-- `A008578(10*n+9)` -/
def P5929999342221592383.Spec : Prop :=
  ∀ n, P5929999342221592383.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P10037934316281935778

`A108719(5*(2*n+1))`
-/

namespace A031384.P10037934316281935778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (5 * (2 * n + 1))

end

end A031384.P10037934316281935778

namespace A031384

/-- `A108719(5*(2*n+1))` -/
def P10037934316281935778.Spec : Prop :=
  ∀ n, P10037934316281935778.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P14041974837791486858

`A140461(5*(2*n+1))`
-/

namespace A031384.P14041974837791486858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (5 * (2 * n + 1))

end

end A031384.P14041974837791486858

namespace A031384

/-- `A140461(5*(2*n+1))` -/
def P14041974837791486858.Spec : Prop :=
  ∀ n, P14041974837791486858.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P9758785110391478050

`A040976(10*n+8)+2`
-/

namespace A031384.P9758785110391478050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (10 * n + 8) + 2

end

end A031384.P9758785110391478050

namespace A031384

/-- `A040976(10*n+8)+2` -/
def P9758785110391478050.Spec : Prop :=
  ∀ n, P9758785110391478050.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P17059217505783406036

`A065091(8*n+7+2*n)`
-/

namespace A031384.P17059217505783406036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (8 * n + 7 + 2 * n)

end

end A031384.P17059217505783406036

namespace A031384

/-- `A065091(8*n+7+2*n)` -/
def P17059217505783406036.Spec : Prop :=
  ∀ n, P17059217505783406036.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P7746112026586057878

`A215848(12*n+6-2*n)`
-/

namespace A031384.P7746112026586057878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (12 * n + 6 - 2 * n)

end

end A031384.P7746112026586057878

namespace A031384

/-- `A215848(12*n+6-2*n)` -/
def P7746112026586057878.Spec : Prop :=
  ∀ n, P7746112026586057878.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P8068765084785359817

`A045319(A017353(n))`
-/

namespace A031384.P8068765084785359817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017353 n).toNat

end

end A031384.P8068765084785359817

namespace A031384

/-- `A045319(A017353(n))` -/
def P8068765084785359817.Spec : Prop :=
  ∀ n, P8068765084785359817.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P7020884806972025148

`A071621(A017293(n))`
-/

namespace A031384.P7020884806972025148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017293 n).toNat

end

end A031384.P7020884806972025148

namespace A031384

/-- `A071621(A017293(n))` -/
def P7020884806972025148.Spec : Prop :=
  ∀ n, P7020884806972025148.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P2506910851250103614

`A157996(A017305(n))`
-/

namespace A031384.P2506910851250103614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017305 n).toNat

end

end A031384.P2506910851250103614

namespace A031384

/-- `A157996(A017305(n))` -/
def P2506910851250103614.Spec : Prop :=
  ∀ n, P2506910851250103614.a n = A031384 (n + 1)

end A031384

/-! ## A031384.P11716710625331928172

`A045319(A017341(n)+1)`
-/

namespace A031384.P11716710625331928172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017341 n + 1).toNat

end

end A031384.P11716710625331928172

namespace A031384

/-- `A045319(A017341(n)+1)` -/
def P11716710625331928172.Spec : Prop :=
  ∀ n, P11716710625331928172.a n = A031384 (n + 1)

end A031384

/-!
# A031385: a(n) = prime(4*n-3).

The programs for A031385, the canonical program `A031385.P15452940551572154078` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031385 has offset 1).

The definition of A031385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(4*n+1)` (program `A031385.P15452940551572154078`, by `A031385.P15452940551572154078.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031385.P15452940551572154078

`A000040(4*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031385

/-- `A000040(4*n+1)` -/
def P15452940551572154078.Spec : Prop :=
  ∀ n, P15452940551572154078.a n = A031385 (n + 1)

theorem P15452940551572154078.correct : P15452940551572154078.Spec := by
  intro n
  simp only [A031385, Nat.add_sub_cancel]

end A031385

/-! ## A031385.P10065478227339010683

`A000040(4*(n+1)-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A031385.P10065478227339010683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (4 * (n + 1) - 3)

end

end A031385.P10065478227339010683

namespace A031385

/-- `A000040(4*(n+1)-3)` -/
def P10065478227339010683.Spec : Prop :=
  ∀ n, P10065478227339010683.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P2760080087250320963

`∪[A031389(n+1), A031915(n+1)]`
-/

namespace A031385.P2760080087250320963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031385.P2760080087250320963

namespace A031385

/-- `∪[A031389(n+1), A031915(n+1)]` -/
def P2760080087250320963.Spec : Prop :=
  ∀ n, (P2760080087250320963.a n : ℤ) = A031385 (n + 1)

end A031385

/-! ## A031385.P2694428471869780582

`A060191(2*n)`
-/

namespace A031385.P2694428471869780582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (2 * n)

end

end A031385.P2694428471869780582

namespace A031385

/-- `A060191(2*n)` -/
def P2694428471869780582.Spec : Prop :=
  ∀ n, P2694428471869780582.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P11582634088175327717

`A031368(Δ[n²])`
-/

namespace A031385.P11582634088175327717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031385.P11582634088175327717

namespace A031385

/-- `A031368(Δ[n²])` -/
def P11582634088175327717.Spec : Prop :=
  ∀ n, P11582634088175327717.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P17010987493874135659

`A001748(4*n+1)/3`
-/

namespace A031385.P17010987493874135659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (4 * n + 1) : ℚ) / 3

end

end A031385.P17010987493874135659

namespace A031385

/-- `A001748(4*n+1)/3` -/
def P17010987493874135659.Spec : Prop :=
  ∀ n, P17010987493874135659.a n = (A031385 (n + 1) : ℚ)

theorem P17010987493874135659.correct : P17010987493874135659.Spec := by
  intro n
  simp only [A031385, Nat.add_sub_cancel, A031385.P17010987493874135659.a, A031385.P15452940551572154078.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031385

/-! ## A031385.P7058494681178466968

`∩[A031368(n+1), A060191(n)]`
-/

namespace A031385.P7058494681178466968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031385.P7058494681178466968

namespace A031385

/-- `∩[A031368(n+1), A060191(n)]` -/
def P7058494681178466968.Spec : Prop :=
  ∀ n, (P7058494681178466968.a n : ℤ) = A031385 (n + 1)

end A031385

/-! ## A031385.P3603526810519826459

`∩[A324812(n+1), A060191(n)]`
-/

namespace A031385.P3603526810519826459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031385.P3603526810519826459

namespace A031385

/-- `∩[A324812(n+1), A060191(n)]` -/
def P3603526810519826459.Spec : Prop :=
  ∀ n, (P3603526810519826459.a n : ℤ) = A031385 (n + 1)

end A031385

/-! ## A031385.P7480979610346748035

`A045319(A008574(n))`
-/

namespace A031385.P7480979610346748035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008574 n).toNat

end

end A031385.P7480979610346748035

namespace A031385

/-- `A045319(A008574(n))` -/
def P7480979610346748035.Spec : Prop :=
  ∀ n, P7480979610346748035.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P11825034924604530424

`A045319(A004277(2*n))`
-/

namespace A031385.P11825034924604530424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A004277 (2 * n)).toNat

end

end A031385.P11825034924604530424

namespace A031385

/-- `A045319(A004277(2*n))` -/
def P11825034924604530424.Spec : Prop :=
  ∀ n, P11825034924604530424.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P17674236540340496462

`A008578(4*n+2)`
-/

namespace A031385.P17674236540340496462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (4 * n + 2)

end

end A031385.P17674236540340496462

namespace A031385

/-- `A008578(4*n+2)` -/
def P17674236540340496462.Spec : Prop :=
  ∀ n, P17674236540340496462.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P7572319491538237325

`A182986(4*n+2)`
-/

namespace A031385.P7572319491538237325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (4 * n + 2)

end

end A031385.P7572319491538237325

namespace A031385

/-- `A182986(4*n+2)` -/
def P7572319491538237325.Spec : Prop :=
  ∀ n, P7572319491538237325.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P10641791759513598478

`A158611(3*(n+1)+n)`
-/

namespace A031385.P10641791759513598478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (3 * (n + 1) + n)

end

end A031385.P10641791759513598478

namespace A031385

/-- `A158611(3*(n+1)+n)` -/
def P10641791759513598478.Spec : Prop :=
  ∀ n, P10641791759513598478.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P13734627389687491402

`A161847(3*n+n+1)`
-/

namespace A031385.P13734627389687491402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (3 * n + (n + 1))

end

end A031385.P13734627389687491402

namespace A031385

/-- `A161847(3*n+n+1)` -/
def P13734627389687491402.Spec : Prop :=
  ∀ n, P13734627389687491402.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P8662075917470586489

`A213642(3*n+n+1)`
-/

namespace A031385.P8662075917470586489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (3 * n + (n + 1))

end

end A031385.P8662075917470586489

namespace A031385

/-- `A213642(3*n+n+1)` -/
def P8662075917470586489.Spec : Prop :=
  ∀ n, P8662075917470586489.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P2990047346232671092

`A335402(3*(n+1)+n)`
-/

namespace A031385.P2990047346232671092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (3 * (n + 1) + n)

end

end A031385.P2990047346232671092

namespace A031385

/-- `A335402(3*(n+1)+n)` -/
def P2990047346232671092.Spec : Prop :=
  ∀ n, P2990047346232671092.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P16539254557959903853

`A383578(3*n+n+1)`
-/

namespace A031385.P16539254557959903853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (3 * n + (n + 1))

end

end A031385.P16539254557959903853

namespace A031385

/-- `A383578(3*n+n+1)` -/
def P16539254557959903853.Spec : Prop :=
  ∀ n, P16539254557959903853.a n = A031385 (n + 1)

end A031385

/-! ## A031385.P8516515770989524141

`record[A000040(lcm(2, n+1)-1)]`
-/

namespace A031385.P8516515770989524141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lcm 2 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031385.P8516515770989524141

namespace A031385

/-- `record[A000040(lcm(2, n+1)-1)]` -/
def P8516515770989524141.Spec : Prop :=
  ∀ n, P8516515770989524141.a n = A031385 (n + 1)

end A031385

/-!
# A031386: a(n) = prime(5*n-3).

The programs for A031386, the canonical program `A031386.P1746595684013913662` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031386 has offset 1).

The definition of A031386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(5*(n+1)-3)` (program `A031386.P1746595684013913662`, by `A031386.P1746595684013913662.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031386.P1746595684013913662

`A000040(5*(n+1)-3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031386

/-- `A000040(5*(n+1)-3)` -/
def P1746595684013913662.Spec : Prop :=
  ∀ n, P1746595684013913662.a n = A031386 (n + 1)

theorem P1746595684013913662.correct : P1746595684013913662.Spec := by
  intro n
  simp only [A031386, Nat.add_sub_cancel]

end A031386

/-! ## A031386.P8092609003281424807

`∪[A031391(n+1), A031919(n+1)]`
-/

namespace A031386.P8092609003281424807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031386.P8092609003281424807

namespace A031386

/-- `∪[A031391(n+1), A031919(n+1)]` -/
def P8092609003281424807.Spec : Prop :=
  ∀ n, (P8092609003281424807.a n : ℤ) = A031386 (n + 1)

end A031386

/-! ## A031386.P16948085470898338272

`A001749(5*n+2)/4`
-/

namespace A031386.P16948085470898338272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (5 * n + 2) : ℚ) / 4

end

end A031386.P16948085470898338272

namespace A031386

/-- `A001749(5*n+2)/4` -/
def P16948085470898338272.Spec : Prop :=
  ∀ n, P16948085470898338272.a n = (A031386 (n + 1) : ℚ)

end A031386

/-! ## A031386.P6510525556796221493

`A004139(A008706(n))`
-/

namespace A031386.P6510525556796221493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008706 n).toNat

end

end A031386.P6510525556796221493

namespace A031386

/-- `A004139(A008706(n))` -/
def P6510525556796221493.Spec : Prop :=
  ∀ n, P6510525556796221493.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P4608805003432542175

`A004139(A008574(n)+n)`
-/

namespace A031386.P4608805003432542175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008574 n + (n : ℤ)).toNat

end

end A031386.P4608805003432542175

namespace A031386

/-- `A004139(A008574(n)+n)` -/
def P4608805003432542175.Spec : Prop :=
  ∀ n, P4608805003432542175.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P15759308029259682231

`A004139(A008458(n)-n)`
-/

namespace A031386.P15759308029259682231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008458 n - (n : ℤ)).toNat

end

end A031386.P15759308029259682231

namespace A031386

/-- `A004139(A008458(n)-n)` -/
def P15759308029259682231.Spec : Prop :=
  ∀ n, P15759308029259682231.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P15295607314981208886

`A004139(A004277(2*n)+n)`
-/

namespace A031386.P15295607314981208886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A004277 (2 * n) + (n : ℤ)).toNat

end

end A031386.P15295607314981208886

namespace A031386

/-- `A004139(A004277(2*n)+n)` -/
def P15295607314981208886.Spec : Prop :=
  ∀ n, P15295607314981208886.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P9824635934409736045

`A065091(5*n+1)`
-/

namespace A031386.P9824635934409736045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (5 * n + 1)

end

end A031386.P9824635934409736045

namespace A031386

/-- `A065091(5*n+1)` -/
def P9824635934409736045.Spec : Prop :=
  ∀ n, P9824635934409736045.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P2761849609229008071

`A008578(5*n+3)`
-/

namespace A031386.P2761849609229008071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (5 * n + 3)

end

end A031386.P2761849609229008071

namespace A031386

/-- `A008578(5*n+3)` -/
def P2761849609229008071.Spec : Prop :=
  ∀ n, P2761849609229008071.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P2446723447031392577

`A182986(5*n+3)`
-/

namespace A031386.P2446723447031392577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (5 * n + 3)

end

end A031386.P2446723447031392577

namespace A031386

/-- `A182986(5*n+3)` -/
def P2446723447031392577.Spec : Prop :=
  ∀ n, P2446723447031392577.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P16449025087771851979

`A006005(4*n+2+n)`
-/

namespace A031386.P16449025087771851979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (4 * n + 2 + n)

end

end A031386.P16449025087771851979

namespace A031386

/-- `A006005(4*n+2+n)` -/
def P16449025087771851979.Spec : Prop :=
  ∀ n, P16449025087771851979.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P1708355654061631757

`A040976(2*n+3*n+2)+2`
-/

namespace A031386.P1708355654061631757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (2 * n + (3 * n + 2)) + 2

end

end A031386.P1708355654061631757

namespace A031386

/-- `A040976(2*n+3*n+2)+2` -/
def P1708355654061631757.Spec : Prop :=
  ∀ n, P1708355654061631757.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P1047892542443090352

`A158611(A016897(n))`
-/

namespace A031386.P1047892542443090352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A016897 n).toNat

end

end A031386.P1047892542443090352

namespace A031386

/-- `A158611(A016897(n))` -/
def P1047892542443090352.Spec : Prop :=
  ∀ n, P1047892542443090352.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P10210419834202081521

`A045319(A008706(n)+1)`
-/

namespace A031386.P10210419834202081521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008706 n + 1).toNat

end

end A031386.P10210419834202081521

namespace A031386

/-- `A045319(A008706(n)+1)` -/
def P10210419834202081521.Spec : Prop :=
  ∀ n, P10210419834202081521.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P336064749776058704

`A158611(A016957(n)-n)`
-/

namespace A031386.P336064749776058704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A016957 n - (n : ℤ)).toNat

end

end A031386.P336064749776058704

namespace A031386

/-- `A158611(A016957(n)-n)` -/
def P336064749776058704.Spec : Prop :=
  ∀ n, P336064749776058704.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P14265954524805263517

`A045319(A271114(n)-n)`
-/

namespace A031386.P14265954524805263517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A271114 n - (n : ℤ)).toNat

end

end A031386.P14265954524805263517

namespace A031386

/-- `A045319(A271114(n)-n)` -/
def P14265954524805263517.Spec : Prop :=
  ∀ n, P14265954524805263517.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P15295444158245047003

`record[A000040(A074067(n+2))]`
-/

namespace A031386.P15295444158245047003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074067 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031386.P15295444158245047003

namespace A031386

/-- `record[A000040(A074067(n+2))]` -/
def P15295444158245047003.Spec : Prop :=
  ∀ n, P15295444158245047003.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P17579113879511896880

`record[A000040(A241155(n+1)+1)]`
-/

namespace A031386.P17579113879511896880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A241155 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031386.P17579113879511896880

namespace A031386

/-- `record[A000040(A241155(n+1)+1)]` -/
def P17579113879511896880.Spec : Prop :=
  ∀ n, P17579113879511896880.a n = A031386 (n + 1)

end A031386

/-! ## A031386.P10706857391594837725

`record[A000040(A116547(n+1)+2)]`
-/

namespace A031386.P10706857391594837725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A116547 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031386.P10706857391594837725

namespace A031386

/-- `record[A000040(A116547(n+1)+2)]` -/
def P10706857391594837725.Spec : Prop :=
  ∀ n, P10706857391594837725.a n = A031386 (n + 1)

end A031386

/-!
# A031387: a(n) = prime(6*n-3).

The programs for A031387, the canonical program `A031387.P14145394994562439819` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031387 has offset 1).

The definition of A031387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(6*(n+1)-3)` (program `A031387.P14145394994562439819`, by `A031387.P14145394994562439819.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031387.P14145394994562439819

`A000040(6*(n+1)-3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031387

/-- `A000040(6*(n+1)-3)` -/
def P14145394994562439819.Spec : Prop :=
  ∀ n, P14145394994562439819.a n = A031387 (n + 1)

theorem P14145394994562439819.correct : P14145394994562439819.Spec := by
  intro n
  simp only [A031387, Nat.add_sub_cancel]

end A031387

/-! ## A031387.P4049417690404258223

`A031336(Δ[n²])`
-/

namespace A031387.P4049417690404258223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031387.P4049417690404258223

namespace A031387

/-- `A031336(Δ[n²])` -/
def P4049417690404258223.Spec : Prop :=
  ∀ n, P4049417690404258223.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P2854094486014425614

`record[A031336(A060819(n+1))]`
-/

namespace A031387.P2854094486014425614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (A060819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031387.P2854094486014425614

namespace A031387

/-- `record[A031336(A060819(n+1))]` -/
def P2854094486014425614.Spec : Prop :=
  ∀ n, P2854094486014425614.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P8270491294904338198

`lcm(A031336(2*n+1), A057077(n))`
-/

namespace A031387.P8270491294904338198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031336 (2 * n + 1)) (A057077 n)

end

end A031387.P8270491294904338198

namespace A031387

/-- `lcm(A031336(2*n+1), A057077(n))` -/
def P8270491294904338198.Spec : Prop :=
  ∀ n, (P8270491294904338198.a n : ℤ) = A031387 (n + 1)

end A031387

/-! ## A031387.P9783107327789115429

`A031336(2*n+1)%A328255(n+1)`
-/

namespace A031387.P9783107327789115429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031336 (2 * n + 1)) (A328255 (n + 1))

end

end A031387.P9783107327789115429

namespace A031387

/-- `A031336(2*n+1)%A328255(n+1)` -/
def P9783107327789115429.Spec : Prop :=
  ∀ n, P9783107327789115429.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P8095767615852324731

`A057077(n+2)²*A031336(2*n+1)`
-/

namespace A031387.P8095767615852324731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 2) ^ 2 * A031336 (2 * n + 1)

end

end A031387.P8095767615852324731

namespace A031387

/-- `A057077(n+2)²*A031336(2*n+1)` -/
def P8095767615852324731.Spec : Prop :=
  ∀ n, P8095767615852324731.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P15190739653982318328

`A031368(3*n+2)`
-/

namespace A031387.P15190739653982318328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (3 * n + 2)

end

end A031387.P15190739653982318328

namespace A031387

/-- `A031368(3*n+2)` -/
def P15190739653982318328.Spec : Prop :=
  ∀ n, P15190739653982318328.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P15825294419758873100

`∩[A031336(n+1), A031368(n+1)]`
-/

namespace A031387.P15825294419758873100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031387.P15825294419758873100

namespace A031387

/-- `∩[A031336(n+1), A031368(n+1)]` -/
def P15825294419758873100.Spec : Prop :=
  ∀ n, (P15825294419758873100.a n : ℤ) = A031387 (n + 1)

end A031387

/-! ## A031387.P3334633758390334958

`∩[A031336(n+1), A324812(n+1)]`
-/

namespace A031387.P3334633758390334958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031387.P3334633758390334958

namespace A031387

/-- `∩[A031336(n+1), A324812(n+1)]` -/
def P3334633758390334958.Spec : Prop :=
  ∀ n, (P3334633758390334958.a n : ℤ) = A031387 (n + 1)

end A031387

/-! ## A031387.P6144933020431396557

`A006005(6*n+3)`
-/

namespace A031387.P6144933020431396557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (6 * n + 3)

end

end A031387.P6144933020431396557

namespace A031387

/-- `A006005(6*n+3)` -/
def P6144933020431396557.Spec : Prop :=
  ∀ n, P6144933020431396557.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P9328457600842177395

`A171577(6*n+3)`
-/

namespace A031387.P9328457600842177395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (6 * n + 3)

end

end A031387.P9328457600842177395

namespace A031387

/-- `A171577(6*n+3)` -/
def P9328457600842177395.Spec : Prop :=
  ∀ n, P9328457600842177395.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P1808426015816450157

`A213642(6*n+3)`
-/

namespace A031387.P1808426015816450157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (6 * n + 3)

end

end A031387.P1808426015816450157

namespace A031387

/-- `A213642(6*n+3)` -/
def P1808426015816450157.Spec : Prop :=
  ∀ n, P1808426015816450157.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P15180901327545241568

`A318871(6*n+3)`
-/

namespace A031387.P15180901327545241568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (6 * n + 3)

end

end A031387.P15180901327545241568

namespace A031387

/-- `A318871(6*n+3)` -/
def P15180901327545241568.Spec : Prop :=
  ∀ n, P15180901327545241568.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P11470175787957968129

`or(1, A000040(Δ[3*n²]))`
-/

namespace A031387.P11470175787957968129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A031387.P11470175787957968129

namespace A031387

/-- `or(1, A000040(Δ[3*n²]))` -/
def P11470175787957968129.Spec : Prop :=
  ∀ n, P11470175787957968129.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P16402533558498319519

`record[A000040(or(1, 3*xor(1, n)))]`
-/

namespace A031387.P16402533558498319519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 1 (3 * Nat.xor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031387.P16402533558498319519

namespace A031387

/-- `record[A000040(or(1, 3*xor(1, n)))]` -/
def P16402533558498319519.Spec : Prop :=
  ∀ n, P16402533558498319519.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P8910469078462683591

`A008578(A016957(n))`
-/

namespace A031387.P8910469078462683591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A016957 n).toNat

end

end A031387.P8910469078462683591

namespace A031387

/-- `A008578(A016957(n))` -/
def P8910469078462683591.Spec : Prop :=
  ∀ n, P8910469078462683591.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P11448391332760859384

`A045344(A016933(n))`
-/

namespace A031387.P11448391332760859384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A016933 n).toNat

end

end A031387.P11448391332760859384

namespace A031387

/-- `A045344(A016933(n))` -/
def P11448391332760859384.Spec : Prop :=
  ∀ n, P11448391332760859384.a n = A031387 (n + 1)

end A031387

/-! ## A031387.P1565481079899212447

`A108719(A008458(n))`
-/

namespace A031387.P1565481079899212447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008458 n).toNat

end

end A031387.P1565481079899212447

namespace A031387

/-- `A108719(A008458(n))` -/
def P1565481079899212447.Spec : Prop :=
  ∀ n, P1565481079899212447.a n = A031387 (n + 1)

end A031387

/-!
# A031388: a(n) = prime(7*n-3).

The programs for A031388, the canonical program `A031388.P4329240023431513664` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031388 has offset 1).

The definition of A031388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(7*(n+1)-3)` (program `A031388.P4329240023431513664`, by `A031388.P4329240023431513664.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031388.P4329240023431513664

`A000040(7*(n+1)-3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031388

/-- `A000040(7*(n+1)-3)` -/
def P4329240023431513664.Spec : Prop :=
  ∀ n, P4329240023431513664.a n = A031388 (n + 1)

theorem P4329240023431513664.correct : P4329240023431513664.Spec := by
  intro n
  simp only [A031388, Nat.add_sub_cancel]

end A031388

/-! ## A031388.P16628275193740442082

`A001748(A017029(n))/3`
-/

namespace A031388.P16628275193740442082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A017029 n).toNat : ℚ) / 3

end

end A031388.P16628275193740442082

namespace A031388

/-- `A001748(A017029(n))/3` -/
def P16628275193740442082.Spec : Prop :=
  ∀ n, P16628275193740442082.a n = (A031388 (n + 1) : ℚ)

end A031388

/-! ## A031388.P4241061338722359406

`A004139(7*n+2)`
-/

namespace A031388.P4241061338722359406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (7 * n + 2)

end

end A031388.P4241061338722359406

namespace A031388

/-- `A004139(7*n+2)` -/
def P4241061338722359406.Spec : Prop :=
  ∀ n, P4241061338722359406.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P4689857182353039191

`A215848(7*n+2)`
-/

namespace A031388.P4689857182353039191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (7 * n + 2)

end

end A031388.P4689857182353039191

namespace A031388

/-- `A215848(7*n+2)` -/
def P4689857182353039191.Spec : Prop :=
  ∀ n, P4689857182353039191.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P7842051870082671927

`A045319(7*n+3)`
-/

namespace A031388.P7842051870082671927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (7 * n + 3)

end

end A031388.P7842051870082671927

namespace A031388

/-- `A045319(7*n+3)` -/
def P7842051870082671927.Spec : Prop :=
  ∀ n, P7842051870082671927.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P17637447945232859848

`A045344(7*n+3)`
-/

namespace A031388.P17637447945232859848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (7 * n + 3)

end

end A031388.P17637447945232859848

namespace A031388

/-- `A045344(7*n+3)` -/
def P17637447945232859848.Spec : Prop :=
  ∀ n, P17637447945232859848.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P11630857266995901639

`A065091(7*n+3)`
-/

namespace A031388.P11630857266995901639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (7 * n + 3)

end

end A031388.P11630857266995901639

namespace A031388

/-- `A065091(7*n+3)` -/
def P11630857266995901639.Spec : Prop :=
  ∀ n, P11630857266995901639.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P1251263593673939310

`A040976(7*n+4)+2`
-/

namespace A031388.P1251263593673939310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (7 * n + 4) + 2

end

end A031388.P1251263593673939310

namespace A031388

/-- `A040976(7*n+4)+2` -/
def P1251263593673939310.Spec : Prop :=
  ∀ n, P1251263593673939310.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P6848449356931051164

`A108719(A271114(n)+n)`
-/

namespace A031388.P6848449356931051164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A271114 n + (n : ℤ)).toNat

end

end A031388.P6848449356931051164

namespace A031388

/-- `A108719(A271114(n)+n)` -/
def P6848449356931051164.Spec : Prop :=
  ∀ n, P6848449356931051164.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P774841261561374789

`A008578(7*n+5)`
-/

namespace A031388.P774841261561374789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (7 * n + 5)

end

end A031388.P774841261561374789

namespace A031388

/-- `A008578(7*n+5)` -/
def P774841261561374789.Spec : Prop :=
  ∀ n, P774841261561374789.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P1126906101845308192

`A175787(7*n+5)`
-/

namespace A031388.P1126906101845308192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (7 * n + 5)

end

end A031388.P1126906101845308192

namespace A031388

/-- `A175787(7*n+5)` -/
def P1126906101845308192.Spec : Prop :=
  ∀ n, P1126906101845308192.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P11424848471182033825

`A182986(7*n+5)`
-/

namespace A031388.P11424848471182033825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (7 * n + 5)

end

end A031388.P11424848471182033825

namespace A031388

/-- `A182986(7*n+5)` -/
def P11424848471182033825.Spec : Prop :=
  ∀ n, P11424848471182033825.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P12838966290674394056

`A046022(7*n+6)`
-/

namespace A031388.P12838966290674394056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (7 * n + 6)

end

end A031388.P12838966290674394056

namespace A031388

/-- `A046022(7*n+6)` -/
def P12838966290674394056.Spec : Prop :=
  ∀ n, P12838966290674394056.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P15032018338423545980

`A151800(A031394(n+1))`
-/

namespace A031388.P15032018338423545980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A031394 (n + 1)).toNat

end

end A031388.P15032018338423545980

namespace A031388

/-- `A151800(A031394(n+1))` -/
def P15032018338423545980.Spec : Prop :=
  ∀ n, P15032018338423545980.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P15091346475866273377

`A067747(7*(2*n+1))`
-/

namespace A031388.P15091346475866273377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (7 * (2 * n + 1))

end

end A031388.P15091346475866273377

namespace A031388

/-- `A067747(7*(2*n+1))` -/
def P15091346475866273377.Spec : Prop :=
  ∀ n, P15091346475866273377.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P12437179618576331440

`A109763(7*(2*n+1))`
-/

namespace A031388.P12437179618576331440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (7 * (2 * n + 1))

end

end A031388.P12437179618576331440

namespace A031388

/-- `A109763(7*(2*n+1))` -/
def P12437179618576331440.Spec : Prop :=
  ∀ n, P12437179618576331440.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P1982227650436272440

`A129767(7*(2*n+1))`
-/

namespace A031388.P1982227650436272440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (7 * (2 * n + 1))

end

end A031388.P1982227650436272440

namespace A031388

/-- `A129767(7*(2*n+1))` -/
def P1982227650436272440.Spec : Prop :=
  ∀ n, P1982227650436272440.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P792098849229869506

`A134735(7*(2*n+1))`
-/

namespace A031388.P792098849229869506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (7 * (2 * n + 1))

end

end A031388.P792098849229869506

namespace A031388

/-- `A134735(7*(2*n+1))` -/
def P792098849229869506.Spec : Prop :=
  ∀ n, P792098849229869506.a n = A031388 (n + 1)

end A031388

/-! ## A031388.P4634190457212449996

`A173919(7*(2*n+1))`
-/

namespace A031388.P4634190457212449996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (7 * (2 * n + 1))

end

end A031388.P4634190457212449996

namespace A031388

/-- `A173919(7*(2*n+1))` -/
def P4634190457212449996.Spec : Prop :=
  ∀ n, P4634190457212449996.a n = A031388 (n + 1)

end A031388

/-!
# A031389: a(n) = prime(8*n-3).

The programs for A031389, the canonical program `A031389.P8000382350137612312` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031389 has offset 1).

The definition of A031389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(8*(n+1)-3)` (program `A031389.P8000382350137612312`, by `A031389.P8000382350137612312.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031389.P8000382350137612312

`A000040(8*(n+1)-3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031389

/-- `A000040(8*(n+1)-3)` -/
def P8000382350137612312.Spec : Prop :=
  ∀ n, P8000382350137612312.a n = A031389 (n + 1)

theorem P8000382350137612312.correct : P8000382350137612312.Spec := by
  intro n
  simp only [A031389, Nat.add_sub_cancel]

end A031389

/-! ## A031389.P8318100543051636544

`A031385(2*(n+1))`
-/

namespace A031389.P8318100543051636544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (2 * (n + 1))

end

end A031389.P8318100543051636544

namespace A031389

/-- `A031385(2*(n+1))` -/
def P8318100543051636544.Spec : Prop :=
  ∀ n, P8318100543051636544.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P8823824921249068971

`A060191(4*n+2)`
-/

namespace A031389.P8823824921249068971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (4 * n + 2)

end

end A031389.P8823824921249068971

namespace A031389

/-- `A060191(4*n+2)` -/
def P8823824921249068971.Spec : Prop :=
  ∀ n, P8823824921249068971.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P5660887178069656308

`A031368(4*(n+1)-1)`
-/

namespace A031389.P5660887178069656308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (4 * (n + 1) - 1)

end

end A031389.P5660887178069656308

namespace A031389

/-- `A031368(4*(n+1)-1)` -/
def P5660887178069656308.Spec : Prop :=
  ∀ n, P5660887178069656308.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P2068882943437345219

`A031368(4*n+3)%A147578(n+1)`
-/

namespace A031389.P2068882943437345219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031368 (4 * n + 3)) (A147578 (n + 1))

end

end A031389.P2068882943437345219

namespace A031389

/-- `A031368(4*n+3)%A147578(n+1)` -/
def P2068882943437345219.Spec : Prop :=
  ∀ n, P2068882943437345219.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P925221775769666157

`A031368(A004767(n))%A001567(n+1)`
-/

namespace A031389.P925221775769666157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031368 (A004767 n).toNat) (A001567 (n + 1))

end

end A031389.P925221775769666157

namespace A031389

/-- `A031368(A004767(n))%A001567(n+1)` -/
def P925221775769666157.Spec : Prop :=
  ∀ n, P925221775769666157.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P17498986470050002077

`A332806(A080147(2*(2*n+1)))`
-/

namespace A031389.P17498986470050002077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A080147 (2 * (2 * n + 1))).toNat

end

end A031389.P17498986470050002077

namespace A031389

/-- `A332806(A080147(2*(2*n+1)))` -/
def P17498986470050002077.Spec : Prop :=
  ∀ n, P17498986470050002077.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P4092350220611863628

`A157996(A022144(n))`
-/

namespace A031389.P4092350220611863628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A022144 n).toNat

end

end A031389.P4092350220611863628

namespace A031389

/-- `A157996(A022144(n))` -/
def P4092350220611863628.Spec : Prop :=
  ∀ n, P4092350220611863628.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P10024906577739932583

`A067126(8*(n+1))`
-/

namespace A031389.P10024906577739932583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (8 * (n + 1))

end

end A031389.P10024906577739932583

namespace A031389

/-- `A067126(8*(n+1))` -/
def P10024906577739932583.Spec : Prop :=
  ∀ n, P10024906577739932583.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P17299388309261524845

`A004139(8*n+3)`
-/

namespace A031389.P17299388309261524845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (8 * n + 3)

end

end A031389.P17299388309261524845

namespace A031389

/-- `A004139(8*n+3)` -/
def P17299388309261524845.Spec : Prop :=
  ∀ n, P17299388309261524845.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P7707907263077911168

`A045319(8*n+4)`
-/

namespace A031389.P7707907263077911168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (8 * n + 4)

end

end A031389.P7707907263077911168

namespace A031389

/-- `A045319(8*n+4)` -/
def P7707907263077911168.Spec : Prop :=
  ∀ n, P7707907263077911168.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P3987890120897110495

`A045344(8*n+4)`
-/

namespace A031389.P3987890120897110495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (8 * n + 4)

end

end A031389.P3987890120897110495

namespace A031389

/-- `A045344(8*n+4)` -/
def P3987890120897110495.Spec : Prop :=
  ∀ n, P3987890120897110495.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P5411059163332234859

`A065091(8*n+4)`
-/

namespace A031389.P5411059163332234859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (8 * n + 4)

end

end A031389.P5411059163332234859

namespace A031389

/-- `A065091(8*n+4)` -/
def P5411059163332234859.Spec : Prop :=
  ∀ n, P5411059163332234859.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P1126504333195573584

`A140475(8*n+4)`
-/

namespace A031389.P1126504333195573584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (8 * n + 4)

end

end A031389.P1126504333195573584

namespace A031389

/-- `A140475(8*n+4)` -/
def P1126504333195573584.Spec : Prop :=
  ∀ n, P1126504333195573584.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P14011750974175168097

`A093515(8*(2*n+1))`
-/

namespace A031389.P14011750974175168097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (8 * (2 * n + 1))

end

end A031389.P14011750974175168097

namespace A031389

/-- `A093515(8*(2*n+1))` -/
def P14011750974175168097.Spec : Prop :=
  ∀ n, P14011750974175168097.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P2583422307549818126

`A008578(A017137(n))`
-/

namespace A031389.P2583422307549818126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A017137 n).toNat

end

end A031389.P2583422307549818126

namespace A031389

/-- `A008578(A017137(n))` -/
def P2583422307549818126.Spec : Prop :=
  ∀ n, P2583422307549818126.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P11099094125665384683

`A046022(A004771(n))`
-/

namespace A031389.P11099094125665384683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A004771 n).toNat

end

end A031389.P11099094125665384683

namespace A031389

/-- `A046022(A004771(n))` -/
def P11099094125665384683.Spec : Prop :=
  ∀ n, P11099094125665384683.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P17769296836933575343

`A140461(A017089(n))`
-/

namespace A031389.P17769296836933575343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (A017089 n).toNat

end

end A031389.P17769296836933575343

namespace A031389

/-- `A140461(A017089(n))` -/
def P17769296836933575343.Spec : Prop :=
  ∀ n, P17769296836933575343.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P4037472825865207147

`A046022(A017137(n)+1)`
-/

namespace A031389.P4037472825865207147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017137 n + 1).toNat

end

end A031389.P4037472825865207147

namespace A031389

/-- `A046022(A017137(n)+1)` -/
def P4037472825865207147.Spec : Prop :=
  ∀ n, P4037472825865207147.a n = A031389 (n + 1)

end A031389

/-! ## A031389.P15479862955398461252

`A008578(A004771(n)-1)`
-/

namespace A031389.P15479862955398461252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004771 n - 1).toNat

end

end A031389.P15479862955398461252

namespace A031389

/-- `A008578(A004771(n)-1)` -/
def P15479862955398461252.Spec : Prop :=
  ∀ n, P15479862955398461252.a n = A031389 (n + 1)

end A031389

/-!
# A031390: a(n) = prime(9*n - 3).

The programs for A031390, the canonical program `A031390.P13605795463338479853` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031390 has offset 1).

The definition of A031390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(9*(n+1)-3)` (program `A031390.P13605795463338479853`, by `A031390.P13605795463338479853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031390.P13605795463338479853

`A000040(9*(n+1)-3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031390

/-- `A000040(9*(n+1)-3)` -/
def P13605795463338479853.Spec : Prop :=
  ∀ n, P13605795463338479853.a n = A031390 (n + 1)

theorem P13605795463338479853.correct : P13605795463338479853.Spec := by
  intro n
  simp only [A031390, Nat.add_sub_cancel]

end A031390

/-! ## A031390.P14385056515366583428

`A031336(3*n+2)`
-/

namespace A031390.P14385056515366583428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (3 * n + 2)

end

end A031390.P14385056515366583428

namespace A031390

/-- `A031336(3*n+2)` -/
def P14385056515366583428.Spec : Prop :=
  ∀ n, P14385056515366583428.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P2422216955300421096

`A031336(A016789(n))/gcd(n+2, n+1)`
-/

namespace A031390.P2422216955300421096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031336 (A016789 n).toNat : ℚ) / (Nat.gcd (n + 2) (n + 1) : ℚ)

end

end A031390.P2422216955300421096

namespace A031390

/-- `A031336(A016789(n))/gcd(n+2, n+1)` -/
def P2422216955300421096.Spec : Prop :=
  ∀ n, P2422216955300421096.a n = (A031390 (n + 1) : ℚ)

end A031390

/-! ## A031390.P9323293884108624209

`A031336(A016789(n))+A000007(n+2)`
-/

namespace A031390.P9323293884108624209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (A016789 n).toNat + A000007 (n + 2)

end

end A031390.P9323293884108624209

namespace A031390

/-- `A031336(A016789(n))+A000007(n+2)` -/
def P9323293884108624209.Spec : Prop :=
  ∀ n, P9323293884108624209.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P2838259971951289731

`A031336(A016789(n))%A086119(n+2)`
-/

namespace A031390.P2838259971951289731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031336 (A016789 n).toNat) (A086119 (n + 2))

end

end A031390.P2838259971951289731

namespace A031390

/-- `A031336(A016789(n))%A086119(n+2)` -/
def P2838259971951289731.Spec : Prop :=
  ∀ n, P2838259971951289731.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P14378291155163156656

`or(A031336(A016789(n)), A057427(n+2))`
-/

namespace A031390.P14378291155163156656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031336 (A016789 n).toNat) (A057427 (n + 2))

end

end A031390.P14378291155163156656

namespace A031390

/-- `or(A031336(A016789(n)), A057427(n+2))` -/
def P14378291155163156656.Spec : Prop :=
  ∀ n, P14378291155163156656.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P7987742625623718045

`A031336(A016789(n))+val(n+2, A065091(n+1))`
-/

namespace A031390.P7987742625623718045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (A016789 n).toNat + (SequenceMachineLib.valuation (n + 2) (A065091 (n + 1)).toNat : ℤ)

end

end A031390.P7987742625623718045

namespace A031390

/-- `A031336(A016789(n))+val(n+2, A065091(n+1))` -/
def P7987742625623718045.Spec : Prop :=
  ∀ n, P7987742625623718045.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P11975799243405977849

`A031336(A016789(n))+val(n+2, A135015(n+1))`
-/

namespace A031390.P11975799243405977849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (A016789 n).toNat + (SequenceMachineLib.valuation (n + 2) (A135015 (n + 1)).toNat : ℤ)

end

end A031390.P11975799243405977849

namespace A031390

/-- `A031336(A016789(n))+val(n+2, A135015(n+1))` -/
def P11975799243405977849.Spec : Prop :=
  ∀ n, P11975799243405977849.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P9245825355782280910

`A031336(A016789(n))+val(n+2, A064549(n+2))`
-/

namespace A031390.P9245825355782280910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (A016789 n).toNat + (SequenceMachineLib.valuation (n + 2) (A064549 (n + 2)).toNat : ℤ)

end

end A031390.P9245825355782280910

namespace A031390

/-- `A031336(A016789(n))+val(n+2, A064549(n+2))` -/
def P9245825355782280910.Spec : Prop :=
  ∀ n, P9245825355782280910.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P3450748192204658904

`A071621(A022144(n)+n)`
-/

namespace A031390.P3450748192204658904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A022144 n + (n : ℤ)).toNat

end

end A031390.P3450748192204658904

namespace A031390

/-- `A071621(A022144(n)+n)` -/
def P3450748192204658904.Spec : Prop :=
  ∀ n, P3450748192204658904.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P12115728855475797150

`A067126(9*(n+1))`
-/

namespace A031390.P12115728855475797150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (9 * (n + 1))

end

end A031390.P12115728855475797150

namespace A031390

/-- `A067126(9*(n+1))` -/
def P12115728855475797150.Spec : Prop :=
  ∀ n, P12115728855475797150.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P6089104124074987224

`A065091(9*n+5)`
-/

namespace A031390.P6089104124074987224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (9 * n + 5)

end

end A031390.P6089104124074987224

namespace A031390

/-- `A065091(9*n+5)` -/
def P6089104124074987224.Spec : Prop :=
  ∀ n, P6089104124074987224.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P8550709089438727443

`A008578(9*n+7)`
-/

namespace A031390.P8550709089438727443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 7)

end

end A031390.P8550709089438727443

namespace A031390

/-- `A008578(9*n+7)` -/
def P8550709089438727443.Spec : Prop :=
  ∀ n, P8550709089438727443.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P12193864019051089605

`A046022(9*n+8)`
-/

namespace A031390.P12193864019051089605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (9 * n + 8)

end

end A031390.P12193864019051089605

namespace A031390

/-- `A046022(9*n+8)` -/
def P12193864019051089605.Spec : Prop :=
  ∀ n, P12193864019051089605.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P4097134862626858823

`A008864(9*n+6)-1`
-/

namespace A031390.P4097134862626858823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (9 * n + 6) - 1

end

end A031390.P4097134862626858823

namespace A031390

/-- `A008864(9*n+6)-1` -/
def P4097134862626858823.Spec : Prop :=
  ∀ n, P4097134862626858823.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P2531696083224483525

`A004139(8*n+4+n)`
-/

namespace A031390.P2531696083224483525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (8 * n + 4 + n)

end

end A031390.P2531696083224483525

namespace A031390

/-- `A004139(8*n+4+n)` -/
def P2531696083224483525.Spec : Prop :=
  ∀ n, P2531696083224483525.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P2197441849137950621

`A040976(2*n+7*n+6)+2`
-/

namespace A031390.P2197441849137950621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (2 * n + (7 * n + 6)) + 2

end

end A031390.P2197441849137950621

namespace A031390

/-- `A040976(2*n+7*n+6)+2` -/
def P2197441849137950621.Spec : Prop :=
  ∀ n, P2197441849137950621.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P5532610814314001337

`A045319(A017221(n))`
-/

namespace A031390.P5532610814314001337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017221 n).toNat

end

end A031390.P5532610814314001337

namespace A031390

/-- `A045319(A017221(n))` -/
def P5532610814314001337.Spec : Prop :=
  ∀ n, P5532610814314001337.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P17094785906076385210

`A108719(A017197(n))`
-/

namespace A031390.P17094785906076385210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017197 n).toNat

end

end A031390.P17094785906076385210

namespace A031390

/-- `A108719(A017197(n))` -/
def P17094785906076385210.Spec : Prop :=
  ∀ n, P17094785906076385210.a n = A031390 (n + 1)

end A031390

/-! ## A031390.P8113846276096462399

`A045319(A017209(n)+1)`
-/

namespace A031390.P8113846276096462399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017209 n + 1).toNat

end

end A031390.P8113846276096462399

namespace A031390

/-- `A045319(A017209(n)+1)` -/
def P8113846276096462399.Spec : Prop :=
  ∀ n, P8113846276096462399.a n = A031390 (n + 1)

end A031390

/-!
# A031391: a(n) = prime(10*n-3).

The programs for A031391, the canonical program `A031391.P8323579328111306800` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031391 has offset 1).

The definition of A031391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(10*(n+1)-3)` (program `A031391.P8323579328111306800`, by `A031391.P8323579328111306800.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031391.P8323579328111306800

`A000040(10*(n+1)-3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031391

/-- `A000040(10*(n+1)-3)` -/
def P8323579328111306800.Spec : Prop :=
  ∀ n, P8323579328111306800.a n = A031391 (n + 1)

theorem P8323579328111306800.correct : P8323579328111306800.Spec := by
  intro n
  simp only [A031391, Nat.add_sub_cancel]

end A031391

/-! ## A031391.P12192976626594186949

`A031386(2*(n+1))`
-/

namespace A031391.P12192976626594186949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 (2 * (n + 1))

end

end A031391.P12192976626594186949

namespace A031391

/-- `A031386(2*(n+1))` -/
def P12192976626594186949.Spec : Prop :=
  ∀ n, P12192976626594186949.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P5936055736149293622

`A001748(10*n+7)/3`
-/

namespace A031391.P5936055736149293622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (10 * n + 7) : ℚ) / 3

end

end A031391.P5936055736149293622

namespace A031391

/-- `A001748(10*n+7)/3` -/
def P5936055736149293622.Spec : Prop :=
  ∀ n, P5936055736149293622.a n = (A031391 (n + 1) : ℚ)

end A031391

/-! ## A031391.P14000447020146035525

`A031368(4*(n+1)+n)`
-/

namespace A031391.P14000447020146035525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (4 * (n + 1) + n)

end

end A031391.P14000447020146035525

namespace A031391

/-- `A031368(4*(n+1)+n)` -/
def P14000447020146035525.Spec : Prop :=
  ∀ n, P14000447020146035525.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P6778623655164025266

`∩[A031368(n+1), A031386(n+1)]`
-/

namespace A031391.P6778623655164025266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031391.P6778623655164025266

namespace A031391

/-- `∩[A031368(n+1), A031386(n+1)]` -/
def P6778623655164025266.Spec : Prop :=
  ∀ n, (P6778623655164025266.a n : ℤ) = A031391 (n + 1)

end A031391

/-! ## A031391.P3831890435083818213

`∩[A031386(n+1), A324812(n+1)]`
-/

namespace A031391.P3831890435083818213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031391.P3831890435083818213

namespace A031391

/-- `∩[A031386(n+1), A324812(n+1)]` -/
def P3831890435083818213.Spec : Prop :=
  ∀ n, (P3831890435083818213.a n : ℤ) = A031391 (n + 1)

end A031391

/-! ## A031391.P12633651919755196376

`A008578(10*n+8)`
-/

namespace A031391.P12633651919755196376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (10 * n + 8)

end

end A031391.P12633651919755196376

namespace A031391

/-- `A008578(10*n+8)` -/
def P12633651919755196376.Spec : Prop :=
  ∀ n, P12633651919755196376.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P9561227941377881446

`A162788(10*n+9)`
-/

namespace A031391.P9561227941377881446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (10 * n + 9)

end

end A031391.P9561227941377881446

namespace A031391

/-- `A162788(10*n+9)` -/
def P9561227941377881446.Spec : Prop :=
  ∀ n, P9561227941377881446.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P534125293127900148

`A004139(5*(2*n+1))`
-/

namespace A031391.P534125293127900148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (5 * (2 * n + 1))

end

end A031391.P534125293127900148

namespace A031391

/-- `A004139(5*(2*n+1))` -/
def P534125293127900148.Spec : Prop :=
  ∀ n, P534125293127900148.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P95536233496563688

`A215848(5*(2*n+1))`
-/

namespace A031391.P95536233496563688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (5 * (2 * n + 1))

end

end A031391.P95536233496563688

namespace A031391

/-- `A215848(5*(2*n+1))` -/
def P95536233496563688.Spec : Prop :=
  ∀ n, P95536233496563688.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P10016836313337244481

`A040976(10*n+7)+2`
-/

namespace A031391.P10016836313337244481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (10 * n + 7) + 2

end

end A031391.P10016836313337244481

namespace A031391

/-- `A040976(10*n+7)+2` -/
def P10016836313337244481.Spec : Prop :=
  ∀ n, P10016836313337244481.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P13049642820641720330

`A065091(5*(2*n+1)+1)`
-/

namespace A031391.P13049642820641720330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (5 * (2 * n + 1) + 1)

end

end A031391.P13049642820641720330

namespace A031391

/-- `A065091(5*(2*n+1)+1)` -/
def P13049642820641720330.Spec : Prop :=
  ∀ n, P13049642820641720330.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P2634103645190542544

`A045344(12*n+6-2*n)`
-/

namespace A031391.P2634103645190542544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (12 * n + 6 - 2 * n)

end

end A031391.P2634103645190542544

namespace A031391

/-- `A045344(12*n+6-2*n)` -/
def P2634103645190542544.Spec : Prop :=
  ∀ n, P2634103645190542544.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P15741690075525590922

`A045319(A017341(n))`
-/

namespace A031391.P15741690075525590922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017341 n).toNat

end

end A031391.P15741690075525590922

namespace A031391

/-- `A045319(A017341(n))` -/
def P15741690075525590922.Spec : Prop :=
  ∀ n, P15741690075525590922.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P7244193997678965303

`A046022(A017377(n))`
-/

namespace A031391.P7244193997678965303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017377 n).toNat

end

end A031391.P7244193997678965303

namespace A031391

/-- `A046022(A017377(n))` -/
def P7244193997678965303.Spec : Prop :=
  ∀ n, P7244193997678965303.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P10937673503405829647

`A108719(A017317(n))`
-/

namespace A031391.P10937673503405829647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017317 n).toNat

end

end A031391.P10937673503405829647

namespace A031391

/-- `A108719(A017317(n))` -/
def P10937673503405829647.Spec : Prop :=
  ∀ n, P10937673503405829647.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P7214357920515017508

`A157996(A017293(n))`
-/

namespace A031391.P7214357920515017508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017293 n).toNat

end

end A031391.P7214357920515017508

namespace A031391

/-- `A157996(A017293(n))` -/
def P7214357920515017508.Spec : Prop :=
  ∀ n, P7214357920515017508.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P16951482625749872983

`A067126(A008592(n+1))`
-/

namespace A031391.P16951482625749872983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A008592 (n + 1)).toNat

end

end A031391.P16951482625749872983

namespace A031391

/-- `A067126(A008592(n+1))` -/
def P16951482625749872983.Spec : Prop :=
  ∀ n, P16951482625749872983.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P1564380320509395608

`A067126(A017377(n)+1)`
-/

namespace A031391.P1564380320509395608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A017377 n + 1).toNat

end

end A031391.P1564380320509395608

namespace A031391

/-- `A067126(A017377(n)+1)` -/
def P1564380320509395608.Spec : Prop :=
  ∀ n, P1564380320509395608.a n = A031391 (n + 1)

end A031391

/-! ## A031391.P1795444264601666986

`A108719(A017305(n)+1)`
-/

namespace A031391.P1795444264601666986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017305 n + 1).toNat

end

end A031391.P1795444264601666986

namespace A031391

/-- `A108719(A017305(n)+1)` -/
def P1795444264601666986.Spec : Prop :=
  ∀ n, P1795444264601666986.a n = A031391 (n + 1)

end A031391

/-!
# A031392: a(n) = prime(5*n-4).

The programs for A031392, the canonical program `A031392.P3082985098239291939` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031392 has offset 1).

The definition of A031392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(5*n+1)` (program `A031392.P3082985098239291939`, by `A031392.P3082985098239291939.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031392.P3082985098239291939

`A000040(5*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031392

/-- `A000040(5*n+1)` -/
def P3082985098239291939.Spec : Prop :=
  ∀ n, P3082985098239291939.a n = A031392 (n + 1)

theorem P3082985098239291939.correct : P3082985098239291939.Spec := by
  intro n
  simp only [A031392, Nat.add_sub_cancel]

end A031392

/-! ## A031392.P11446883608964018182

`A000040(5*(n+1)-4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A031392.P11446883608964018182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (5 * (n + 1) - 4)

end

end A031392.P11446883608964018182

namespace A031392

/-- `A000040(5*(n+1)-4)` -/
def P11446883608964018182.Spec : Prop :=
  ∀ n, P11446883608964018182.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P3438714273273006799

`∪[A031905(n+1), A031920(n+1)]`
-/

namespace A031392.P3438714273273006799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031392.P3438714273273006799

namespace A031392

/-- `∪[A031905(n+1), A031920(n+1)]` -/
def P3438714273273006799.Spec : Prop :=
  ∀ n, (P3438714273273006799.a n : ℤ) = A031392 (n + 1)

end A031392

/-! ## A031392.P10263445269471890967

`A001749(A016861(n))/4`
-/

namespace A031392.P10263445269471890967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A016861 n).toNat : ℚ) / 4

end

end A031392.P10263445269471890967

namespace A031392

/-- `A001749(A016861(n))/4` -/
def P10263445269471890967.Spec : Prop :=
  ∀ n, P10263445269471890967.a n = (A031392 (n + 1) : ℚ)

end A031392

/-! ## A031392.P771628715133906126

`A156037(A008706(n)+1)+1`
-/

namespace A031392.P771628715133906126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A008706 n + 1).toNat + 1

end

end A031392.P771628715133906126

namespace A031392

/-- `A156037(A008706(n)+1)+1` -/
def P771628715133906126.Spec : Prop :=
  ∀ n, P771628715133906126.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P5950861500436371480

`A045319(A008706(n))`
-/

namespace A031392.P5950861500436371480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008706 n).toNat

end

end A031392.P5950861500436371480

namespace A031392

/-- `A045319(A008706(n))` -/
def P5950861500436371480.Spec : Prop :=
  ∀ n, P5950861500436371480.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P12502655249339972422

`A387959(A135042(n+1))`
-/

namespace A031392.P12502655249339972422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387959 (A135042 (n + 1)).toNat

end

end A031392.P12502655249339972422

namespace A031392

/-- `A387959(A135042(n+1))` -/
def P12502655249339972422.Spec : Prop :=
  ∀ n, P12502655249339972422.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P756599161727893419

`A045319(A008574(n)+n)`
-/

namespace A031392.P756599161727893419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008574 n + (n : ℤ)).toNat

end

end A031392.P756599161727893419

namespace A031392

/-- `A045319(A008574(n)+n)` -/
def P756599161727893419.Spec : Prop :=
  ∀ n, P756599161727893419.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P13568280352711061492

`A045344(A008574(n)+n)`
-/

namespace A031392.P13568280352711061492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A008574 n + (n : ℤ)).toNat

end

end A031392.P13568280352711061492

namespace A031392

/-- `A045344(A008574(n)+n)` -/
def P13568280352711061492.Spec : Prop :=
  ∀ n, P13568280352711061492.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P1034243074381164754

`A045319(A008458(n)-n)`
-/

namespace A031392.P1034243074381164754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008458 n - (n : ℤ)).toNat

end

end A031392.P1034243074381164754

namespace A031392

/-- `A045319(A008458(n)-n)` -/
def P1034243074381164754.Spec : Prop :=
  ∀ n, P1034243074381164754.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P10703246482071396759

`A008578(5*n+2)`
-/

namespace A031392.P10703246482071396759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (5 * n + 2)

end

end A031392.P10703246482071396759

namespace A031392

/-- `A008578(5*n+2)` -/
def P10703246482071396759.Spec : Prop :=
  ∀ n, P10703246482071396759.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P15607078400299661758

`A182986(5*n+2)`
-/

namespace A031392.P15607078400299661758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (5 * n + 2)

end

end A031392.P15607078400299661758

namespace A031392

/-- `A182986(5*n+2)` -/
def P15607078400299661758.Spec : Prop :=
  ∀ n, P15607078400299661758.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P1339108160897996786

`A158611(5*n+3)`
-/

namespace A031392.P1339108160897996786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (5 * n + 3)

end

end A031392.P1339108160897996786

namespace A031392

/-- `A158611(5*n+3)` -/
def P1339108160897996786.Spec : Prop :=
  ∀ n, P1339108160897996786.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P17693234716711346805

`A040976(5*n+1)+2`
-/

namespace A031392.P17693234716711346805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (5 * n + 1) + 2

end

end A031392.P17693234716711346805

namespace A031392

/-- `A040976(5*n+1)+2` -/
def P17693234716711346805.Spec : Prop :=
  ∀ n, P17693234716711346805.a n = A031392 (n + 1)

theorem P17693234716711346805.correct : P17693234716711346805.Spec := by
  intro n
  simp only [A031392, Nat.add_sub_cancel, A031392.P17693234716711346805.a, A031392.P3082985098239291939.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031392

/-! ## A031392.P8962265117851686516

`record[A000040(A241155(n+1))]`
-/

namespace A031392.P8962265117851686516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A241155 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031392.P8962265117851686516

namespace A031392

/-- `record[A000040(A241155(n+1))]` -/
def P8962265117851686516.Spec : Prop :=
  ∀ n, P8962265117851686516.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P17212035739769361164

`record[A000040(n+1)-(A109046(n)-n)]`
-/

namespace A031392.P17212035739769361164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A109046 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031392.P17212035739769361164

namespace A031392

/-- `record[A000040(n+1)-(A109046(n)-n)]` -/
def P17212035739769361164.Spec : Prop :=
  ∀ n, P17212035739769361164.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P13716403553393782837

`A000040(A016861(n))%A046092(n+3)`
-/

namespace A031392.P13716403553393782837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A016861 n).toNat) (A046092 (n + 3))

end

end A031392.P13716403553393782837

namespace A031392

/-- `A000040(A016861(n))%A046092(n+3)` -/
def P13716403553393782837.Spec : Prop :=
  ∀ n, P13716403553393782837.a n = A031392 (n + 1)

end A031392

/-! ## A031392.P12324861400775479940

`A063884(A016813(n)+n)`
-/

namespace A031392.P12324861400775479940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063884 (A016813 n + (n : ℤ)).toNat

end

end A031392.P12324861400775479940

namespace A031392

/-- `A063884(A016813(n)+n)` -/
def P12324861400775479940.Spec : Prop :=
  ∀ n, P12324861400775479940.a n = A031392 (n + 1)

end A031392

/-!
# A031393: a(n) = prime(6*n - 4).

The programs for A031393, the canonical program `A031393.P7403356430821714563` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031393 has offset 1).

The definition of A031393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(6*(n+1)-4)` (program `A031393.P7403356430821714563`, by `A031393.P7403356430821714563.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031393.P7403356430821714563

`A000040(6*(n+1)-4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031393

/-- `A000040(6*(n+1)-4)` -/
def P7403356430821714563.Spec : Prop :=
  ∀ n, P7403356430821714563.a n = A031393 (n + 1)

theorem P7403356430821714563.correct : P7403356430821714563.Spec := by
  intro n
  simp only [A031393, Nat.add_sub_cancel]

end A031393

/-! ## A031393.P2159843465191176975

`A031369(Δ[n²])`
-/

namespace A031393.P2159843465191176975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031393.P2159843465191176975

namespace A031393

/-- `A031369(Δ[n²])` -/
def P2159843465191176975.Spec : Prop :=
  ∀ n, P2159843465191176975.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P5118786751496874792

`A091738(Δ[n²])`
-/

namespace A031393.P5118786751496874792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091738 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031393.P5118786751496874792

namespace A031393

/-- `A091738(Δ[n²])` -/
def P5118786751496874792.Spec : Prop :=
  ∀ n, P5118786751496874792.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P13632770073763493348

`∩[A031369(n+1), A091738(n+1)]`
-/

namespace A031393.P13632770073763493348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031393.P13632770073763493348

namespace A031393

/-- `∩[A031369(n+1), A091738(n+1)]` -/
def P13632770073763493348.Spec : Prop :=
  ∀ n, (P13632770073763493348.a n : ℤ) = A031393 (n + 1)

end A031393

/-! ## A031393.P9470429507180784135

`A031369(2*n+1)%A082077(n+1)`
-/

namespace A031393.P9470429507180784135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031369 (2 * n + 1)) (A082077 (n + 1))

end

end A031393.P9470429507180784135

namespace A031393

/-- `A031369(2*n+1)%A082077(n+1)` -/
def P9470429507180784135.Spec : Prop :=
  ∀ n, P9470429507180784135.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P10017407639705487812

`C(A031369(2*n+1), A049710(A025505(n+1)))`
-/

namespace A031393.P10017407639705487812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A031369 (2 * n + 1)).toNat (A049710 (A025505 (n + 1)).toNat).toNat

end

end A031393.P10017407639705487812

namespace A031393

/-- `C(A031369(2*n+1), A049710(A025505(n+1)))` -/
def P10017407639705487812.Spec : Prop :=
  ∀ n, (P10017407639705487812.a n : ℤ) = A031393 (n + 1)

end A031393

/-! ## A031393.P5626280787961132977

`A031215(3*n+1)`
-/

namespace A031393.P5626280787961132977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (3 * n + 1)

end

end A031393.P5626280787961132977

namespace A031393

/-- `A031215(3*n+1)` -/
def P5626280787961132977.Spec : Prop :=
  ∀ n, P5626280787961132977.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P15532941867568619553

`A001748(6*n+2)/3`
-/

namespace A031393.P15532941867568619553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (6 * n + 2) : ℚ) / 3

end

end A031393.P15532941867568619553

namespace A031393

/-- `A001748(6*n+2)/3` -/
def P15532941867568619553.Spec : Prop :=
  ∀ n, P15532941867568619553.a n = (A031393 (n + 1) : ℚ)

end A031393

/-! ## A031393.P2278060267880076845

`A332806(A080148(2*n+1+n))`
-/

namespace A031393.P2278060267880076845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A080148 (2 * n + 1 + n)).toNat

end

end A031393.P2278060267880076845

namespace A031393

/-- `A332806(A080148(2*n+1+n))` -/
def P2278060267880076845.Spec : Prop :=
  ∀ n, P2278060267880076845.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P2539716410417496120

`∩[A031215(n+1), A031369(n+1)]`
-/

namespace A031393.P2539716410417496120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031393.P2539716410417496120

namespace A031393

/-- `∩[A031215(n+1), A031369(n+1)]` -/
def P2539716410417496120.Spec : Prop :=
  ∀ n, (P2539716410417496120.a n : ℤ) = A031393 (n + 1)

end A031393

/-! ## A031393.P11011054889492588679

`∩[A031369(n+1), A066207(n+1)]`
-/

namespace A031393.P11011054889492588679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031393.P11011054889492588679

namespace A031393

/-- `∩[A031369(n+1), A066207(n+1)]` -/
def P11011054889492588679.Spec : Prop :=
  ∀ n, (P11011054889492588679.a n : ℤ) = A031393 (n + 1)

end A031393

/-! ## A031393.P2467656185914836001

`A065091(6*n+1)`
-/

namespace A031393.P2467656185914836001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (6 * n + 1)

end

end A031393.P2467656185914836001

namespace A031393

/-- `A065091(6*n+1)` -/
def P2467656185914836001.Spec : Prop :=
  ∀ n, P2467656185914836001.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P5820395491419434219

`A008578(6*n+3)`
-/

namespace A031393.P5820395491419434219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (6 * n + 3)

end

end A031393.P5820395491419434219

namespace A031393

/-- `A008578(6*n+3)` -/
def P5820395491419434219.Spec : Prop :=
  ∀ n, P5820395491419434219.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P10419879648113484583

`A182986(6*n+3)`
-/

namespace A031393.P10419879648113484583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (6 * n + 3)

end

end A031393.P10419879648113484583

namespace A031393

/-- `A182986(6*n+3)` -/
def P10419879648113484583.Spec : Prop :=
  ∀ n, P10419879648113484583.a n = A031393 (n + 1)

end A031393

/-! ## A031393.P9367112832980399584

`A006093(6*n+2)+1`
-/

namespace A031393.P9367112832980399584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (6 * n + 2) + 1

end

end A031393.P9367112832980399584

namespace A031393

/-- `A006093(6*n+2)+1` -/
def P9367112832980399584.Spec : Prop :=
  ∀ n, P9367112832980399584.a n = A031393 (n + 1)

end A031393

/-!
# A031394: a(n) = prime(7*n - 4).

The programs for A031394, the canonical program `A031394.P6913451241276462976` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031394 has offset 1).

The definition of A031394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(7*(n+1)-4)` (program `A031394.P6913451241276462976`, by `A031394.P6913451241276462976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031394.P6913451241276462976

`A000040(7*(n+1)-4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031394

/-- `A000040(7*(n+1)-4)` -/
def P6913451241276462976.Spec : Prop :=
  ∀ n, P6913451241276462976.a n = A031394 (n + 1)

theorem P6913451241276462976.correct : P6913451241276462976.Spec := by
  intro n
  simp only [A031394, Nat.add_sub_cancel]

end A031394

/-! ## A031394.P12661154508968614153

`A001748(A017017(n))/3`
-/

namespace A031394.P12661154508968614153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A017017 n).toNat : ℚ) / 3

end

end A031394.P12661154508968614153

namespace A031394

/-- `A001748(A017017(n))/3` -/
def P12661154508968614153.Spec : Prop :=
  ∀ n, P12661154508968614153.a n = (A031394 (n + 1) : ℚ)

end A031394

/-! ## A031394.P12115563950162622293

`A215848(7*n+1)`
-/

namespace A031394.P12115563950162622293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (7 * n + 1)

end

end A031394.P12115563950162622293

namespace A031394

/-- `A215848(7*n+1)` -/
def P12115563950162622293.Spec : Prop :=
  ∀ n, P12115563950162622293.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P7211254974654448751

`A045344(7*n+2)`
-/

namespace A031394.P7211254974654448751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (7 * n + 2)

end

end A031394.P7211254974654448751

namespace A031394

/-- `A045344(7*n+2)` -/
def P7211254974654448751.Spec : Prop :=
  ∀ n, P7211254974654448751.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P8306174046975798547

`A065091(7*n+2)`
-/

namespace A031394.P8306174046975798547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (7 * n + 2)

end

end A031394.P8306174046975798547

namespace A031394

/-- `A065091(7*n+2)` -/
def P8306174046975798547.Spec : Prop :=
  ∀ n, P8306174046975798547.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P8524459419160158400

`A006005(7*n+3)`
-/

namespace A031394.P8524459419160158400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (7 * n + 3)

end

end A031394.P8524459419160158400

namespace A031394

/-- `A006005(7*n+3)` -/
def P8524459419160158400.Spec : Prop :=
  ∀ n, P8524459419160158400.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P1763987538010469687

`A008578(7*n+4)`
-/

namespace A031394.P1763987538010469687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (7 * n + 4)

end

end A031394.P1763987538010469687

namespace A031394

/-- `A008578(7*n+4)` -/
def P1763987538010469687.Spec : Prop :=
  ∀ n, P1763987538010469687.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P16020420795362653411

`A175787(7*n+4)`
-/

namespace A031394.P16020420795362653411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (7 * n + 4)

end

end A031394.P16020420795362653411

namespace A031394

/-- `A175787(7*n+4)` -/
def P16020420795362653411.Spec : Prop :=
  ∀ n, P16020420795362653411.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P14467643545715935190

`A006093(7*n+3)+1`
-/

namespace A031394.P14467643545715935190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (7 * n + 3) + 1

end

end A031394.P14467643545715935190

namespace A031394

/-- `A006093(7*n+3)+1` -/
def P14467643545715935190.Spec : Prop :=
  ∀ n, P14467643545715935190.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P12329029847693276213

`A040976(7*n+3)+2`
-/

namespace A031394.P12329029847693276213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (7 * n + 3) + 2

end

end A031394.P12329029847693276213

namespace A031394

/-- `A040976(7*n+3)+2` -/
def P12329029847693276213.Spec : Prop :=
  ∀ n, P12329029847693276213.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P341361116178545192

`A108719(A008458(n)+n)`
-/

namespace A031394.P341361116178545192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008458 n + (n : ℤ)).toNat

end

end A031394.P341361116178545192

namespace A031394

/-- `A108719(A008458(n)+n)` -/
def P341361116178545192.Spec : Prop :=
  ∀ n, P341361116178545192.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P3381128066579361115

`A108719(A022144(n)-n)`
-/

namespace A031394.P3381128066579361115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A022144 n - (n : ℤ)).toNat

end

end A031394.P3381128066579361115

namespace A031394

/-- `A108719(A022144(n)-n)` -/
def P3381128066579361115.Spec : Prop :=
  ∀ n, P3381128066579361115.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P6716022852292646477

`A116974(A281813(n)-n)`
-/

namespace A031394.P6716022852292646477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A281813 n - (n : ℤ)).toNat

end

end A031394.P6716022852292646477

namespace A031394

/-- `A116974(A281813(n)-n)` -/
def P6716022852292646477.Spec : Prop :=
  ∀ n, P6716022852292646477.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P15031405581712711302

`record[A000040(A074068(n+3))]`
-/

namespace A031394.P15031405581712711302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074068 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031394.P15031405581712711302

namespace A031394

/-- `record[A000040(A074068(n+3))]` -/
def P15031405581712711302.Spec : Prop :=
  ∀ n, P15031405581712711302.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P12055353462851665350

`A108719(A008486(2*n)+n)`
-/

namespace A031394.P12055353462851665350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008486 (2 * n) + (n : ℤ)).toNat

end

end A031394.P12055353462851665350

namespace A031394

/-- `A108719(A008486(2*n)+n)` -/
def P12055353462851665350.Spec : Prop :=
  ∀ n, P12055353462851665350.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P16888510142879621102

`A108719(A008574(2*n)-n)`
-/

namespace A031394.P16888510142879621102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008574 (2 * n) - (n : ℤ)).toNat

end

end A031394.P16888510142879621102

namespace A031394

/-- `A108719(A008574(2*n)-n)` -/
def P16888510142879621102.Spec : Prop :=
  ∀ n, P16888510142879621102.a n = A031394 (n + 1)

end A031394

/-! ## A031394.P6724083375975210306

`record[A000040(A185452(n+1)+n)]`
-/

namespace A031394.P6724083375975210306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A185452 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031394.P6724083375975210306

namespace A031394

/-- `record[A000040(A185452(n+1)+n)]` -/
def P6724083375975210306.Spec : Prop :=
  ∀ n, P6724083375975210306.a n = A031394 (n + 1)

end A031394

/-!
# A031395: a(n) = prime(8*n - 4).

The programs for A031395, the canonical program `A031395.P15165276268661708509` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031395 has offset 1).

The definition of A031395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(8*(n+1)-4)` (program `A031395.P15165276268661708509`, by `A031395.P15165276268661708509.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031395.P15165276268661708509

`A000040(8*(n+1)-4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031395

/-- `A000040(8*(n+1)-4)` -/
def P15165276268661708509.Spec : Prop :=
  ∀ n, P15165276268661708509.a n = A031395 (n + 1)

theorem P15165276268661708509.correct : P15165276268661708509.Spec := by
  intro n
  simp only [A031395, Nat.add_sub_cancel]

end A031395

/-! ## A031395.P1569826038016177632

`A031337(Δ[n²])`
-/

namespace A031395.P1569826038016177632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031395.P1569826038016177632

namespace A031395

/-- `A031337(Δ[n²])` -/
def P1569826038016177632.Spec : Prop :=
  ∀ n, P1569826038016177632.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P15852372315782555723

`A031215(4*n+2)`
-/

namespace A031395.P15852372315782555723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (4 * n + 2)

end

end A031395.P15852372315782555723

namespace A031395

/-- `A031215(4*n+2)` -/
def P15852372315782555723.Spec : Prop :=
  ∀ n, P15852372315782555723.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P12565616604479173684

`A060191(3*n+n+1)`
-/

namespace A031395.P12565616604479173684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (3 * n + (n + 1))

end

end A031395.P12565616604479173684

namespace A031395

/-- `A060191(3*n+n+1)` -/
def P12565616604479173684.Spec : Prop :=
  ∀ n, P12565616604479173684.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P4702861756368329860

`A055670(A017113(n))-1`
-/

namespace A031395.P4702861756368329860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A017113 n).toNat - 1

end

end A031395.P4702861756368329860

namespace A031395

/-- `A055670(A017113(n))-1` -/
def P4702861756368329860.Spec : Prop :=
  ∀ n, P4702861756368329860.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P15291006168150085985

`or(1, A031215(A016825(n)))`
-/

namespace A031395.P15291006168150085985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031215 (A016825 n).toNat)

end

end A031395.P15291006168150085985

namespace A031395

/-- `or(1, A031215(A016825(n)))` -/
def P15291006168150085985.Spec : Prop :=
  ∀ n, P15291006168150085985.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P10132705488582356188

`record[A031215(A124625(n+2)+A124625(n))]`
-/

namespace A031395.P10132705488582356188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A124625 (n + 2) + A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031395.P10132705488582356188

namespace A031395

/-- `record[A031215(A124625(n+2)+A124625(n))]` -/
def P10132705488582356188.Spec : Prop :=
  ∀ n, P10132705488582356188.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P11026655490598129135

`A065091(8*n+3)`
-/

namespace A031395.P11026655490598129135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (8 * n + 3)

end

end A031395.P11026655490598129135

namespace A031395

/-- `A065091(8*n+3)` -/
def P11026655490598129135.Spec : Prop :=
  ∀ n, P11026655490598129135.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P7066432205232303552

`A006005(8*n+4)`
-/

namespace A031395.P7066432205232303552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (8 * n + 4)

end

end A031395.P7066432205232303552

namespace A031395

/-- `A006005(8*n+4)` -/
def P7066432205232303552.Spec : Prop :=
  ∀ n, P7066432205232303552.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P4407691910401332415

`A014193(8*n+4)`
-/

namespace A031395.P4407691910401332415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014193 (8 * n + 4)

end

end A031395.P4407691910401332415

namespace A031395

/-- `A014193(8*n+4)` -/
def P4407691910401332415.Spec : Prop :=
  ∀ n, P4407691910401332415.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P16330286480552171926

`A062720(8*n+4)`
-/

namespace A031395.P16330286480552171926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (8 * n + 4)

end

end A031395.P16330286480552171926

namespace A031395

/-- `A062720(8*n+4)` -/
def P16330286480552171926.Spec : Prop :=
  ∀ n, P16330286480552171926.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P9276660543311244583

`A068519(8*n+4)`
-/

namespace A031395.P9276660543311244583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 (8 * n + 4)

end

end A031395.P9276660543311244583

namespace A031395

/-- `A068519(8*n+4)` -/
def P9276660543311244583.Spec : Prop :=
  ∀ n, P9276660543311244583.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P2877279730604361139

`A161847(8*n+4)`
-/

namespace A031395.P2877279730604361139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (8 * n + 4)

end

end A031395.P2877279730604361139

namespace A031395

/-- `A161847(8*n+4)` -/
def P2877279730604361139.Spec : Prop :=
  ∀ n, P2877279730604361139.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P10337891631168711919

`A171577(8*n+4)`
-/

namespace A031395.P10337891631168711919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (8 * n + 4)

end

end A031395.P10337891631168711919

namespace A031395

/-- `A171577(8*n+4)` -/
def P10337891631168711919.Spec : Prop :=
  ∀ n, P10337891631168711919.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P2448411291293154631

`A273960(8*n+4)`
-/

namespace A031395.P2448411291293154631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (8 * n + 4)

end

end A031395.P2448411291293154631

namespace A031395

/-- `A273960(8*n+4)` -/
def P2448411291293154631.Spec : Prop :=
  ∀ n, P2448411291293154631.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P6021529540380556603

`A346180(8*n+4)`
-/

namespace A031395.P6021529540380556603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (8 * n + 4)

end

end A031395.P6021529540380556603

namespace A031395

/-- `A346180(8*n+4)` -/
def P6021529540380556603.Spec : Prop :=
  ∀ n, P6021529540380556603.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P4056290211354758323

`A350171(8*n+4)`
-/

namespace A031395.P4056290211354758323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (8 * n + 4)

end

end A031395.P4056290211354758323

namespace A031395

/-- `A350171(8*n+4)` -/
def P4056290211354758323.Spec : Prop :=
  ∀ n, P4056290211354758323.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P482254701215779116

`A350173(8*n+4)`
-/

namespace A031395.P482254701215779116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350173 (8 * n + 4)

end

end A031395.P482254701215779116

namespace A031395

/-- `A350173(8*n+4)` -/
def P482254701215779116.Spec : Prop :=
  ∀ n, P482254701215779116.a n = A031395 (n + 1)

end A031395

/-! ## A031395.P10764374250693455019

`A383578(8*n+4)`
-/

namespace A031395.P10764374250693455019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (8 * n + 4)

end

end A031395.P10764374250693455019

namespace A031395

/-- `A383578(8*n+4)` -/
def P10764374250693455019.Spec : Prop :=
  ∀ n, P10764374250693455019.a n = A031395 (n + 1)

end A031395

/-!
# A031396: Numbers k such that Pell equation x^2 - k*y^2 = -1 is soluble.

The programs for A031396, there is no canonical definition to state claims against.
-/

/-! ## A031396.P12410742939212756393

`∪[A003814(n+1), n²+1]`
-/

namespace A031396.P12410742939212756393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A031396.P12410742939212756393

/-! ## A031396.P4826803067185064860

`A003814(n-a(val(n, n+1))+1)` with `a(0)=1`
-/

namespace A031396.P4826803067185064860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003814 ((n : ℤ) - a (SequenceMachineLib.valuation n (n + 1)) + 1).toNat

end

end A031396.P4826803067185064860

/-! ## A031396.P14883804344116886318

`∪[A002522(n), A003814(n+1)]`
-/

namespace A031396.P14883804344116886318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031396.P14883804344116886318

/-! ## A031396.P12025567180977039171

`∪[A002523(n), A003814(n+1)]`
-/

namespace A031396.P12025567180977039171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031396.P12025567180977039171

/-! ## A031396.P11376368456378306937

`∪[A002604(n), A003814(n+1)]`
-/

namespace A031396.P11376368456378306937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031396.P11376368456378306937

/-! ## A031396.P17592040968255736387

`A003814(A028310(n))-A000007(n)`
-/

namespace A031396.P17592040968255736387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (A028310 n).toNat - A000007 n

end

end A031396.P17592040968255736387

/-! ## A031396.P12498148320467911349

`A003814(A000007(n)+n)-A000007(n)`
-/

namespace A031396.P12498148320467911349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A031396.P12498148320467911349

/-! ## A031396.P3826171387091691182

`record[A003814(A008619(n))^A088705(n)]`
-/

namespace A031396.P3826171387091691182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003814 (A008619 n).toNat : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031396.P3826171387091691182

/-! ## A031396.P4749373958283001413

`record[A003814(A008620(n))^A088705(n)]`
-/

namespace A031396.P4749373958283001413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003814 (A008620 n).toNat : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031396.P4749373958283001413

/-! ## A031396.P3522204466188875195

`record[n*A068716(n+1)+1]`
-/

namespace A031396.P3522204466188875195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068716 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031396.P3522204466188875195

/-! ## A031396.P4242706614122210493

`record[(n+1)^(A003285(n+1)%2)]`
-/

namespace A031396.P4242706614122210493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A003285 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031396.P4242706614122210493

/-! ## A031396.P6164123449301447093

`A003814(A233583(n+1))%∑[A145064(n)]`
-/

namespace A031396.P6164123449301447093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003814 (A233583 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031396.P6164123449301447093

/-! ## A031396.P13764874101555169759

`record[A003814(A134478(n))-A000007(n)]`
-/

namespace A031396.P13764874101555169759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (A134478 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031396.P13764874101555169759

/-!
# A031397: Nonsquarefree k such that Pell equation x^2 - k*y^2 = -1 is soluble.

The programs for A031397, there is no canonical definition to state claims against.
-/

/-! ## A031397.P16395340490718630335

`∩[A137351(n+1), A034025(n)]`
-/

namespace A031397.P16395340490718630335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P16395340490718630335

/-! ## A031397.P1353307381594963992

`∩[A137351(n+1), A034023(n)]`
-/

namespace A031397.P1353307381594963992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P1353307381594963992

/-! ## A031397.P14506427435260620711

`∩[A003814(n+1), A034023(n)]`
-/

namespace A031397.P14506427435260620711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P14506427435260620711

/-! ## A031397.P6993277004482452446

`∩[A003814(n+1), A034025(n)]`
-/

namespace A031397.P6993277004482452446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P6993277004482452446

/-! ## A031397.P11987389071703807215

`∩[A031396(n+1), A034023(n)]`
-/

namespace A031397.P11987389071703807215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P11987389071703807215

/-! ## A031397.P6121453447751776905

`∩[A031396(n+1), A034025(n)]`
-/

namespace A031397.P6121453447751776905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P6121453447751776905

/-! ## A031397.P11325612699808127572

`A003814(eq[0, A008683(A031396(n+1))])`
-/

namespace A031397.P11325612699808127572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031397.P11325612699808127572

/-! ## A031397.P4779732532300653216

`∩[A003814(n+1), A034046(n+1)]`
-/

namespace A031397.P4779732532300653216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P4779732532300653216

/-! ## A031397.P18025764257144803604

`∩[A031396(n+1), A034046(n+1)]`
-/

namespace A031397.P18025764257144803604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P18025764257144803604

/-! ## A031397.P7767623277548193240

`∩[A034046(n+1), A137351(n+1)]`
-/

namespace A031397.P7767623277548193240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P7767623277548193240

/-! ## A031397.P110360911568609094

`∩[A003814(n+1), A319927(n+1)]`
-/

namespace A031397.P110360911568609094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P110360911568609094

/-! ## A031397.P9742793074860070980

`∩[A031396(n+1), A319927(n+1)]`
-/

namespace A031397.P9742793074860070980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P9742793074860070980

/-! ## A031397.P10563330634918413466

`∩[A137351(n+1), A319927(n+1)]`
-/

namespace A031397.P10563330634918413466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P10563330634918413466

/-! ## A031397.P11502488393370678352

`filter[A137351(n+1), A087049(#)]`
-/

namespace A031397.P11502488393370678352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A031397.P11502488393370678352

/-! ## A031397.P13279631316097266294

`∩[A003814(n+1), A307579(n+1)]`
-/

namespace A031397.P13279631316097266294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P13279631316097266294

/-! ## A031397.P15336903461363542343

`∩[A031396(n+1), A307579(n+1)]`
-/

namespace A031397.P15336903461363542343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P15336903461363542343

/-! ## A031397.P17970816154378683719

`∩[A137351(n+1), A307579(n+1)]`
-/

namespace A031397.P17970816154378683719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P17970816154378683719

/-! ## A031397.P9083954571152059180

`∩[A003814(n+1), A038838(n+1)]`
-/

namespace A031397.P9083954571152059180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P9083954571152059180

/-! ## A031397.P5496399199170290815

`∩[A031396(n+1), A038838(n+1)]`
-/

namespace A031397.P5496399199170290815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P5496399199170290815

/-! ## A031397.P4821174680864283714

`∩[A038838(n+1), A137351(n+1)]`
-/

namespace A031397.P4821174680864283714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031397.P4821174680864283714

/-!
# A031398: Squarefree m with no 4k+3 factors such that Pell equation x^2 - m*y^2 = -1 is insoluble.

The programs for A031398, there is no canonical definition to state claims against.
-/

/-! ## A031398.P17304610737492200861

`filter[A031399(n+1), A008966(#)]`
-/

namespace A031398.P17304610737492200861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A031398.P17304610737492200861

/-! ## A031398.P3073335746187105958

`filter[A031399(n+1), A323154(#)]`
-/

namespace A031398.P3073335746187105958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A031398.P3073335746187105958

/-! ## A031398.P2384508773620115757

`filter[A031399(n+1), A353559(#)]`
-/

namespace A031398.P2384508773620115757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A031398.P2384508773620115757

/-! ## A031398.P6499536892272718422

`filter[A031399(n+1), A354819(#)]`
-/

namespace A031398.P6499536892272718422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A031398.P6499536892272718422

/-! ## A031398.P6382191711735043083

`filter[A031399(n+1), A359377(#)]`
-/

namespace A031398.P6382191711735043083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A031398.P6382191711735043083

/-! ## A031398.P4791475202327430023

`∩[A005117(n+1), A031399(n+1)]`
-/

namespace A031398.P4791475202327430023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P4791475202327430023

/-! ## A031398.P15035243565792066485

`∩[A020893(n+1), A031399(n+1)]`
-/

namespace A031398.P15035243565792066485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P15035243565792066485

/-! ## A031398.P4064620514068481070

`∩[A031399(n+1), A348499(n+1)]`
-/

namespace A031398.P4064620514068481070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P4064620514068481070

/-! ## A031398.P9965448543983481948

`∩[A031399(n+1), A348506(n+1)]`
-/

namespace A031398.P9965448543983481948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P9965448543983481948

/-! ## A031398.P8012492214683122545

`∩[A031399(n+1), A089269(n+1)]`
-/

namespace A031398.P8012492214683122545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P8012492214683122545

/-! ## A031398.P2666731446678129541

`∩[A031399(n+1), A087247(n+1)]`
-/

namespace A031398.P2666731446678129541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P2666731446678129541

/-! ## A031398.P3107196998067316597

`∩[A031399(n+1), A367018(n+1)]`
-/

namespace A031398.P3107196998067316597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P3107196998067316597

/-! ## A031398.P5707152641670861691

`∩[A000469(n+1), A031399(n+1)]`
-/

namespace A031398.P5707152641670861691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P5707152641670861691

/-! ## A031398.P13562702972483898730

`∩[A031399(n+1), A120944(n+1)]`
-/

namespace A031398.P13562702972483898730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P13562702972483898730

/-! ## A031398.P11681711694099518343

`∩[A031399(n+1), A366413(n+1)]`
-/

namespace A031398.P11681711694099518343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P11681711694099518343

/-! ## A031398.P8800147419496112677

`∩[A031399(n+1), A034044(n+1)]`
-/

namespace A031398.P8800147419496112677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P8800147419496112677

/-! ## A031398.P6960911906069160052

`∩[A031399(n+1), A049197(n+1)]`
-/

namespace A031398.P6960911906069160052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P6960911906069160052

/-! ## A031398.P15547822196892926215

`∩[A031399(n+1), A087246(n+1)]`
-/

namespace A031398.P15547822196892926215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P15547822196892926215

/-! ## A031398.P15330592152561227180

`∩[A031399(n+1), A144338(n+1)]`
-/

namespace A031398.P15330592152561227180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P15330592152561227180

/-! ## A031398.P18346573155447640384

`∩[A031399(n+1), A366882(n+1)]`
-/

namespace A031398.P18346573155447640384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031398.P18346573155447640384

/-!
# A031399: Numbers n with no 4k+3 factors such that the Pell equation x^2 - n y^2 = -1 is insoluble.

The programs for A031399, there is no canonical definition to state claims against.
-/

/-! ## A031399.P7734613352793541531

`∩[comp[A031396(n+1)], A072437(n+1)]`
-/

namespace A031399.P7734613352793541531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A031399.P7734613352793541531

/-! ## A031399.P16351963484392053766

`∩[comp[A003814(n+1)], A072437(n+3)]`
-/

namespace A031399.P16351963484392053766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A031399.P16351963484392053766

