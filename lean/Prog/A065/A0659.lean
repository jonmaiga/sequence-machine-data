import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A065900: Numbers n such that sigma(n) = sigma(n-1) + sigma(n-2).

The programs for A065900, there is no canonical definition to state claims against.
-/

/-! ## A065900.P9918877746385393200

`A076530(n+1)+1`
-/

namespace A065900.P9918877746385393200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076530 (n + 1) + 1

end

end A065900.P9918877746385393200

/-! ## A065900.P13314648536001565383

`A104149(n+1)+2`
-/

namespace A065900.P13314648536001565383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104149 (n + 1) + 2

end

end A065900.P13314648536001565383

/-! ## A065900.P4298645336175324062

`abs(xor(-1, A076530(Δ[n²]-n)))`
-/

namespace A065900.P4298645336175324062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A076530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)|

end

end A065900.P4298645336175324062

/-! ## A065900.P5273853106782924021

`A052938(2*n)-(n-A076530(Δ[n²]-n))`
-/

namespace A065900.P5273853106782924021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - ((n : ℤ) - A076530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A065900.P5273853106782924021

/-!
# A065902: Smallest prime p such that n is a solution mod p of x^4 = 2, or 0 if no such prime exists.

The programs for A065902, there is no canonical definition to state claims against.
-/

/-! ## A065902.P6459360378450849878

`A274457((n+2)²²-2)`
-/

namespace A065902.P6459360378450849878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274457 (((n + 2) ^ 2) ^ 2 - 2)

end

end A065902.P6459360378450849878

/-!
# A065907: First solution mod p of x^4 = 2 for primes p such that only two solutions exist.

The programs for A065907, there is no canonical definition to state claims against.
-/

/-! ## A065907.P12364765948051178358

`p?[8*n-1]-A065908(n+1)`
-/

namespace A065907.P12364765948051178358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065908 (n + 1)

end

end A065907.P12364765948051178358

/-! ## A065907.P4073789814501218862

`A007522(n+1)-A065908(n+1)`
-/

namespace A065907.P4073789814501218862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) - A065908 (n + 1)

end

end A065907.P4073789814501218862

/-! ## A065907.P7567610573018828856

`A045382(n+2)-A065908(n+1)`
-/

namespace A065907.P7567610573018828856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2) - A065908 (n + 1)

end

end A065907.P7567610573018828856

/-! ## A065907.P7983771331570161563

`record[A006530(8*n+7)]-A065908(n+1)`
-/

namespace A065907.P7983771331570161563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065908 (n + 1)

end

end A065907.P7983771331570161563

/-! ## A065907.P14048721837166476411

`record[A020639(8*n+7)]-A065908(n+1)`
-/

namespace A065907.P14048721837166476411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065908 (n + 1)

end

end A065907.P14048721837166476411

/-! ## A065907.P461488567522878130

`p?[A004771(n)]%A065908(n+1)`
-/

namespace A065907.P461488567522878130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065908 (n + 1))

end

end A065907.P461488567522878130

/-! ## A065907.P9603126711795219295

`p?[A004215(n+1)]%A065908(n+1)`
-/

namespace A065907.P9603126711795219295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A065908 (n + 1))

end

end A065907.P9603126711795219295

/-! ## A065907.P5752945058478291403

`A006530(A178389(n+1))-A065908(n+1)`
-/

namespace A065907.P5752945058478291403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178389 (n + 1)).toNat - A065908 (n + 1)

end

end A065907.P5752945058478291403

/-! ## A065907.P10943954565299276815

`record[A014963(8*n+7)]-A065908(n+1)`
-/

namespace A065907.P10943954565299276815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065908 (n + 1)

end

end A065907.P10943954565299276815

/-! ## A065907.P9305721647864010984

`A014963(record[A014963(8*n+7)])%A065908(n+1)`
-/

namespace A065907.P9305721647864010984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A065908 (n + 1))

end

end A065907.P9305721647864010984

/-!
# A065908: Second solution mod p of x^4 = 2 for primes p such that only two solutions exist.

The programs for A065908, there is no canonical definition to state claims against.
-/

/-! ## A065908.P12593394792583704130

`p?[8*n-1]-A065907(n+1)`
-/

namespace A065908.P12593394792583704130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065907 (n + 1)

end

end A065908.P12593394792583704130

/-! ## A065908.P2003692442018377123

`A007522(n+1)-A065907(n+1)`
-/

namespace A065908.P2003692442018377123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) - A065907 (n + 1)

end

end A065908.P2003692442018377123

/-! ## A065908.P9726830282776914917

`A045382(n+2)-A065907(n+1)`
-/

namespace A065908.P9726830282776914917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2) - A065907 (n + 1)

end

end A065908.P9726830282776914917

/-! ## A065908.P10098055342038638441

`record[A006530(8*n+7)]-A065907(n+1)`
-/

namespace A065908.P10098055342038638441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065907 (n + 1)

end

end A065908.P10098055342038638441

/-! ## A065908.P12743881447002198909

`record[A020639(8*n+7)]-A065907(n+1)`
-/

namespace A065908.P12743881447002198909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065907 (n + 1)

end

end A065908.P12743881447002198909

/-! ## A065908.P9656155888502560338

`A006530(A178389(n+1))-A065907(n+1)`
-/

namespace A065908.P9656155888502560338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178389 (n + 1)).toNat - A065907 (n + 1)

end

end A065908.P9656155888502560338

/-! ## A065908.P7202669691680174205

`record[A014963(8*n+7)]-A065907(n+1)`
-/

namespace A065908.P7202669691680174205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065907 (n + 1)

end

end A065908.P7202669691680174205

/-!
# A065909: First solution mod p of x^4 = 2 for primes p such that more than two solutions exist.

The programs for A065909, there is no canonical definition to state claims against.
-/

/-! ## A065909.P4079155398013290195

`A014754(n+1)-A065912(n+1)`
-/

namespace A065909.P4079155398013290195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1) - A065912 (n + 1)

end

end A065909.P4079155398013290195

/-! ## A065909.P6797642864453040084

`A014754(A000027(n+1))%A065912(n+1)`
-/

namespace A065909.P6797642864453040084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014754 (A000027 (n + 1)).toNat) (A065912 (n + 1))

end

end A065909.P6797642864453040084

/-! ## A065909.P12212681007832061669

`A065910(n+1)+A065911(n+1)-A065912(n+1)`
-/

namespace A065909.P12212681007832061669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065910 (n + 1) + (A065911 (n + 1) - A065912 (n + 1))

end

end A065909.P12212681007832061669

/-! ## A065909.P7387792553576996074

`A028310(A014754(n+1)%A065912(n+1))`
-/

namespace A065909.P7387792553576996074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A014754 (n + 1)) (A065912 (n + 1))).toNat

end

end A065909.P7387792553576996074

/-! ## A065909.P18089732794162446940

`p?[A009001(A040098(n+1))]-A065912(n+1)`
-/

namespace A065909.P18089732794162446940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A040098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065912 (n + 1)

end

end A065909.P18089732794162446940

/-! ## A065909.P13951971434628830913

`p?[A009001(A051071(n+1))]-A065912(n+1)`
-/

namespace A065909.P13951971434628830913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065912 (n + 1)

end

end A065909.P13951971434628830913

/-!
# A065910: Second solution mod p of x^4 = 2 for primes p such that more than two solution exists.

The programs for A065910, there is no canonical definition to state claims against.
-/

/-! ## A065910.P4158572990619085238

`A014754(n+1)-A065911(n+1)`
-/

namespace A065910.P4158572990619085238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1) - A065911 (n + 1)

end

end A065910.P4158572990619085238

/-! ## A065910.P15394108826182639051

`A014754(gcd(n+1, n²+n))%A065911(n+1)`
-/

namespace A065910.P15394108826182639051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014754 (Nat.gcd (n + 1) (n ^ 2 + n))) (A065911 (n + 1))

end

end A065910.P15394108826182639051

/-! ## A065910.P16068610371069847484

`A014754(A000027(n+1))%A065911(n+1)`
-/

namespace A065910.P16068610371069847484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014754 (A000027 (n + 1)).toNat) (A065911 (n + 1))

end

end A065910.P16068610371069847484

/-! ## A065910.P2681588695831053332

`A014754(n+1)%A065911(A028310(n+1))`
-/

namespace A065910.P2681588695831053332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014754 (n + 1)) (A065911 (A028310 (n + 1)).toNat)

end

end A065910.P2681588695831053332

/-! ## A065910.P8583522076423098920

`A065909(n+1)+A065912(n+1)-A065911(n+1)`
-/

namespace A065910.P8583522076423098920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065909 (n + 1) + (A065912 (n + 1) - A065911 (n + 1))

end

end A065910.P8583522076423098920

/-! ## A065910.P16493776849844427820

`p?[A009001(A040098(n+1))]-A065911(n+1)`
-/

namespace A065910.P16493776849844427820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A040098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065911 (n + 1)

end

end A065910.P16493776849844427820

/-!
# A065911: Third solution mod p of x^4 = 2 for primes p such that more than two solution exists.

The programs for A065911, there is no canonical definition to state claims against.
-/

/-! ## A065911.P17461693589663660647

`A014754(n+1)-A065910(n+1)`
-/

namespace A065911.P17461693589663660647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1) - A065910 (n + 1)

end

end A065911.P17461693589663660647

/-! ## A065911.P9196896179231961134

`A065909(n+1)+A065912(n+1)-A065910(n+1)`
-/

namespace A065911.P9196896179231961134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065909 (n + 1) + (A065912 (n + 1) - A065910 (n + 1))

end

end A065911.P9196896179231961134

/-! ## A065911.P17324087459607595772

`p?[A009001(A040098(n+1))]-A065910(n+1)`
-/

namespace A065911.P17324087459607595772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A040098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065910 (n + 1)

end

end A065911.P17324087459607595772

/-! ## A065911.P13357889473127515716

`p?[A009001(A051071(n+1))]-A065910(n+1)`
-/

namespace A065911.P13357889473127515716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065910 (n + 1)

end

end A065911.P13357889473127515716

/-! ## A065911.P17243747173814611337

`record[A009001(A040098(n+7))]-A065910(n+1)`
-/

namespace A065911.P17243747173814611337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A040098 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065910 (n + 1)

end

end A065911.P17243747173814611337

/-! ## A065911.P9611241527149768424

`record[A009001(A051071(n+8))]-A065910(n+1)`
-/

namespace A065911.P9611241527149768424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051071 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065910 (n + 1)

end

end A065911.P9611241527149768424

/-!
# A065912: Fourth solution mod p of x^4 = 2 for primes p such that more than two solution exists.

The programs for A065912, there is no canonical definition to state claims against.
-/

/-! ## A065912.P17520050228079233868

`A014754(n+1)-A065909(n+1)`
-/

namespace A065912.P17520050228079233868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1) - A065909 (n + 1)

end

end A065912.P17520050228079233868

/-! ## A065912.P2737498703787183674

`A065910(n+1)+A065911(n+1)-A065909(n+1)`
-/

namespace A065912.P2737498703787183674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065910 (n + 1) + (A065911 (n + 1) - A065909 (n + 1))

end

end A065912.P2737498703787183674

/-! ## A065912.P17198494575277112618

`p?[A009001(A040098(n+1))]-A065909(n+1)`
-/

namespace A065912.P17198494575277112618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A040098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065909 (n + 1)

end

end A065912.P17198494575277112618

/-! ## A065912.P15363443308948416792

`p?[A009001(A051071(n+1))]-A065909(n+1)`
-/

namespace A065912.P15363443308948416792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065909 (n + 1)

end

end A065912.P15363443308948416792

/-! ## A065912.P8094639331672734197

`record[A009001(A040098(n+7))]-A065909(n+1)`
-/

namespace A065912.P8094639331672734197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A040098 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065909 (n + 1)

end

end A065912.P8094639331672734197

/-! ## A065912.P7643426907817282550

`record[A009001(A051071(n+8))]-A065909(n+1)`
-/

namespace A065912.P7643426907817282550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051071 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065909 (n + 1)

end

end A065912.P7643426907817282550

/-!
# A065914: Number of primes in the interval [ 1/2 * q(n), 3/2 * q(n) - 1 ] where q(n) is prime(n)#, the n-th primorial.

The programs for A065914, there is no canonical definition to state claims against.
-/

/-! ## A065914.P11443758212390905021

`A262869(A007947(n+1)+∑[A245155(n)])`
-/

namespace A065914.P11443758212390905021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A007947 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065914.P11443758212390905021

/-!
# A065915: Numerator of sigma(8*n^2)/sigma(4*n^2).

The programs for A065915, the canonical program `A065915.P10643357233130055355` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065915 has offset 1).

The definition of A065915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065915.P10643357233130055355

`2^(2*val(n+1, 2)+4)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065915

/-- `2^(2*val(n+1, 2)+4)-1` -/
def P10643357233130055355.Spec : Prop :=
  ∀ n, P10643357233130055355.a n = A065915 (n + 1)

theorem P10643357233130055355.correct : P10643357233130055355.Spec := by
  intro n
  simp only [A065915, Nat.add_sub_cancel]

end A065915

/-! ## A065915.P5184710340193970063

`4^(val(n+1, 2)+2)-1`
-/

namespace A065915.P5184710340193970063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (SequenceMachineLib.valuation (n + 1) 2 + 2) : ℤ) - 1

end

end A065915.P5184710340193970063

namespace A065915

/-- `4^(val(n+1, 2)+2)-1` -/
def P5184710340193970063.Spec : Prop :=
  ∀ n, P5184710340193970063.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P10072736858515473355

`4*xor(n, -(n+2))²-1`
-/

namespace A065915.P10072736858515473355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 - 1

end

end A065915.P10072736858515473355

namespace A065915

/-- `4*xor(n, -(n+2))²-1` -/
def P10072736858515473355.Spec : Prop :=
  ∀ n, P10072736858515473355.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P4064682333594829681

`(2*(xor(n, n+1)+1))²-1`
-/

namespace A065915.P4064682333594829681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.xor n (n + 1) + 1)) ^ 2 : ℤ) - 1

end

end A065915.P4064682333594829681

namespace A065915

/-- `(2*(xor(n, n+1)+1))²-1` -/
def P4064682333594829681.Spec : Prop :=
  ∀ n, P4064682333594829681.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P1857850739709269861

`4*A059152(n)-1`
-/

namespace A065915.P1857850739709269861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A059152 n - 1

end

end A065915.P1857850739709269861

namespace A065915

/-- `4*A059152(n)-1` -/
def P1857850739709269861.Spec : Prop :=
  ∀ n, P1857850739709269861.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P11303478163713886790

`A059159(n+1)²-1`
-/

namespace A065915.P11303478163713886790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059159 (n + 1) ^ 2 - 1

end

end A065915.P11303478163713886790

namespace A065915

/-- `A059159(n+1)²-1` -/
def P11303478163713886790.Spec : Prop :=
  ∀ n, P11303478163713886790.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P4907284912195358982

`2*A065916(n+1)+1`
-/

namespace A065915.P4907284912195358982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065916 (n + 1) + 1

end

end A065915.P4907284912195358982

namespace A065915

/-- `2*A065916(n+1)+1` -/
def P4907284912195358982.Spec : Prop :=
  ∀ n, P4907284912195358982.a n = A065915 (n + 1)

theorem P4907284912195358982.correct : P4907284912195358982.Spec := by
  intro n
  simp only [A065915, Nat.add_sub_cancel, A065915.P4907284912195358982.a, A065915.P10643357233130055355.a, A065916, A065916.P7924980822449154994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065915

/-! ## A065915.P16604696029164878952

`(A088837(n+1)+1)²-1`
-/

namespace A065915.P16604696029164878952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088837 (n + 1) + 1) ^ 2 - 1

end

end A065915.P16604696029164878952

namespace A065915

/-- `(A088837(n+1)+1)²-1` -/
def P16604696029164878952.Spec : Prop :=
  ∀ n, P16604696029164878952.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P14278578713639366947

`(A100892(n+1)+2)²-1`
-/

namespace A065915.P14278578713639366947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100892 (n + 1) + 2) ^ 2 - 1

end

end A065915.P14278578713639366947

namespace A065915

/-- `(A100892(n+1)+2)²-1` -/
def P14278578713639366947.Spec : Prop :=
  ∀ n, P14278578713639366947.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P3744407360411336450

`4*(A038712(n+1)+1)²-1`
-/

namespace A065915.P3744407360411336450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A038712 (n + 1) + 1) ^ 2 - 1

end

end A065915.P3744407360411336450

namespace A065915

/-- `4*(A038712(n+1)+1)²-1` -/
def P3744407360411336450.Spec : Prop :=
  ∀ n, P3744407360411336450.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P11469572090407282753

`A134067(val((n+1)², 2)+2)+1`
-/

namespace A065915.P11469572090407282753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 2) + 1

end

end A065915.P11469572090407282753

namespace A065915

/-- `A134067(val((n+1)², 2)+2)+1` -/
def P11469572090407282753.Spec : Prop :=
  ∀ n, P11469572090407282753.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P1262616181443066233

`A024036(A085058(n))`
-/

namespace A065915.P1262616181443066233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (A085058 n).toNat

end

end A065915.P1262616181443066233

namespace A065915

/-- `A024036(A085058(n))` -/
def P1262616181443066233.Spec : Prop :=
  ∀ n, P1262616181443066233.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P9388791152622232350

`A141759(A135481(n))`
-/

namespace A065915.P9388791152622232350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 (A135481 n).toNat

end

end A065915.P9388791152622232350

namespace A065915

/-- `A141759(A135481(n))` -/
def P9388791152622232350.Spec : Prop :=
  ∀ n, P9388791152622232350.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P16176324002160857389

`A024036(A089080(n+2))`
-/

namespace A065915.P16176324002160857389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (A089080 (n + 2)).toNat

end

end A065915.P16176324002160857389

namespace A065915

/-- `A024036(A089080(n+2))` -/
def P16176324002160857389.Spec : Prop :=
  ∀ n, P16176324002160857389.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P10608000947771006250

`A088163(A059139(n)+2)`
-/

namespace A065915.P10608000947771006250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088163 (A059139 n + 2).toNat

end

end A065915.P10608000947771006250

namespace A065915

/-- `A088163(A059139(n)+2)` -/
def P10608000947771006250.Spec : Prop :=
  ∀ n, P10608000947771006250.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P10738438873728737978

`A000225(2*A085058(n))`
-/

namespace A065915.P10738438873728737978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * A085058 n).toNat

end

end A065915.P10738438873728737978

namespace A065915

/-- `A000225(2*A085058(n))` -/
def P10738438873728737978.Spec : Prop :=
  ∀ n, P10738438873728737978.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P14212276723505220411

`A062510(2*A085058(n))`
-/

namespace A065915.P14212276723505220411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (2 * A085058 n).toNat

end

end A065915.P14212276723505220411

namespace A065915

/-- `A062510(2*A085058(n))` -/
def P14212276723505220411.Spec : Prop :=
  ∀ n, P14212276723505220411.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P11135051898324346990

`A141759(A006519(n+1)-1)`
-/

namespace A065915.P11135051898324346990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 (A006519 (n + 1) - 1).toNat

end

end A065915.P11135051898324346990

namespace A065915

/-- `A141759(A006519(n+1)-1)` -/
def P11135051898324346990.Spec : Prop :=
  ∀ n, P11135051898324346990.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P6778496502307578049

`A020707(A007814(n+1))²-1`
-/

namespace A065915.P6778496502307578049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (A007814 (n + 1)).toNat ^ 2 - 1

end

end A065915.P6778496502307578049

namespace A065915

/-- `A020707(A007814(n+1))²-1` -/
def P6778496502307578049.Spec : Prop :=
  ∀ n, P6778496502307578049.a n = A065915 (n + 1)

end A065915

/-! ## A065915.P11718575629152414403

`A011782(A090739(n+1))²-1`
-/

namespace A065915.P11718575629152414403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A090739 (n + 1)).toNat ^ 2 - 1

end

end A065915.P11718575629152414403

namespace A065915

/-- `A011782(A090739(n+1))²-1` -/
def P11718575629152414403.Spec : Prop :=
  ∀ n, P11718575629152414403.a n = A065915 (n + 1)

end A065915

/-!
# A065916: Denominator of sigma(8*n^2)/sigma(4*n^2).

The programs for A065916, the canonical program `A065916.P7924980822449154994` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065916 has offset 1).

The definition of A065916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065916.P7924980822449154994

`2^(2*val(n+1, 2)+3)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065916

/-- `2^(2*val(n+1, 2)+3)-1` -/
def P7924980822449154994.Spec : Prop :=
  ∀ n, P7924980822449154994.a n = A065916 (n + 1)

theorem P7924980822449154994.correct : P7924980822449154994.Spec := by
  intro n
  simp only [A065916, Nat.add_sub_cancel]

end A065916

/-! ## A065916.P13686500409889097792

`2*xor(n, -(n+2))²-1`
-/

namespace A065916.P13686500409889097792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 - 1

end

end A065916.P13686500409889097792

namespace A065916

/-- `2*xor(n, -(n+2))²-1` -/
def P13686500409889097792.Spec : Prop :=
  ∀ n, P13686500409889097792.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P3175622347210470116

`2*(xor(n, n+1)+1)²-1`
-/

namespace A065916.P3175622347210470116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (Nat.xor n (n + 1) + 1) ^ 2 : ℤ) - 1

end

end A065916.P3175622347210470116

namespace A065916

/-- `2*(xor(n, n+1)+1)²-1` -/
def P3175622347210470116.Spec : Prop :=
  ∀ n, P3175622347210470116.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P6242274232910176227

`8*and(n+1, -(n+1))²-1`
-/

namespace A065916.P6242274232910176227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ 2 - 1

end

end A065916.P6242274232910176227

namespace A065916

/-- `8*and(n+1, -(n+1))²-1` -/
def P6242274232910176227.Spec : Prop :=
  ∀ n, P6242274232910176227.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P16508683447240017925

`A379007(2*(n+1))`
-/

namespace A065916.P16508683447240017925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379007 (2 * (n + 1))

end

end A065916.P16508683447240017925

namespace A065916

/-- `A379007(2*(n+1))` -/
def P16508683447240017925.Spec : Prop :=
  ∀ n, P16508683447240017925.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P15826193115059582182

`2*A059152(n)-1`
-/

namespace A065916.P15826193115059582182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059152 n - 1

end

end A065916.P15826193115059582182

namespace A065916

/-- `2*A059152(n)-1` -/
def P15826193115059582182.Spec : Prop :=
  ∀ n, P15826193115059582182.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P1831626897376350313

`A264619(xor(n, n+1))`
-/

namespace A065916.P1831626897376350313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 (Nat.xor n (n + 1))

end

end A065916.P1831626897376350313

namespace A065916

/-- `A264619(xor(n, n+1))` -/
def P1831626897376350313.Spec : Prop :=
  ∀ n, P1831626897376350313.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P10364981503392377420

`floor(A065915(n+1)/2)`
-/

namespace A065916.P10364981503392377420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065915 (n + 1) : ℚ) / 2⌋

end

end A065916.P10364981503392377420

namespace A065916

/-- `floor(A065915(n+1)/2)` -/
def P10364981503392377420.Spec : Prop :=
  ∀ n, P10364981503392377420.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P7820896986096057295

`A059159(n+1)²/2-1`
-/

namespace A065916.P7820896986096057295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059159 (n + 1) ^ 2 : ℚ) / 2 - 1

end

end A065916.P7820896986096057295

namespace A065916

/-- `A059159(n+1)²/2-1` -/
def P7820896986096057295.Spec : Prop :=
  ∀ n, P7820896986096057295.a n = (A065916 (n + 1) : ℚ)

end A065916

/-! ## A065916.P11652131688598668477

`A000225(2*val(n+1, 2)+3)`
-/

namespace A065916.P11652131688598668477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * SequenceMachineLib.valuation (n + 1) 2 + 3)

end

end A065916.P11652131688598668477

namespace A065916

/-- `A000225(2*val(n+1, 2)+3)` -/
def P11652131688598668477.Spec : Prop :=
  ∀ n, P11652131688598668477.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P12228267781032834054

`2*(A038712(n+1)+1)²-1`
-/

namespace A065916.P12228267781032834054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A038712 (n + 1) + 1) ^ 2 - 1

end

end A065916.P12228267781032834054

namespace A065916

/-- `2*(A038712(n+1)+1)²-1` -/
def P12228267781032834054.Spec : Prop :=
  ∀ n, P12228267781032834054.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P14911244668956612410

`A134067(val((n+1)², 2)+1)+1`
-/

namespace A065916.P14911244668956612410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1) + 1

end

end A065916.P14911244668956612410

namespace A065916

/-- `A134067(val((n+1)², 2)+1)+1` -/
def P14911244668956612410.Spec : Prop :=
  ∀ n, P14911244668956612410.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P4863087241398332914

`4*xor((n+1)², A005563(n))+3`
-/

namespace A065916.P4863087241398332914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.xor ((n + 1) ^ 2 : ℤ) (A005563 n) + 3

end

end A065916.P4863087241398332914

namespace A065916

/-- `4*xor((n+1)², A005563(n))+3` -/
def P4863087241398332914.Spec : Prop :=
  ∀ n, P4863087241398332914.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P14714379687166051287

`A131577(2*(val(n+1, 2)+2))-1`
-/

namespace A065916.P14714379687166051287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * (SequenceMachineLib.valuation (n + 1) 2 + 2)) - 1

end

end A065916.P14714379687166051287

namespace A065916

/-- `A131577(2*(val(n+1, 2)+2))-1` -/
def P14714379687166051287.Spec : Prop :=
  ∀ n, P14714379687166051287.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P9066254249774551410

`A088163(A059139(n))`
-/

namespace A065916.P9066254249774551410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088163 (A059139 n).toNat

end

end A065916.P9066254249774551410

namespace A065916

/-- `A088163(A059139(n))` -/
def P9066254249774551410.Spec : Prop :=
  ∀ n, P9066254249774551410.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P4642914357998232796

`A083420(A001511(n+1))`
-/

namespace A065916.P4642914357998232796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 (A001511 (n + 1)).toNat

end

end A065916.P4642914357998232796

namespace A065916

/-- `A083420(A001511(n+1))` -/
def P4642914357998232796.Spec : Prop :=
  ∀ n, P4642914357998232796.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P10769046939744879622

`A157914(A006519(n+1))`
-/

namespace A065916.P10769046939744879622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (A006519 (n + 1)).toNat

end

end A065916.P10769046939744879622

namespace A065916

/-- `A157914(A006519(n+1))` -/
def P10769046939744879622.Spec : Prop :=
  ∀ n, P10769046939744879622.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P6874693366839794392

`A083420(A007814(n+1)+1)`
-/

namespace A065916.P6874693366839794392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 (A007814 (n + 1) + 1).toNat

end

end A065916.P6874693366839794392

namespace A065916

/-- `A083420(A007814(n+1)+1)` -/
def P6874693366839794392.Spec : Prop :=
  ∀ n, P6874693366839794392.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P6569745523859732896

`A000225(A037227(n+1)+2)`
-/

namespace A065916.P6569745523859732896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A037227 (n + 1) + 2).toNat

end

end A065916.P6569745523859732896

namespace A065916

/-- `A000225(A037227(n+1)+2)` -/
def P6569745523859732896.Spec : Prop :=
  ∀ n, P6569745523859732896.a n = A065916 (n + 1)

end A065916

/-! ## A065916.P10887379785255111355

`and(A065915(n+1), A157914(n+1))`
-/

namespace A065916.P10887379785255111355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065915 (n + 1)) (A157914 (n + 1))

end

end A065916.P10887379785255111355

namespace A065916

/-- `and(A065915(n+1), A157914(n+1))` -/
def P10887379785255111355.Spec : Prop :=
  ∀ n, P10887379785255111355.a n = A065916 (n + 1)

end A065916

/-!
# A065917: Boundaries of primorial intervals [1,3]; [3,9],[9,15]; [15,45], etc.

The programs for A065917, the canonical program `A065917.P2693913146856048653` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065917 has offset 1).

The definition of A065917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065917.P15800945195776062452

`A060735(2*(n+1))/2`
-/

namespace A065917.P15800945195776062452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060735 (2 * (n + 1)) : ℚ) / 2

end

end A065917.P15800945195776062452

namespace A065917

/-- `A060735(2*(n+1))/2` -/
def P15800945195776062452.Spec : Prop :=
  ∀ n, P15800945195776062452.a n = (A065917 (n + 1) : ℚ)

end A065917

/-! ## A065917.P15637648582473892522

`(A343048(Δ[n²])+1)/2`
-/

namespace A065917.P15637648582473892522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343048 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1 : ℚ) / 2

end

end A065917.P15637648582473892522

namespace A065917

/-- `(A343048(Δ[n²])+1)/2` -/
def P15637648582473892522.Spec : Prop :=
  ∀ n, P15637648582473892522.a n = (A065917 (n + 1) : ℚ)

end A065917

/-! ## A065917.P2693913146856048653

`ceil(A343048(2*n+1)/2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065917

/-- `ceil(A343048(2*n+1)/2)` -/
def P2693913146856048653.Spec : Prop :=
  ∀ n, P2693913146856048653.a n = A065917 (n + 1)

theorem P2693913146856048653.correct : P2693913146856048653.Spec := by
  intro n
  simp only [A065917, Nat.add_sub_cancel]

end A065917

/-! ## A065917.P14670310583189482536

`floor(A060735(n+2+n)/2)`
-/

namespace A065917.P14670310583189482536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060735 (n + 2 + n) : ℚ) / 2⌋

end

end A065917.P14670310583189482536

namespace A065917

/-- `floor(A060735(n+2+n)/2)` -/
def P14670310583189482536.Spec : Prop :=
  ∀ n, P14670310583189482536.a n = A065917 (n + 1)

end A065917

/-! ## A065917.P7148626159520616863

`A060735(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A065917.P7148626159520616863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060735 (2 * n + 1) - a (n - 1)

end

end A065917.P7148626159520616863

namespace A065917

/-- `A060735(2*n+1)-a(n-1)` -/
def P7148626159520616863.Spec : Prop :=
  ∀ n, P7148626159520616863.a n = A065917 (n + 1)

end A065917

/-! ## A065917.P2007679894318596929

`∑[A343048(2*n+1)-A343048(2*n)]`
-/

namespace A065917.P2007679894318596929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 (2 * n + 1) - A343048 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065917.P2007679894318596929

namespace A065917

/-- `∑[A343048(2*n+1)-A343048(2*n)]` -/
def P2007679894318596929.Spec : Prop :=
  ∀ n, P2007679894318596929.a n = A065917 (n + 1)

end A065917

/-! ## A065917.P3620166175073721894

`∑[A060735(2*(n+1))-A060735(2*n+1)]`
-/

namespace A065917.P3620166175073721894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (2 * (n + 1)) - A060735 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065917.P3620166175073721894

namespace A065917

/-- `∑[A060735(2*(n+1))-A060735(2*n+1)]` -/
def P3620166175073721894.Spec : Prop :=
  ∀ n, P3620166175073721894.a n = A065917 (n + 1)

end A065917

/-!
# A065919: Bessel polynomial y_n(4).

The programs for A065919, the canonical program `A065919.P14885372724391238427` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065919 has offset 0).

The definition of A065919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065919.P14885372724391238427

`4*(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065919

/-- `4*(2*n-1)*a(n-1)+a(n-2)` -/
def P14885372724391238427.Spec : Prop :=
  ∀ n, P14885372724391238427.a n = A065919 n

theorem P14885372724391238427.correct : P14885372724391238427.Spec := by
  intro n
  simp only [A065919]

end A065919

/-! ## A065919.P10742316095259632353

`A078736(3*n+1)`
-/

namespace A065919.P10742316095259632353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078736 (3 * n + 1)

end

end A065919.P10742316095259632353

namespace A065919

/-- `A078736(3*n+1)` -/
def P10742316095259632353.Spec : Prop :=
  ∀ n, P10742316095259632353.a n = A065919 n

end A065919

/-! ## A065919.P3672821159999905828

`record[A078736(n+1)^(1-n%3)]`
-/

namespace A065919.P3672821159999905828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078736 (n + 1) : ℚ) ^ (1 - ((n % 3 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065919.P3672821159999905828

namespace A065919

/-- `record[A078736(n+1)^(1-n%3)]` -/
def P3672821159999905828.Spec : Prop :=
  ∀ n, P3672821159999905828.a n = (A065919 n : ℚ)

end A065919

/-! ## A065919.P15285476530524451549

`or(1, A078736(A016777(n)))`
-/

namespace A065919.P15285476530524451549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A078736 (A016777 n).toNat)

end

end A065919.P15285476530524451549

namespace A065919

/-- `or(1, A078736(A016777(n)))` -/
def P15285476530524451549.Spec : Prop :=
  ∀ n, P15285476530524451549.a n = A065919 n

end A065919

/-! ## A065919.P17571194291766078314

`A143411(∑[4*n])`
-/

namespace A065919.P17571194291766078314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143411 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065919.P17571194291766078314

namespace A065919

/-- `A143411(∑[4*n])` -/
def P17571194291766078314.Spec : Prop :=
  ∀ n, P17571194291766078314.a n = A065919 n

end A065919

/-!
# A065920: Bessel polynomial {y_n}'(2).

The programs for A065920, there is no canonical definition to state claims against.
-/

/-! ## A065920.P13943913775295607037

`∑[n]*A143415(n)`
-/

namespace A065920.P13943913775295607037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A143415 n

end

end A065920.P13943913775295607037

/-! ## A065920.P5780620491496934146

`lcm(A000217(n), A143415(n))`
-/

namespace A065920.P5780620491496934146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000217 n) (A143415 n)

end

end A065920.P5780620491496934146

/-! ## A065920.P16065487244607811908

`or(1, n)*A143415(n)*A110654(n)`
-/

namespace A065920.P16065487244607811908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A143415 n * A110654 n

end

end A065920.P16065487244607811908

/-! ## A065920.P14812570220163554466

`A143414(n)/2`
-/

namespace A065920.P14812570220163554466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143414 n : ℚ) / 2

end

end A065920.P14812570220163554466

/-! ## A065920.P9109987588168276370

`A046092(n)*A143415(n)/4`
-/

namespace A065920.P9109987588168276370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046092 n * A143415 n : ℚ) / 4

end

end A065920.P9109987588168276370

/-!
# A065922: Bessel polynomial {y_n}'(4).

The programs for A065922, the canonical program `A065922.P18134602386184303224` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065922 has offset 0).

The definition of A065922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065922.P18134602386184303224

`((2*n-1)^3*a(n-1)+n²*a(n-2))/(n-1)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065922

/-- `((2*n-1)^3*a(n-1)+n²*a(n-2))/(n-1)²` -/
def P18134602386184303224.Spec : Prop :=
  ∀ n, P18134602386184303224.a n = (A065922 n : ℚ)

end A065922

/-! ## A065922.P3562554770671942630

`A000217(n)*A143411(A001844(n))`
-/

namespace A065922.P3562554770671942630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A143411 (A001844 n).toNat

end

end A065922.P3562554770671942630

namespace A065922

/-- `A000217(n)*A143411(A001844(n))` -/
def P3562554770671942630.Spec : Prop :=
  ∀ n, P3562554770671942630.a n = A065922 n

end A065922

/-!
# A065924: Numbers n such that 1/n starts with n, after excluding leading zeros.

The programs for A065924, the canonical program `A065924.P13741255543626960932` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065924 has offset 1).

The definition of A065924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065924.P13741255543626960932

`∩[floor(10^(n/2)), round(sqrt(10)^n)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065924

/-- `∩[floor(10^(n/2)), round(sqrt(10)^n)]` -/
def P13741255543626960932.Spec : Prop :=
  ∀ n, (P13741255543626960932.a n : ℤ) = A065924 (n + 1)

theorem P13741255543626960932.correct : P13741255543626960932.Spec := by
  intro n
  simp only [A065924, Nat.add_sub_cancel]

end A065924

/-! ## A065924.P11726044219379253204

`record[gcd(floor(10^(n/2)), round(sqrt(10)^n))]`
-/

namespace A065924.P11726044219379253204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ (SequenceMachineLib.roundAway (Real.sqrt (10 : ℝ) ^ n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065924.P11726044219379253204

namespace A065924

/-- `record[gcd(floor(10^(n/2)), round(sqrt(10)^n))]` -/
def P11726044219379253204.Spec : Prop :=
  ∀ n, (P11726044219379253204.a n : ℤ) = A065924 (n + 1)

end A065924

/-! ## A065924.P2140052808361338708

`A017934(lt[A166292(n), A124575(3*n)])`
-/

namespace A065924.P2140052808361338708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124575 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065924.P2140052808361338708

namespace A065924

/-- `A017934(lt[A166292(n), A124575(3*n)])` -/
def P2140052808361338708.Spec : Prop :=
  ∀ n, P2140052808361338708.a n = A065924 (n + 1)

end A065924

/-! ## A065924.P479510734968740164

`A017934(lt[A081575(n), A188962(3*n+2)])`
-/

namespace A065924.P479510734968740164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188962 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065924.P479510734968740164

namespace A065924

/-- `A017934(lt[A081575(n), A188962(3*n+2)])` -/
def P479510734968740164.Spec : Prop :=
  ∀ n, P479510734968740164.a n = A065924 (n + 1)

end A065924

/-! ## A065924.P6674620450029227931

`filter[A017934(n), A353682(#)]`
-/

namespace A065924.P6674620450029227931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A065924.P6674620450029227931

namespace A065924

/-- `filter[A017934(n), A353682(#)]` -/
def P6674620450029227931.Spec : Prop :=
  ∀ n, P6674620450029227931.a n = A065924 (n + 1)

end A065924

/-!
# A065925: Smallest k such that sopf(n+k) = sopf(k), where sopf = A008472.

The programs for A065925, there is no canonical definition to state claims against.
-/

/-! ## A065925.P10315207532337703317

`A087727(A000139(n))+n`
-/

namespace A065925.P10315207532337703317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087727 (A000139 n).toNat + (n : ℤ)

end

end A065925.P10315207532337703317

/-!
# A065927: Records in A065925.

The programs for A065927, there is no canonical definition to state claims against.
-/

/-! ## A065927.P18136896636017567213

`record[A065925(n+1)]`
-/

namespace A065927.P18136896636017567213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065927.P18136896636017567213

/-! ## A065927.P15558103722124507416

`A065925(A065926(n+1))`
-/

namespace A065927.P15558103722124507416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065925 (A065926 (n + 1)).toNat

end

end A065927.P15558103722124507416

/-!
# A065928: (x,y) = (a(n),a(n+1)) are the solutions of (t(x)+t(y))/(1+xy) = t(2) = 3, where t(n) denotes the n-th triangular number t(n) = n(n+1)/2.

The programs for A065928, the canonical program `A065928.P16206430690023336403` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065928 has offset 0).

The definition of A065928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065928.P16206430690023336403

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=2, a(1)=11, a(2)=63`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065928

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P16206430690023336403.Spec : Prop :=
  ∀ n, P16206430690023336403.a n = A065928 n

theorem P16206430690023336403.correct : P16206430690023336403.Spec := by
  intro n
  simp only [A065928]

end A065928

/-! ## A065928.P8169498739512767455

`∑[ogf((2-3x)/(1-6x+x^2))]`
-/

namespace A065928.P8169498739512767455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P8169498739512767455

namespace A065928

/-- `∑[ogf((2-3x)/(1-6x+x^2))]` -/
def P8169498739512767455.Spec : Prop :=
  ∀ n, P8169498739512767455.a n = A065928 n

end A065928

/-! ## A065928.P2628767561104948957

`ogf((2-3x)/(1-7x+7x^2-x^3))`
-/

namespace A065928.P2628767561104948957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -7, 7, -1] n

end

end A065928.P2628767561104948957

namespace A065928

/-- `ogf((2-3x)/(1-7x+7x^2-x^3))` -/
def P2628767561104948957.Spec : Prop :=
  ∀ n, P2628767561104948957.a n = A065928 n

end A065928

/-! ## A065928.P4690866462005691731

`round(a(n-1)/(3-sqrt(8)))-1` with `a(0)=2`
-/

namespace A065928.P4690866462005691731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) - 1

end

end A065928.P4690866462005691731

namespace A065928

/-- `round(a(n-1)/(3-sqrt(8)))-1` -/
def P4690866462005691731.Spec : Prop :=
  ∀ n, P4690866462005691731.a n = A065928 n

end A065928

/-! ## A065928.P3580784203321037280

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=2, a(1)=9`
-/

namespace A065928.P3580784203321037280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P3580784203321037280

namespace A065928

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P3580784203321037280.Spec : Prop :=
  ∀ n, P3580784203321037280.a n = A065928 n

end A065928

/-! ## A065928.P11188232612664105649

`∑[6*a(n-1)-a(n-2)]` with `a(0)=2, a(1)=9`
-/

namespace A065928.P11188232612664105649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P11188232612664105649

namespace A065928

/-- `∑[6*a(n-1)-a(n-2)]` -/
def P11188232612664105649.Spec : Prop :=
  ∀ n, P11188232612664105649.a n = A065928 n

end A065928

/-! ## A065928.P6481684869873704374

`6*a(n-1)-a(n-2)-1` with `a(0)=2, a(1)=11`
-/

namespace A065928.P6481684869873704374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11] fun n a =>
  6 * a (n - 1) - a (n - 2) - 1

end

end A065928.P6481684869873704374

namespace A065928

/-- `6*a(n-1)-a(n-2)-1` -/
def P6481684869873704374.Spec : Prop :=
  ∀ n, P6481684869873704374.a n = A065928 n

end A065928

/-! ## A065928.P61806185920812151

`∑[A156066(2*n+1)]`
-/

namespace A065928.P61806185920812151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156066 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P61806185920812151

namespace A065928

/-- `∑[A156066(2*n+1)]` -/
def P61806185920812151.Spec : Prop :=
  ∀ n, P61806185920812151.a n = A065928 n

end A065928

/-! ## A065928.P1294274194977316173

`∑[A266507(n)+A001109(n)]`
-/

namespace A065928.P1294274194977316173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266507 n + A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P1294274194977316173

namespace A065928

/-- `∑[A266507(n)+A001109(n)]` -/
def P1294274194977316173.Spec : Prop :=
  ∀ n, P1294274194977316173.a n = A065928 n

end A065928

/-! ## A065928.P3947931873105166864

`∑[A077413(n)]-A182190(n)`
-/

namespace A065928.P3947931873105166864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182190 n

end

end A065928.P3947931873105166864

namespace A065928

/-- `∑[A077413(n)]-A182190(n)` -/
def P3947931873105166864.Spec : Prop :=
  ∀ n, P3947931873105166864.a n = A065928 n

end A065928

/-! ## A065928.P13157572310381040750

`Δ[A011900(n)]-A053142(n)`
-/

namespace A065928.P13157572310381040750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053142 n

end

end A065928.P13157572310381040750

namespace A065928

/-- `Δ[A011900(n)]-A053142(n)` -/
def P13157572310381040750.Spec : Prop :=
  ∀ n, P13157572310381040750.a n = A065928 n

end A065928

/-! ## A065928.P1121973341312175181

`Δ[A053141(n)]-A053142(n)`
-/

namespace A065928.P1121973341312175181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053142 n

end

end A065928.P1121973341312175181

namespace A065928

/-- `Δ[A053141(n)]-A053142(n)` -/
def P1121973341312175181.Spec : Prop :=
  ∀ n, P1121973341312175181.a n = A065928 n

end A065928

/-! ## A065928.P4547108440999126835

`A053142(n+1)+A046090(n)`
-/

namespace A065928.P4547108440999126835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 (n + 1) + A046090 n

end

end A065928.P4547108440999126835

namespace A065928

/-- `A053142(n+1)+A046090(n)` -/
def P4547108440999126835.Spec : Prop :=
  ∀ n, P4547108440999126835.a n = A065928 n

end A065928

/-! ## A065928.P6397829683772259183

`A001542(n+1)-A053142(n)`
-/

namespace A065928.P6397829683772259183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) - A053142 n

end

end A065928.P6397829683772259183

namespace A065928

/-- `A001542(n+1)-A053142(n)` -/
def P6397829683772259183.Spec : Prop :=
  ∀ n, P6397829683772259183.a n = A065928 n

end A065928

/-! ## A065928.P2716646587733720059

`∑[A038723(n)+Δ[A001109(n)]]`
-/

namespace A065928.P2716646587733720059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P2716646587733720059

namespace A065928

/-- `∑[A038723(n)+Δ[A001109(n)]]` -/
def P2716646587733720059.Spec : Prop :=
  ∀ n, P2716646587733720059.a n = A065928 n

end A065928

/-! ## A065928.P6872722574983014302

`∑[A001541(n)+A001109(n+1)]`
-/

namespace A065928.P6872722574983014302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + A001109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P6872722574983014302

namespace A065928

/-- `∑[A001541(n)+A001109(n+1)]` -/
def P6872722574983014302.Spec : Prop :=
  ∀ n, P6872722574983014302.a n = A065928 n

end A065928

/-! ## A065928.P15896250164859388523

`A001109(n+1)+∑[A038723(n)]`
-/

namespace A065928.P15896250164859388523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P15896250164859388523

namespace A065928

/-- `A001109(n+1)+∑[A038723(n)]` -/
def P15896250164859388523.Spec : Prop :=
  ∀ n, P15896250164859388523.a n = A065928 n

end A065928

/-! ## A065928.P1444621593338176403

`∑[A038723(n)+A001653(n+1)]`
-/

namespace A065928.P1444621593338176403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n + A001653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P1444621593338176403

namespace A065928

/-- `∑[A038723(n)+A001653(n+1)]` -/
def P1444621593338176403.Spec : Prop :=
  ∀ n, P1444621593338176403.a n = A065928 n

end A065928

/-! ## A065928.P83579703762502201

`A001542(n+1)-∑[A001109(n)]`
-/

namespace A065928.P83579703762502201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065928.P83579703762502201

namespace A065928

/-- `A001542(n+1)-∑[A001109(n)]` -/
def P83579703762502201.Spec : Prop :=
  ∀ n, P83579703762502201.a n = A065928 n

end A065928

/-! ## A065928.P17980312604544957594

`A053141(n+1)-3*A053142(n)`
-/

namespace A065928.P17980312604544957594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (n + 1) - 3 * A053142 n

end

end A065928.P17980312604544957594

namespace A065928

/-- `A053141(n+1)-3*A053142(n)` -/
def P17980312604544957594.Spec : Prop :=
  ∀ n, P17980312604544957594.a n = A065928 n

end A065928

/-!
# A065929: (x,y) = (a(n),a(n+1)) are the solutions of (t(x)+t(y))/(1+xy) = t(3) = 6, where t(n) denotes the n-th triangular number t(n) = n(n+1)/2.

The programs for A065929, the canonical program `A065929.P9969198685907048495` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065929 has offset 0).

The definition of A065929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065929.P9969198685907048495

`13*a(n-1)-13*a(n-2)+a(n-3)` with `a(0)=3, a(1)=35, a(2)=416`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065929

/-- `13*a(n-1)-13*a(n-2)+a(n-3)` -/
def P9969198685907048495.Spec : Prop :=
  ∀ n, P9969198685907048495.a n = A065929 n

theorem P9969198685907048495.correct : P9969198685907048495.Spec := by
  intro n
  simp only [A065929]

end A065929

/-! ## A065929.P6078663603162160898

`(2+(29-5*sqrt(35))*(6-sqrt(35))^n+(6+sqrt(35))^n*(29+5*sqrt(35)))/20`
-/

namespace A065929.P6078663603162160898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + (29 - 5 * Real.sqrt (35 : ℝ)) * (6 - Real.sqrt (35 : ℝ)) ^ n + (6 + Real.sqrt (35 : ℝ)) ^ n * (29 + 5 * Real.sqrt (35 : ℝ))) / 20

end

end A065929.P6078663603162160898

namespace A065929

/-- `(2+(29-5*sqrt(35))*(6-sqrt(35))^n+(6+sqrt(35))^n*(29+5*sqrt(35)))/20` -/
def P6078663603162160898.Spec : Prop :=
  ∀ n, P6078663603162160898.a n = (A065929 n : ℝ)

theorem P6078663603162160898.correct : P6078663603162160898.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A065929, Nat.add_sub_cancel, A065929.P6078663603162160898.a, A065929.P9969198685907048495.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A065929, Nat.add_sub_cancel, A065929.P6078663603162160898.a, A065929.P9969198685907048495.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A065929

/-! ## A065929.P5431403697474917491

`∑[ogf((3-4x)/(1-12x+x^2))]`
-/

namespace A065929.P5431403697474917491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -12, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065929.P5431403697474917491

namespace A065929

/-- `∑[ogf((3-4x)/(1-12x+x^2))]` -/
def P5431403697474917491.Spec : Prop :=
  ∀ n, P5431403697474917491.a n = A065929 n

end A065929

/-! ## A065929.P15958177207140804533

`ogf((3-4x)/(1-13x+13x^2-x^3))`
-/

namespace A065929.P15958177207140804533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -13, 13, -1] n

end

end A065929.P15958177207140804533

namespace A065929

/-- `ogf((3-4x)/(1-13x+13x^2-x^3))` -/
def P15958177207140804533.Spec : Prop :=
  ∀ n, P15958177207140804533.a n = A065929 n

end A065929

/-! ## A065929.P12550657745137654562

`∑[12*a(n-1)-a(n-2)]` with `a(0)=3, a(1)=32`
-/

namespace A065929.P12550657745137654562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 32] fun n f1 =>
  12 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065929.P12550657745137654562

namespace A065929

/-- `∑[12*a(n-1)-a(n-2)]` -/
def P12550657745137654562.Spec : Prop :=
  ∀ n, P12550657745137654562.a n = A065929 n

end A065929

/-! ## A065929.P9577126589833940746

`12*a(n-1)-(a(n-2)+1)` with `a(0)=3, a(1)=35`
-/

namespace A065929.P9577126589833940746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 35] fun n a =>
  12 * a (n - 1) - (a (n - 2) + 1)

end

end A065929.P9577126589833940746

namespace A065929

/-- `12*a(n-1)-(a(n-2)+1)` -/
def P9577126589833940746.Spec : Prop :=
  ∀ n, P9577126589833940746.a n = A065929 n

end A065929

/-! ## A065929.P6704297450141819562

`12*a(n-1)-1-a(n-2)` with `a(0)=3, a(1)=35`
-/

namespace A065929.P6704297450141819562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 35] fun n a =>
  12 * a (n - 1) - 1 - a (n - 2)

end

end A065929.P6704297450141819562

namespace A065929

/-- `12*a(n-1)-1-a(n-2)` -/
def P6704297450141819562.Spec : Prop :=
  ∀ n, P6704297450141819562.a n = A065929 n

end A065929

/-! ## A065929.P14232098933085997300

`2*A065101(n)-A097827(n)`
-/

namespace A065929.P14232098933085997300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065101 n - A097827 n

end

end A065929.P14232098933085997300

namespace A065929

/-- `2*A065101(n)-A097827(n)` -/
def P14232098933085997300.Spec : Prop :=
  ∀ n, P14232098933085997300.a n = A065929 n

end A065929

/-! ## A065929.P3627092302802650886

`4*A004191(n)-A097827(n)`
-/

namespace A065929.P3627092302802650886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004191 n - A097827 n

end

end A065929.P3627092302802650886

namespace A065929

/-- `4*A004191(n)-A097827(n)` -/
def P3627092302802650886.Spec : Prop :=
  ∀ n, P3627092302802650886.a n = A065929 n

end A065929

/-!
# A065931: Triangle of coefficients of Bessel polynomials {y_n(x)}'.

The programs for A065931, the canonical program `A065931.P6308883333468479651` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065931 has offset 1).

The definition of A065931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1827 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065931.P6308883333468479651

`A000217(A094727(n+1))*A001498(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065931

/-- `A000217(A094727(n+1))*A001498(n)` -/
def P6308883333468479651.Spec : Prop :=
  ∀ n, P6308883333468479651.a n = A065931 (n + 1)

theorem P6308883333468479651.correct : P6308883333468479651.Spec := by
  intro n
  simp only [A065931, Nat.add_sub_cancel]

end A065931

/-! ## A065931.P2853816350257106272

`A001498(A014132(n+1))*A002260(n+1)`
-/

namespace A065931.P2853816350257106272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A014132 (n + 1)).toNat * A002260 (n + 1)

end

end A065931.P2853816350257106272

namespace A065931

/-- `A001498(A014132(n+1))*A002260(n+1)` -/
def P2853816350257106272.Spec : Prop :=
  ∀ n, P2853816350257106272.a n = A065931 (n + 1)

end A065931

/-! ## A065931.P18126570789888719001

`(A245300(n)+A002024(n+1))*A001498(n)`
-/

namespace A065931.P18126570789888719001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245300 n + A002024 (n + 1)) * A001498 n

end

end A065931.P18126570789888719001

namespace A065931

/-- `(A245300(n)+A002024(n+1))*A001498(n)` -/
def P18126570789888719001.Spec : Prop :=
  ∀ n, P18126570789888719001.a n = A065931 (n + 1)

end A065931

/-! ## A065931.P16823068520483359723

`A001498(A014132(n+1))*A004739(A004201(n+1))`
-/

namespace A065931.P16823068520483359723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A014132 (n + 1)).toNat * A004739 (A004201 (n + 1)).toNat

end

end A065931.P16823068520483359723

namespace A065931

/-- `A001498(A014132(n+1))*A004739(A004201(n+1))` -/
def P16823068520483359723.Spec : Prop :=
  ∀ n, P16823068520483359723.a n = A065931 (n + 1)

end A065931

/-! ## A065931.P9281739377591051402

`A001498(A014132(n+1))*A004736(A038722(n+1))`
-/

namespace A065931.P9281739377591051402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A014132 (n + 1)).toNat * A004736 (A038722 (n + 1)).toNat

end

end A065931.P9281739377591051402

namespace A065931

/-- `A001498(A014132(n+1))*A004736(A038722(n+1))` -/
def P9281739377591051402.Spec : Prop :=
  ∀ n, P9281739377591051402.a n = A065931 (n + 1)

end A065931

/-!
# A065933: Successive maxima in sequence A007365.

The programs for A065933, there is no canonical definition to state claims against.
-/

/-! ## A065933.P2146560857391971795

`record[A007365(n)]`
-/

namespace A065933.P2146560857391971795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065933.P2146560857391971795

/-! ## A065933.P4584110898066847003

`A007365(A065932(n+1))`
-/

namespace A065933.P4584110898066847003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007365 (A065932 (n + 1)).toNat

end

end A065933.P4584110898066847003

/-!
# A065936: a(n) is the integer (reduced squarefree) under the square root obtained when the inverse of a variant of Minkowski's question mark function is applied to the n-th ratio A007305(n+1)/A007306(n+1) in the left-hand subtree of Stern-Brocot tree and zero when it results a rational value.

The programs for A065936, there is no canonical definition to state claims against.
-/

/-! ## A065936.P7531987152421924892

`A065937(lt[n, xor(n, floor(n/2))])`
-/

namespace A065936.P7531987152421924892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065936.P7531987152421924892

/-! ## A065936.P5980947485469199863

`A065937(2^floor(log2(n+1))+n+1)`
-/

namespace A065936.P5980947485469199863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065937 (2 ^ Nat.log 2 (n + 1) + (n + 1))

end

end A065936.P5980947485469199863

/-! ## A065936.P14809675686449989502

`xor(1, xor(1, A065937(A004754(n+1))))`
-/

namespace A065936.P14809675686449989502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A065937 (A004754 (n + 1)).toNat))

end

end A065936.P14809675686449989502

/-! ## A065936.P17039522721315823749

`A065937(A004754(n+1))%A002755(n)`
-/

namespace A065936.P17039522721315823749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065937 (A004754 (n + 1)).toNat) (A002755 n)

end

end A065936.P17039522721315823749

/-! ## A065936.P16534425311703327279

`A065937(A004754(n+1))+A000007(n+1)`
-/

namespace A065936.P16534425311703327279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065937 (A004754 (n + 1)).toNat + A000007 (n + 1)

end

end A065936.P16534425311703327279

/-! ## A065936.P13599174220847780559

`A007318(C(n, 2))*A065937(A004754(n+1))`
-/

namespace A065936.P13599174220847780559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A065937 (A004754 (n + 1)).toNat

end

end A065936.P13599174220847780559

/-! ## A065936.P9412281845405538518

`A065937(A004754(n+1))+A008683(4*(n+1))`
-/

namespace A065936.P9412281845405538518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065937 (A004754 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A065936.P9412281845405538518

/-! ## A065936.P6383712792522053625

`A007318(A020639(2*(n+1)))*A065937(A004754(n+1))`
-/

namespace A065936.P6383712792522053625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A065937 (A004754 (n + 1)).toNat

end

end A065936.P6383712792522053625

/-!
# A065938: Position of sqrt(n) in the mapping N2QuQR1 given in A065936.

The programs for A065938, there is no canonical definition to state claims against.
-/

/-! ## A065938.P3353748211707024779

`A193904(A046685(n+2))`
-/

namespace A065938.P3353748211707024779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193904 (A046685 (n + 2)).toNat

end

end A065938.P3353748211707024779

/-!
# A065939: Position of sqrt(n) in the mapping N2QuQR2 given in A065937.

The programs for A065939, there is no canonical definition to state claims against.
-/

/-! ## A065939.P2574688849940534061

`A065934(A065938(n+1))`
-/

namespace A065939.P2574688849940534061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065934 (A065938 (n + 1)).toNat

end

end A065939.P2574688849940534061

/-!
# A065940: Integers of the form bc/a + ac/b + ab/c, where a,b,c are positive integers.

The programs for A065940, there is no canonical definition to state claims against.
-/

/-! ## A065940.P488754682191478624

`∪[A000408(n+1), A246048(n+1)]`
-/

namespace A065940.P488754682191478624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065940.P488754682191478624

/-! ## A065940.P6826008968146759995

`lt[A279406(2*n+5), A017809(A063691(n))]`
-/

namespace A065940.P6826008968146759995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279406 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017809 (A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065940.P6826008968146759995

/-! ## A065940.P12232670391392060436

`A029837(A305676(n+1))+n`
-/

namespace A065940.P12232670391392060436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A305676 (n + 1)).toNat + (n : ℤ)

end

end A065940.P12232670391392060436

/-! ## A065940.P3083874360291981390

`lt[A014025(A006456(n)), A025427(n)]`
-/

namespace A065940.P3083874360291981390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A006456 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065940.P3083874360291981390

/-! ## A065940.P707547325671213233

`A195872(A316864(n)+A016885(n))`
-/

namespace A065940.P707547325671213233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195872 (A316864 n + A016885 n).toNat

end

end A065940.P707547325671213233

/-!
# A065941: T(n,k) = binomial(n-floor((k+1)/2), floor(k/2)). Triangle read by rows, for 0 <= k <= n.

The programs for A065941, the canonical program `A065941.P15138820981250632951` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065941 has offset 0).

The definition of A065941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)-floor((col(n)+1)/2), floor(col(n)/2))` (program `A065941.P15138820981250632951`, by `A065941.P15138820981250632951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065941.P15138820981250632951

`C(row(n)-floor((col(n)+1)/2), floor(col(n)/2))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065941

/-- `C(row(n)-floor((col(n)+1)/2), floor(col(n)/2))` -/
def P15138820981250632951.Spec : Prop :=
  ∀ n, (P15138820981250632951.a n : ℤ) = A065941 n

theorem P15138820981250632951.correct : P15138820981250632951.Spec := by
  intro n
  simp only [A065941]

end A065941

/-! ## A065941.P15522671980025678303

`abs(A108299(n))`
-/

namespace A065941.P15522671980025678303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 n|

end

end A065941.P15522671980025678303

namespace A065941

/-- `abs(A108299(n))` -/
def P15522671980025678303.Spec : Prop :=
  ∀ n, P15522671980025678303.a n = A065941 n

end A065941

/-! ## A065941.P764875960164906764

`T(n-1,k-1)+(1+(-1)^col(n))/2*T(n-1,k)` with `a(0)=1`
-/

namespace A065941.P764875960164906764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 + (-1) ^ SequenceMachineLib.triCol n : ℚ) / 2 * SequenceMachineLib.triUp a n

end

end A065941.P764875960164906764

namespace A065941

/-- `T(n-1,k-1)+(1+(-1)^col(n))/2*T(n-1,k)` -/
def P764875960164906764.Spec : Prop :=
  ∀ n, P764875960164906764.a n = (A065941 n : ℚ)

end A065941

/-! ## A065941.P6473041722187675235

`A103631(comp[∑[n]])`
-/

namespace A065941.P6473041722187675235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A065941.P6473041722187675235

namespace A065941

/-- `A103631(comp[∑[n]])` -/
def P6473041722187675235.Spec : Prop :=
  ∀ n, P6473041722187675235.a n = A065941 n

end A065941

/-! ## A065941.P11368078748430382437

`ceil(A131268(n)/2)`
-/

namespace A065941.P11368078748430382437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131268 n : ℚ) / 2⌉

end

end A065941.P11368078748430382437

namespace A065941

/-- `ceil(A131268(n)/2)` -/
def P11368078748430382437.Spec : Prop :=
  ∀ n, P11368078748430382437.a n = A065941 n

end A065941

/-! ## A065941.P8140729567860852891

`ceil(A131299(n)/3)`
-/

namespace A065941.P8140729567860852891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131299 n : ℚ) / 3⌉

end

end A065941.P8140729567860852891

namespace A065941

/-- `ceil(A131299(n)/3)` -/
def P8140729567860852891.Spec : Prop :=
  ∀ n, P8140729567860852891.a n = A065941 n

end A065941

/-! ## A065941.P2307404557914742767

`A028326(n)-A131767(n)`
-/

namespace A065941.P2307404557914742767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131767 n

end

end A065941.P2307404557914742767

namespace A065941

/-- `A028326(n)-A131767(n)` -/
def P2307404557914742767.Spec : Prop :=
  ∀ n, P2307404557914742767.a n = A065941 n

end A065941

/-! ## A065941.P1121603315195256569

`A194005(n)-A374441(n)`
-/

namespace A065941.P1121603315195256569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 n - A374441 n

end

end A065941.P1121603315195256569

namespace A065941

/-- `A194005(n)-A374441(n)` -/
def P1121603315195256569.Spec : Prop :=
  ∀ n, P1121603315195256569.a n = A065941 n

end A065941

/-! ## A065941.P14711610903844435499

`gcd(A000038(n), A108299(n))`
-/

namespace A065941.P14711610903844435499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108299 n)

end

end A065941.P14711610903844435499

namespace A065941

/-- `gcd(A000038(n), A108299(n))` -/
def P14711610903844435499.Spec : Prop :=
  ∀ n, (P14711610903844435499.a n : ℤ) = A065941 n

end A065941

/-! ## A065941.P9826354267026127670

`lcm(A020985(n), A108299(n))`
-/

namespace A065941.P9826354267026127670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A108299 n)

end

end A065941.P9826354267026127670

namespace A065941

/-- `lcm(A020985(n), A108299(n))` -/
def P9826354267026127670.Spec : Prop :=
  ∀ n, (P9826354267026127670.a n : ℤ) = A065941 n

end A065941

/-! ## A065941.P14428007457274317111

`A131373(n)+1-A046854(n)`
-/

namespace A065941.P14428007457274317111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131373 n + (1 - A046854 n)

end

end A065941.P14428007457274317111

namespace A065941

/-- `A131373(n)+1-A046854(n)` -/
def P14428007457274317111.Spec : Prop :=
  ∀ n, P14428007457274317111.a n = A065941 n

theorem P14428007457274317111.correct : P14428007457274317111.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P14428007457274317111.a, A065941.P15138820981250632951.a, A046854, A046854.P6321065027790251998.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P14645071878607338611

`2*A007318(n)-A131767(n)`
-/

namespace A065941.P14645071878607338611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A131767 n

end

end A065941.P14645071878607338611

namespace A065941

/-- `2*A007318(n)-A131767(n)` -/
def P14645071878607338611.Spec : Prop :=
  ∀ n, P14645071878607338611.a n = A065941 n

end A065941

/-! ## A065941.P1037081571499101248

`(A168561(n)+A131774(n+1))/2`
-/

namespace A065941.P1037081571499101248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168561 n + A131774 (n + 1) : ℚ) / 2

end

end A065941.P1037081571499101248

namespace A065941

/-- `(A168561(n)+A131774(n+1))/2` -/
def P1037081571499101248.Spec : Prop :=
  ∀ n, P1037081571499101248.a n = (A065941 n : ℚ)

theorem P1037081571499101248.correct : P1037081571499101248.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P1037081571499101248.a, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P12826438845015577838

`2*A131774(n+1)-A131775(n+1)`
-/

namespace A065941.P12826438845015577838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131774 (n + 1) - A131775 (n + 1)

end

end A065941.P12826438845015577838

namespace A065941

/-- `2*A131774(n+1)-A131775(n+1)` -/
def P12826438845015577838.Spec : Prop :=
  ∀ n, P12826438845015577838.a n = A065941 n

theorem P12826438845015577838.correct : P12826438845015577838.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P12826438845015577838.a, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P6487146438985612644

`2*A131775(n+1)-A131777(n+1)`
-/

namespace A065941.P6487146438985612644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131775 (n + 1) - A131777 (n + 1)

end

end A065941.P6487146438985612644

namespace A065941

/-- `2*A131775(n+1)-A131777(n+1)` -/
def P6487146438985612644.Spec : Prop :=
  ∀ n, P6487146438985612644.a n = A065941 n

theorem P6487146438985612644.correct : P6487146438985612644.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P6487146438985612644.a, A065941.P15138820981250632951.a, A131775, A131775.P7787466996817458597.a, A131777, A131777.P18261252755188450248.a, A131774, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P12157153731386739143

`A131376(n)+A168561(n)-A007318(n)`
-/

namespace A065941.P12157153731386739143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131376 n + (A168561 n - A007318 n)

end

end A065941.P12157153731386739143

namespace A065941

/-- `A131376(n)+A168561(n)-A007318(n)` -/
def P12157153731386739143.Spec : Prop :=
  ∀ n, P12157153731386739143.a n = A065941 n

theorem P12157153731386739143.correct : P12157153731386739143.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P12157153731386739143.a, A065941.P15138820981250632951.a, A007318, A007318.P11755526479805562006.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P3183119596903847201.a, A046854, A046854.P6321065027790251998.a, A131374, A131374.P1343424990653634680.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P2692507346333793756

`A046854(n)+A131376(n)-A131375(n)`
-/

namespace A065941.P2692507346333793756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131376 n - A131375 n)

end

end A065941.P2692507346333793756

namespace A065941

/-- `A046854(n)+A131376(n)-A131375(n)` -/
def P2692507346333793756.Spec : Prop :=
  ∀ n, P2692507346333793756.a n = A065941 n

theorem P2692507346333793756.correct : P2692507346333793756.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P2692507346333793756.a, A065941.P15138820981250632951.a, A046854, A046854.P6321065027790251998.a, A131375, A131375.P2872443932390034919.a, A131376, A131376.P4997632316983606857.a, A007318, A007318.P11755526479805562006.a, A131374, A131374.P1343424990653634680.a, A168561, A168561.P3183119596903847201.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P9670676222693085665

`A049310(n)+A309213(n)-A007318(n)`
-/

namespace A065941.P9670676222693085665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n + (A309213 n - A007318 n)

end

end A065941.P9670676222693085665

namespace A065941

/-- `A049310(n)+A309213(n)-A007318(n)` -/
def P9670676222693085665.Spec : Prop :=
  ∀ n, P9670676222693085665.a n = A065941 n

theorem P9670676222693085665.correct : P9670676222693085665.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P9670676222693085665.a, A065941.P15138820981250632951.a, A007318, A007318.P11755526479805562006.a, A049310, A049310.P1662014320520452531.a, A309213, A309213.P7560310409620454455.a, A117568, A117568.P10505874102500913440.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P3183119596903847201.a, A025581, A025581.P16112744757063613497.a, A046854, A046854.P6321065027790251998.a, A117576, A117576.P15788069879778431007.a, A131374, A131374.P1343424990653634680.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P1245147117140078879

`A131774(n+1)+A131776(n+1)-A131777(n+1)`
-/

namespace A065941.P1245147117140078879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131776 (n + 1) - A131777 (n + 1))

end

end A065941.P1245147117140078879

namespace A065941

/-- `A131774(n+1)+A131776(n+1)-A131777(n+1)` -/
def P1245147117140078879.Spec : Prop :=
  ∀ n, P1245147117140078879.a n = A065941 n

theorem P1245147117140078879.correct : P1245147117140078879.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P1245147117140078879.a, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-! ## A065941.P1749589711819259239

`A131774(n+1)+A131777(n+1)-A131778(n+1)`
-/

namespace A065941.P1749589711819259239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131777 (n + 1) - A131778 (n + 1))

end

end A065941.P1749589711819259239

namespace A065941

/-- `A131774(n+1)+A131777(n+1)-A131778(n+1)` -/
def P1749589711819259239.Spec : Prop :=
  ∀ n, P1749589711819259239.a n = A065941 n

theorem P1749589711819259239.correct : P1749589711819259239.Spec := by
  intro n
  simp only [A065941, Nat.add_sub_cancel, A065941.P1749589711819259239.a, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131777, A131777.P18261252755188450248.a, A131778, A131778.P8822641819976216554.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065941

/-!
# A065942: Central column of triangle A065941.

The programs for A065942, the canonical program `A065942.P9300120247842257917` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065942 has offset 0).

The definition of A065942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065942.P9300120247842257917

`C(n+floor(n/2), n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065942

/-- `C(n+floor(n/2), n)` -/
def P9300120247842257917.Spec : Prop :=
  ∀ n, (P9300120247842257917.a n : ℤ) = A065942 n

theorem P9300120247842257917.correct : P9300120247842257917.Spec := by
  intro n
  simp only [A065942]

end A065942

/-! ## A065942.P390798761674384840

`A051033(A032766(n))`
-/

namespace A065942.P390798761674384840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A032766 n).toNat

end

end A065942.P390798761674384840

namespace A065942

/-- `A051033(A032766(n))` -/
def P390798761674384840.Spec : Prop :=
  ∀ n, P390798761674384840.a n = A065942 n

end A065942

/-! ## A065942.P12724721305143149654

`A051033(A001651(n+1)-1)`
-/

namespace A065942.P12724721305143149654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A001651 (n + 1) - 1).toNat

end

end A065942.P12724721305143149654

namespace A065942

/-- `A051033(A001651(n+1)-1)` -/
def P12724721305143149654.Spec : Prop :=
  ∀ n, P12724721305143149654.a n = A065942 n

end A065942

/-! ## A065942.P3000456716991616852

`A051033(A097482(n+1)-1)`
-/

namespace A065942.P3000456716991616852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A097482 (n + 1) - 1).toNat

end

end A065942.P3000456716991616852

namespace A065942

/-- `A051033(A097482(n+1)-1)` -/
def P3000456716991616852.Spec : Prop :=
  ∀ n, P3000456716991616852.a n = A065942 n

end A065942

/-! ## A065942.P8806703102413658965

`A051033(A008619(3*n)-1)`
-/

namespace A065942.P8806703102413658965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A008619 (3 * n) - 1).toNat

end

end A065942.P8806703102413658965

namespace A065942

/-- `A051033(A008619(3*n)-1)` -/
def P8806703102413658965.Spec : Prop :=
  ∀ n, P8806703102413658965.a n = A065942 n

end A065942

/-! ## A065942.P14336307207918689951

`A051033(eq[1, A051064(n+1)])`
-/

namespace A065942.P14336307207918689951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065942.P14336307207918689951

namespace A065942

/-- `A051033(eq[1, A051064(n+1)])` -/
def P14336307207918689951.Spec : Prop :=
  ∀ n, P14336307207918689951.a n = A065942 n

end A065942

/-! ## A065942.P16388049167259275790

`A051033(lt[A051064(n+1), 2])`
-/

namespace A065942.P16388049167259275790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065942.P16388049167259275790

namespace A065942

/-- `A051033(lt[A051064(n+1), 2])` -/
def P16388049167259275790.Spec : Prop :=
  ∀ n, P16388049167259275790.a n = A065942 n

end A065942

/-! ## A065942.P5164429199955229707

`A051033(A008619(n)-1+n)`
-/

namespace A065942.P5164429199955229707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A008619 n - 1 + (n : ℤ)).toNat

end

end A065942.P5164429199955229707

namespace A065942

/-- `A051033(A008619(n)-1+n)` -/
def P5164429199955229707.Spec : Prop :=
  ∀ n, P5164429199955229707.a n = A065942 n

end A065942

/-! ## A065942.P3593799440398901070

`A051033(n-(1-A008619(n)))`
-/

namespace A065942.P3593799440398901070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 ((n : ℤ) - (1 - A008619 n)).toNat

end

end A065942.P3593799440398901070

namespace A065942

/-- `A051033(n-(1-A008619(n)))` -/
def P3593799440398901070.Spec : Prop :=
  ∀ n, P3593799440398901070.a n = A065942 n

end A065942

/-! ## A065942.P8257673716717963038

`A276368(n)/A056449(n)`
-/

namespace A065942.P8257673716717963038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276368 n : ℚ) / (A056449 n : ℚ)

end

end A065942.P8257673716717963038

namespace A065942

/-- `A276368(n)/A056449(n)` -/
def P8257673716717963038.Spec : Prop :=
  ∀ n, P8257673716717963038.a n = (A065942 n : ℚ)

end A065942

/-! ## A065942.P15815257714289215860

`A046899(A007590(n)+n)`
-/

namespace A065942.P15815257714289215860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n + (n : ℤ)).toNat

end

end A065942.P15815257714289215860

namespace A065942

/-- `A046899(A007590(n)+n)` -/
def P15815257714289215860.Spec : Prop :=
  ∀ n, P15815257714289215860.a n = A065942 n

end A065942

/-! ## A065942.P11081437719869410751

`A046899(record[A007590(n)-n])`
-/

namespace A065942.P11081437719869410751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065942.P11081437719869410751

namespace A065942

/-- `A046899(record[A007590(n)-n])` -/
def P11081437719869410751.Spec : Prop :=
  ∀ n, P11081437719869410751.a n = A065942 n

end A065942

/-! ## A065942.P5734534590172890104

`A046899(A000982(n+1)-1)`
-/

namespace A065942.P5734534590172890104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000982 (n + 1) - 1).toNat

end

end A065942.P5734534590172890104

namespace A065942

/-- `A046899(A000982(n+1)-1)` -/
def P5734534590172890104.Spec : Prop :=
  ∀ n, P5734534590172890104.a n = A065942 n

end A065942

/-! ## A065942.P11902720062475023477

`A046899(A047838(n+2)-(n+1))`
-/

namespace A065942.P11902720062475023477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A065942.P11902720062475023477

namespace A065942

/-- `A046899(A047838(n+2)-(n+1))` -/
def P11902720062475023477.Spec : Prop :=
  ∀ n, P11902720062475023477.a n = A065942 n

end A065942

/-! ## A065942.P6520607798757866558

`A046899(∑[n+1]-A008619(n+1))`
-/

namespace A065942.P6520607798757866558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008619 (n + 1)).toNat

end

end A065942.P6520607798757866558

namespace A065942

/-- `A046899(∑[n+1]-A008619(n+1))` -/
def P6520607798757866558.Spec : Prop :=
  ∀ n, P6520607798757866558.a n = A065942 n

end A065942

/-! ## A065942.P5520348959822361675

`A092392(A007590(n+1))`
-/

namespace A065942.P5520348959822361675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A007590 (n + 1)).toNat

end

end A065942.P5520348959822361675

namespace A065942

/-- `A092392(A007590(n+1))` -/
def P5520348959822361675.Spec : Prop :=
  ∀ n, P5520348959822361675.a n = A065942 n

end A065942

/-! ## A065942.P5133976994183510219

`A092392(2*A002620(n+1))`
-/

namespace A065942.P5133976994183510219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (2 * A002620 (n + 1)).toNat

end

end A065942.P5133976994183510219

namespace A065942

/-- `A092392(2*A002620(n+1))` -/
def P5133976994183510219.Spec : Prop :=
  ∀ n, P5133976994183510219.a n = A065942 n

end A065942

/-! ## A065942.P15023092924674571218

`A092392(A002620(n+1)+A002620(n+1))`
-/

namespace A065942.P15023092924674571218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A002620 (n + 1) + A002620 (n + 1)).toNat

end

end A065942.P15023092924674571218

namespace A065942

/-- `A092392(A002620(n+1)+A002620(n+1))` -/
def P15023092924674571218.Spec : Prop :=
  ∀ n, P15023092924674571218.a n = A065942 n

end A065942

/-! ## A065942.P16125366694340387823

`A178300(A099392(n+1))`
-/

namespace A065942.P16125366694340387823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (A099392 (n + 1)).toNat

end

end A065942.P16125366694340387823

namespace A065942

/-- `A178300(A099392(n+1))` -/
def P16125366694340387823.Spec : Prop :=
  ∀ n, P16125366694340387823.a n = A065942 n

end A065942

/-! ## A065942.P56151223464313263

`A178300(A000982(n+1)-n)`
-/

namespace A065942.P56151223464313263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (A000982 (n + 1) - (n : ℤ)).toNat

end

end A065942.P56151223464313263

namespace A065942

/-- `A178300(A000982(n+1)-n)` -/
def P56151223464313263.Spec : Prop :=
  ∀ n, P56151223464313263.a n = A065942 n

end A065942

/-!
# A065943: Triangle of coefficients of Bessel polynomials {y_n(x)}''.

The programs for A065943, the canonical program `A065943.P6936668345606970424` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065943 has offset 2).

The definition of A065943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065943.P13508666771004961413

`A065931(comp[∑[n]])`
-/

namespace A065943.P13508666771004961413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065931 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A065943.P13508666771004961413

namespace A065943

/-- `A065931(comp[∑[n]])` -/
def P13508666771004961413.Spec : Prop :=
  ∀ n, P13508666771004961413.a n = A065943 (n + 2)

end A065943

/-! ## A065943.P4731789417660383022

`or(char[5], A065931(A014132(n+1)))`
-/

namespace A065943.P4731789417660383022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A065931 (A014132 (n + 1)).toNat)

end

end A065943.P4731789417660383022

namespace A065943

/-- `or(char[5], A065931(A014132(n+1)))` -/
def P4731789417660383022.Spec : Prop :=
  ∀ n, P4731789417660383022.a n = A065943 (n + 2)

end A065943

/-! ## A065943.P6936668345606970424

`lcm(A033999(n), A065931(A014132(n+1)))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065943

/-- `lcm(A033999(n), A065931(A014132(n+1)))` -/
def P6936668345606970424.Spec : Prop :=
  ∀ n, (P6936668345606970424.a n : ℤ) = A065943 (n + 2)

theorem P6936668345606970424.correct : P6936668345606970424.Spec := by
  intro n
  simp only [A065943, Nat.add_sub_cancel]

end A065943

/-! ## A065943.P10333051338443501196

`A065931(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A065943.P10333051338443501196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065931 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A065943.P10333051338443501196

namespace A065943

/-- `A065931(A014132(n+1))+A008683(4*(n+1))` -/
def P10333051338443501196.Spec : Prop :=
  ∀ n, P10333051338443501196.a n = A065943 (n + 2)

end A065943

/-! ## A065943.P14171922329325406720

`A007318(∑[n])*A065931(A014132(n+1))`
-/

namespace A065943.P14171922329325406720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A065931 (A014132 (n + 1)).toNat

end

end A065943.P14171922329325406720

namespace A065943

/-- `A007318(∑[n])*A065931(A014132(n+1))` -/
def P14171922329325406720.Spec : Prop :=
  ∀ n, P14171922329325406720.a n = A065943 (n + 2)

end A065943

/-!
# A065944: Bessel polynomial {y_n}''(-1).

The programs for A065944, there is no canonical definition to state claims against.
-/

/-! ## A065944.P869345698169936208

`∑[2*n]*A000806(n)`
-/

namespace A065944.P869345698169936208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000806 n

end

end A065944.P869345698169936208

/-! ## A065944.P10716369916546915064

`A000806(n)*A002378(n)`
-/

namespace A065944.P10716369916546915064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 n * A002378 n

end

end A065944.P10716369916546915064

/-! ## A065944.P6662569525598132429

`A000806(n)*A005843(∑[n])`
-/

namespace A065944.P6662569525598132429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 n * A005843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065944.P6662569525598132429

/-! ## A065944.P2084004542373678787

`2*A000217(n)*A000806(n)`
-/

namespace A065944.P2084004542373678787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000217 n * A000806 n)

end

end A065944.P2084004542373678787

/-! ## A065944.P14214857260986586898

`n*A131738(n)*A278990(n)`
-/

namespace A065944.P14214857260986586898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A131738 n * A278990 n)

end

end A065944.P14214857260986586898

/-! ## A065944.P7449882672287791337

`A000806(n)*A002620(2*n+1)`
-/

namespace A065944.P7449882672287791337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 n * A002620 (2 * n + 1)

end

end A065944.P7449882672287791337

/-! ## A065944.P4520207098071696914

`(n²+n)*A033999(n)*A079267(∑[n])`
-/

namespace A065944.P4520207098071696914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) * (A033999 n * A079267 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A065944.P4520207098071696914

/-!
# A065945: Bessel polynomial {y_n}''(2).

The programs for A065945, there is no canonical definition to state claims against.
-/

/-! ## A065945.P18280066767728812963

`A172266(comp[2*n+3]^ceil(6*n/5))`
-/

namespace A065945.P18280066767728812963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (⌈6 * ((n : ℚ) / 5)⌉ : ℤ))).toNat

end

end A065945.P18280066767728812963

/-!
# A065947: Bessel polynomial {y_n}''(3).

The programs for A065947, there is no canonical definition to state claims against.
-/

/-! ## A065947.P3202183835065634865

`6*A029772(a(n-1)+n)` with `a(0)=0`
-/

namespace A065947.P3202183835065634865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  6 * A029772 (a (n - 1) + (n : ℤ)).toNat

end

end A065947.P3202183835065634865

/-!
# A065949: Bessel polynomial {y_n}'''(0).

The programs for A065949, the canonical program `A065949.P13742744115976970007` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065949 has offset 0).

The definition of A065949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065949.P13742744115976970007

`90*C(n+3, 6)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065949

/-- `90*C(n+3, 6)` -/
def P13742744115976970007.Spec : Prop :=
  ∀ n, (P13742744115976970007.a n : ℤ) = A065949 n

theorem P13742744115976970007.correct : P13742744115976970007.Spec := by
  intro n
  simp only [A065949]

end A065949

/-! ## A065949.P9729261935700703584

`((2-∑[n])²-1)*∑[n]`
-/

namespace A065949.P9729261935700703584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2 - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A065949.P9729261935700703584

namespace A065949

/-- `((2-∑[n])²-1)*∑[n]` -/
def P9729261935700703584.Spec : Prop :=
  ∀ n, P9729261935700703584.a n = A065949 n

end A065949

/-! ## A065949.P13304855488754475111

`∑[∑[5*6*A050534(n)]]`
-/

namespace A065949.P13304855488754475111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (6 * A050534 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065949.P13304855488754475111

namespace A065949

/-- `∑[∑[5*6*A050534(n)]]` -/
def P13304855488754475111.Spec : Prop :=
  ∀ n, P13304855488754475111.a n = A065949 n

end A065949

/-! ## A065949.P4705195334090183942

`∑[∑[5*∑[3*A007531(n)]]]`
-/

namespace A065949.P4705195334090183942
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065949.P4705195334090183942

namespace A065949

/-- `∑[∑[5*∑[3*A007531(n)]]]` -/
def P4705195334090183942.Spec : Prop :=
  ∀ n, P4705195334090183942.a n = A065949 n

end A065949

/-! ## A065949.P11856074573171021637

`∑[∑[6*15*A000332(n+1)]]`
-/

namespace A065949.P11856074573171021637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (15 * A000332 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065949.P11856074573171021637

namespace A065949

/-- `∑[∑[6*15*A000332(n+1)]]` -/
def P11856074573171021637.Spec : Prop :=
  ∀ n, P11856074573171021637.a n = A065949 n

end A065949

/-! ## A065949.P2730663247269114804

`A053625(n+3)/8`
-/

namespace A065949.P2730663247269114804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 (n + 3) : ℚ) / 8

end

end A065949.P2730663247269114804

namespace A065949

/-- `A053625(n+3)/8` -/
def P2730663247269114804.Spec : Prop :=
  ∀ n, P2730663247269114804.a n = (A065949 n : ℚ)

theorem P2730663247269114804.correct : P2730663247269114804.Spec := by
  intro n
  simp only [A065949, Nat.add_sub_cancel, A065949.P2730663247269114804.a, A065949.P13742744115976970007.a, A053625, A053625.P9911558398274709758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065949

/-! ## A065949.P16236298636277846246

`A007531(n)*A346174(n+1)/A000079(n)`
-/

namespace A065949.P16236298636277846246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 n * A346174 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A065949.P16236298636277846246

namespace A065949

/-- `A007531(n)*A346174(n+1)/A000079(n)` -/
def P16236298636277846246.Spec : Prop :=
  ∀ n, P16236298636277846246.a n = (A065949 n : ℚ)

end A065949

/-!
# A065950: Bessel polynomial {y_n}'''(1).

The programs for A065950, there is no canonical definition to state claims against.
-/

/-! ## A065950.P15377003318043925362

`A129533(n^3-n)`
-/

namespace A065950.P15377003318043925362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (n ^ 3 - n)

end

end A065950.P15377003318043925362

/-!
# A065951: Bessel polynomial {y_n}'''(-1).

The programs for A065951, there is no canonical definition to state claims against.
-/

/-! ## A065951.P18027445154555469584

`A055949(record[A288950(n)])`
-/

namespace A065951.P18027445154555469584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065951.P18027445154555469584

/-!
# A065953: Denominator of (-1)^n*n!*(E(n,2)-E(n,1)*E(n-1,1)) where E(n,x) = Sum_{k=0..n} (-1)^k*x^k/k!.

The programs for A065953, there is no canonical definition to state claims against.
-/

/-! ## A065953.P2387111346025268629

`gcd(A053556(n), A053556(A250265(n)))`
-/

namespace A065953.P2387111346025268629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053556 n) (A053556 (A250265 n).toNat)

end

end A065953.P2387111346025268629

/-! ## A065953.P6626000413350886029

`A040409(A128082(n))`
-/

namespace A065953.P6626000413350886029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040409 (A128082 n).toNat

end

end A065953.P6626000413350886029

/-! ## A065953.P7838534987900718747

`A345935(A231373(n))`
-/

namespace A065953.P7838534987900718747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (A231373 n).toNat

end

end A065953.P7838534987900718747

/-! ## A065953.P967397653439456418

`A106476(A000010(n!))`
-/

namespace A065953.P967397653439456418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 (A000010 (Nat.factorial n)).toNat

end

end A065953.P967397653439456418

/-! ## A065953.P1584154559718463749

`A261358(A002995(n+1))`
-/

namespace A065953.P1584154559718463749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261358 (A002995 (n + 1)).toNat

end

end A065953.P1584154559718463749

/-!
# A065954: Nearest integer to (-1)^n*n!*(E(n,2)-E(n,1)*E(n-1,1)) where E(n,x) = Sum_{k=0..n} (-1)^k*x^k/k!.

The programs for A065954, there is no canonical definition to state claims against.
-/

/-! ## A065954.P5093371002565876758

`round(A065952(n)/A065953(n))`
-/

namespace A065954.P5093371002565876758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065952 n : ℚ) / (A065953 n : ℚ))

end

end A065954.P5093371002565876758

/-! ## A065954.P11407847223481531486

`A194311(A374541(n))`
-/

namespace A065954.P11407847223481531486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194311 (A374541 n).toNat

end

end A065954.P11407847223481531486

/-! ## A065954.P16028190731413197074

`A048273(A183388(n+2))`
-/

namespace A065954.P16028190731413197074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A183388 (n + 2)).toNat

end

end A065954.P16028190731413197074

/-! ## A065954.P9689346851447958332

`A000194(A148769(n)+n)`
-/

namespace A065954.P9689346851447958332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148769 n + (n : ℤ)).toNat

end

end A065954.P9689346851447958332

/-! ## A065954.P3004269654661875606

`A002024(A002095(∑[or(1, n)]))`
-/

namespace A065954.P3004269654661875606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A002095 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065954.P3004269654661875606

/-!
# A065955: a(n) = floor((-1)^n*n!*(E(n,2)-E(n,1)*E(n-1,1))) where E(n,x) = Sum_{k=0..n} (-1)^k*x^k/k!.

The programs for A065955, there is no canonical definition to state claims against.
-/

/-! ## A065955.P6939880743253903148

`A065956(n)+A057428(A033111(3*n+5))`
-/

namespace A065955.P6939880743253903148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065956 n + A057428 (A033111 (3 * n + 5)).toNat

end

end A065955.P6939880743253903148

/-! ## A065955.P8282264123214161692

`A065956(n)+A057428(A026811(n))`
-/

namespace A065955.P8282264123214161692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065956 n + A057428 (A026811 n).toNat

end

end A065955.P8282264123214161692

/-! ## A065955.P12092509799183059959

`floor(A065952(n)/A065953(n))`
-/

namespace A065955.P12092509799183059959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065952 n : ℚ) / (A065953 n : ℚ)⌋

end

end A065955.P12092509799183059959

/-! ## A065955.P3272403514736972706

`A262689(A216617(n)+A148297(n))`
-/

namespace A065955.P3272403514736972706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A216617 n + A148297 n).toNat

end

end A065955.P3272403514736972706

/-! ## A065955.P7885033686657950818

`A065956(n)-A079998(A179215(n))`
-/

namespace A065955.P7885033686657950818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065956 n - A079998 (A179215 n).toNat

end

end A065955.P7885033686657950818

/-!
# A065956: a(n) = ceiling((-1)^n*n!*(E(n,2)-E(n,1)*E(n-1,1))) where E(n,x) = Sum_{k=0..n} (-1)^k*x^k/k!.

The programs for A065956, there is no canonical definition to state claims against.
-/

/-! ## A065956.P2683638775577341657

`ceil(A065952(n)/A065953(n))`
-/

namespace A065956.P2683638775577341657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065952 n : ℚ) / (A065953 n : ℚ)⌉

end

end A065956.P2683638775577341657

/-! ## A065956.P3408195827918781760

`A065955(n)+A043545(A332834(n))`
-/

namespace A065956.P3408195827918781760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065955 n + A043545 (A332834 n).toNat

end

end A065956.P3408195827918781760

/-! ## A065956.P16284798162479101251

`A101605(A355747(n)+1)+A065954(n)`
-/

namespace A065956.P16284798162479101251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A355747 n + 1).toNat + A065954 n

end

end A065956.P16284798162479101251

/-! ## A065956.P21490710016539574

`A216256(A052854(n))`
-/

namespace A065956.P21490710016539574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A052854 n).toNat

end

end A065956.P21490710016539574

/-! ## A065956.P10295521264672948216

`A216256(A148100(n))`
-/

namespace A065956.P10295521264672948216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A148100 n).toNat

end

end A065956.P10295521264672948216

/-!
# A065958: a(n) = n^2*Product_{distinct primes p dividing n} (1+1/p^2).

The programs for A065958, the canonical program `A065958.P4916499116496807782` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065958 has offset 1).

The definition of A065958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065958.P4916499116496807782

`A059377(n+1)/A007434(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065958

/-- `A059377(n+1)/A007434(n+1)` -/
def P4916499116496807782.Spec : Prop :=
  ∀ n, P4916499116496807782.a n = (A065958 (n + 1) : ℚ)

end A065958

/-! ## A065958.P362013143643158535

`A059377(n+1)/(A001615(n+1)*A000010(n+1))`
-/

namespace A065958.P362013143643158535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A001615 (n + 1) * A000010 (n + 1) : ℚ)

end

end A065958.P362013143643158535

namespace A065958

/-- `A059377(n+1)/(A001615(n+1)*A000010(n+1))` -/
def P362013143643158535.Spec : Prop :=
  ∀ n, P362013143643158535.a n = (A065958 (n + 1) : ℚ)

end A065958

/-! ## A065958.P4213118221089936977

`∑{d}[∏{p}[n+1, #], ((n+1)/#)²]`
-/

namespace A065958.P4213118221089936977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ 2

end

end A065958.P4213118221089936977

namespace A065958

/-- `∑{d}[∏{p}[n+1, #], ((n+1)/#)²]` -/
def P4213118221089936977.Spec : Prop :=
  ∀ n, P4213118221089936977.a n = (A065958 (n + 1) : ℚ)

end A065958

/-! ## A065958.P10353240508153028772

`A160891(n+1)/A001615(n+1)`
-/

namespace A065958.P10353240508153028772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160891 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A065958.P10353240508153028772

namespace A065958

/-- `A160891(n+1)/A001615(n+1)` -/
def P10353240508153028772.Spec : Prop :=
  ∀ n, P10353240508153028772.a n = (A065958 (n + 1) : ℚ)

end A065958

/-! ## A065958.P7983824147464250765

`A194533(n+1)/A065960(n+1)`
-/

namespace A065958.P7983824147464250765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194533 (n + 1) : ℚ) / (A065960 (n + 1) : ℚ)

end

end A065958.P7983824147464250765

namespace A065958

/-- `A194533(n+1)/A065960(n+1)` -/
def P7983824147464250765.Spec : Prop :=
  ∀ n, P7983824147464250765.a n = (A065958 (n + 1) : ℚ)

end A065958

/-! ## A065958.P2979675291457425427

`A003557(n+1)²*A351265(n+1)`
-/

namespace A065958.P2979675291457425427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) ^ 2 * A351265 (n + 1)

end

end A065958.P2979675291457425427

namespace A065958

/-- `A003557(n+1)²*A351265(n+1)` -/
def P2979675291457425427.Spec : Prop :=
  ∀ n, P2979675291457425427.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P14909108708551168305

`∑{d}[A007947(n+1), A000290((n+1)/#)]`
-/

namespace A065958.P14909108708551168305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P14909108708551168305

namespace A065958

/-- `∑{d}[A007947(n+1), A000290((n+1)/#)]` -/
def P14909108708551168305.Spec : Prop :=
  ∀ n, P14909108708551168305.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P1906039956186057415

`∑{d}[A007947(n+1), (#*A003557(n+1))²]`
-/

namespace A065958.P1906039956186057415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) * A003557 (n + 1)) ^ 2

end

end A065958.P1906039956186057415

namespace A065958

/-- `∑{d}[A007947(n+1), (#*A003557(n+1))²]` -/
def P1906039956186057415.Spec : Prop :=
  ∀ n, P1906039956186057415.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P14709096012052632033

`∑{d}[n+1, A001615(#)*A002618((n+1)/#)]`
-/

namespace A065958.P14709096012052632033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P14709096012052632033

namespace A065958

/-- `∑{d}[n+1, A001615(#)*A002618((n+1)/#)]` -/
def P14709096012052632033.Spec : Prop :=
  ∀ n, P14709096012052632033.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P10537191136100606678

`∑{d}[n+1, A000290(#)*A008966((n+1)/#)]`
-/

namespace A065958.P10537191136100606678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P10537191136100606678

namespace A065958

/-- `∑{d}[n+1, A000290(#)*A008966((n+1)/#)]` -/
def P10537191136100606678.Spec : Prop :=
  ∀ n, P10537191136100606678.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P16786502994710677750

`∑{d}[n+1, A007434(#)*A034444((n+1)/#)]`
-/

namespace A065958.P16786502994710677750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P16786502994710677750

namespace A065958

/-- `∑{d}[n+1, A007434(#)*A034444((n+1)/#)]` -/
def P16786502994710677750.Spec : Prop :=
  ∀ n, P16786502994710677750.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P9906538901013247351

`∑{d}[n+1, A057660(#)*A063659((n+1)/#)]`
-/

namespace A065958.P9906538901013247351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P9906538901013247351

namespace A065958

/-- `∑{d}[n+1, A057660(#)*A063659((n+1)/#)]` -/
def P9906538901013247351.Spec : Prop :=
  ∀ n, P9906538901013247351.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P5361709168071545233

`∑{d}[n+1, A060648(#)*A063445((n+1)/#)]`
-/

namespace A065958.P5361709168071545233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P5361709168071545233

namespace A065958

/-- `∑{d}[n+1, A060648(#)*A063445((n+1)/#)]` -/
def P5361709168071545233.Spec : Prop :=
  ∀ n, P5361709168071545233.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P7243226648604389870

`∑{d}[n+1, A008683(#)*A158949((n+1)/#)]`
-/

namespace A065958.P7243226648604389870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A158949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P7243226648604389870

namespace A065958

/-- `∑{d}[n+1, A008683(#)*A158949((n+1)/#)]` -/
def P7243226648604389870.Spec : Prop :=
  ∀ n, P7243226648604389870.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P13110460894387651592

`∑{d}[n+1, A008833(#)*A254520((n+1)/#)]`
-/

namespace A065958.P13110460894387651592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P13110460894387651592

namespace A065958

/-- `∑{d}[n+1, A008833(#)*A254520((n+1)/#)]` -/
def P13110460894387651592.Spec : Prop :=
  ∀ n, P13110460894387651592.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P16967786262817292873

`∑{d}[n+1, A001157(#)*A271102((n+1)/#)]`
-/

namespace A065958.P16967786262817292873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P16967786262817292873

namespace A065958

/-- `∑{d}[n+1, A001157(#)*A271102((n+1)/#)]` -/
def P16967786262817292873.Spec : Prop :=
  ∀ n, P16967786262817292873.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P4278352556638659241

`∑{d}[n+1, A007433(#)*A307445((n+1)/#)]`
-/

namespace A065958.P4278352556638659241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P4278352556638659241

namespace A065958

/-- `∑{d}[n+1, A007433(#)*A307445((n+1)/#)]` -/
def P4278352556638659241.Spec : Prop :=
  ∀ n, P4278352556638659241.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P4161523336760982360

`∑{d}[n+1, A048691(#)*A321322((n+1)/#)]`
-/

namespace A065958.P4161523336760982360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P4161523336760982360

namespace A065958

/-- `∑{d}[n+1, A048691(#)*A321322((n+1)/#)]` -/
def P4161523336760982360.Spec : Prop :=
  ∀ n, P4161523336760982360.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P15846639536145109228

`∑{d}[n+1, A078461(#)*A308422((n+1)/#)]`
-/

namespace A065958.P15846639536145109228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P15846639536145109228

namespace A065958

/-- `∑{d}[n+1, A078461(#)*A308422((n+1)/#)]` -/
def P15846639536145109228.Spec : Prop :=
  ∀ n, P15846639536145109228.a n = A065958 (n + 1)

end A065958

/-! ## A065958.P6388625026749547228

`∑{d}[n+1, A064987(#)*A328729((n+1)/#)]`
-/

namespace A065958.P6388625026749547228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065958.P6388625026749547228

namespace A065958

/-- `∑{d}[n+1, A064987(#)*A328729((n+1)/#)]` -/
def P6388625026749547228.Spec : Prop :=
  ∀ n, P6388625026749547228.a n = A065958 (n + 1)

end A065958

/-!
# A065959: a(n) = n^3*Product_{distinct primes p dividing n} (1+1/p^3).

The programs for A065959, the canonical program `A065959.P2409166480310075694` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065959 has offset 1).

The definition of A065959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065959.P2409166480310075694

`A069091(n+1)/A059376(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065959

/-- `A069091(n+1)/A059376(n+1)` -/
def P2409166480310075694.Spec : Prop :=
  ∀ n, P2409166480310075694.a n = (A065959 (n + 1) : ℚ)

end A065959

/-! ## A065959.P9785788867409148346

`A160895(n+1)/A160889(n+1)`
-/

namespace A065959.P9785788867409148346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160895 (n + 1) : ℚ) / (A160889 (n + 1) : ℚ)

end

end A065959.P9785788867409148346

namespace A065959

/-- `A160895(n+1)/A160889(n+1)` -/
def P9785788867409148346.Spec : Prop :=
  ∀ n, P9785788867409148346.a n = (A065959 (n + 1) : ℚ)

end A065959

/-! ## A065959.P8863343882424700732

`∑{d}[n+1, A000056(#)*A001615((n+1)/#)]`
-/

namespace A065959.P8863343882424700732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P8863343882424700732

namespace A065959

/-- `∑{d}[n+1, A000056(#)*A001615((n+1)/#)]` -/
def P8863343882424700732.Spec : Prop :=
  ∀ n, P8863343882424700732.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P11321541543034412356

`∑{d}[n+1, A000578(#)*A008966((n+1)/#)]`
-/

namespace A065959.P11321541543034412356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P11321541543034412356

namespace A065959

/-- `∑{d}[n+1, A000578(#)*A008966((n+1)/#)]` -/
def P11321541543034412356.Spec : Prop :=
  ∀ n, P11321541543034412356.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P5650600311504977996

`∑{d}[n+1, A034444(#)*A059376((n+1)/#)]`
-/

namespace A065959.P5650600311504977996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P5650600311504977996

namespace A065959

/-- `∑{d}[n+1, A034444(#)*A059376((n+1)/#)]` -/
def P5650600311504977996.Spec : Prop :=
  ∀ n, P5650600311504977996.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P3895502861008308868

`∑{d}[n+1, A053191(#)*A065958((n+1)/#)]`
-/

namespace A065959.P3895502861008308868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A065958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P3895502861008308868

namespace A065959

/-- `∑{d}[n+1, A053191(#)*A065958((n+1)/#)]` -/
def P3895502861008308868.Spec : Prop :=
  ∀ n, P3895502861008308868.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P18309666659458400119

`∑{d}[n+1, A001158(#)*A271102((n+1)/#)]`
-/

namespace A065959.P18309666659458400119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P18309666659458400119

namespace A065959

/-- `∑{d}[n+1, A001158(#)*A271102((n+1)/#)]` -/
def P18309666659458400119.Spec : Prop :=
  ∀ n, P18309666659458400119.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P12500970362729079986

`∑{d}[n+1, A078461(#)*A309335((n+1)/#)]`
-/

namespace A065959.P12500970362729079986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A309335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P12500970362729079986

namespace A065959

/-- `∑{d}[n+1, A078461(#)*A309335((n+1)/#)]` -/
def P12500970362729079986.Spec : Prop :=
  ∀ n, P12500970362729079986.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P9150300261328479440

`∑{d}[n+1, A063659(#)*A350156((n+1)/#)]`
-/

namespace A065959.P9150300261328479440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P9150300261328479440

namespace A065959

/-- `∑{d}[n+1, A063659(#)*A350156((n+1)/#)]` -/
def P9150300261328479440.Spec : Prop :=
  ∀ n, P9150300261328479440.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P7997139481394491721

`∑{d}[n+1, A307445(#)*A321140((n+1)/#)]`
-/

namespace A065959.P7997139481394491721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P7997139481394491721

namespace A065959

/-- `∑{d}[n+1, A307445(#)*A321140((n+1)/#)]` -/
def P7997139481394491721.Spec : Prop :=
  ∀ n, P7997139481394491721.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P6369460753193793832

`∑{d}[n+1, A328259(#)*A328729((n+1)/#)]`
-/

namespace A065959.P6369460753193793832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328259 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065959.P6369460753193793832

namespace A065959

/-- `∑{d}[n+1, A328259(#)*A328729((n+1)/#)]` -/
def P6369460753193793832.Spec : Prop :=
  ∀ n, P6369460753193793832.a n = A065959 (n + 1)

end A065959

/-! ## A065959.P1741087841884338052

`A007434(n+1)/A059376(n+1)*A194532(n+1)`
-/

namespace A065959.P1741087841884338052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A059376 (n + 1) : ℚ) * (A194532 (n + 1) : ℚ)

end

end A065959.P1741087841884338052

namespace A065959

/-- `A007434(n+1)/A059376(n+1)*A194532(n+1)` -/
def P1741087841884338052.Spec : Prop :=
  ∀ n, P1741087841884338052.a n = (A065959 (n + 1) : ℚ)

end A065959

/-!
# A065960: a(n) = n^4*Product_{distinct primes p dividing n} (1+1/p^4).

The programs for A065960, the canonical program `A065960.P1911590264306084492` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065960 has offset 1).

The definition of A065960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059377, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065960.P8956526056859549595

`(n+1)^4*∑{d}[n+1, A008683(#)²/#^4]`
-/

namespace A065960.P8956526056859549595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A008683 d ^ 2 : ℚ) / (d ^ 4 : ℚ))

end

end A065960.P8956526056859549595

namespace A065960

/-- `(n+1)^4*∑{d}[n+1, A008683(#)²/#^4]` -/
def P8956526056859549595.Spec : Prop :=
  ∀ n, P8956526056859549595.a n = (A065960 (n + 1) : ℚ)

end A065960

/-! ## A065960.P1911590264306084492

`A069093(n+1)/A059377(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065960

/-- `A069093(n+1)/A059377(n+1)` -/
def P1911590264306084492.Spec : Prop :=
  ∀ n, P1911590264306084492.a n = (A065960 (n + 1) : ℚ)

end A065960

/-! ## A065960.P4283551093114837667

`∑{d}[A007947(n+1), ((n+1)/#)²²]`
-/

namespace A065960.P4283551093114837667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (((n + 1 : ℚ) / (d : ℚ)) ^ 2) ^ 2

end

end A065960.P4283551093114837667

namespace A065960

/-- `∑{d}[A007947(n+1), ((n+1)/#)²²]` -/
def P4283551093114837667.Spec : Prop :=
  ∀ n, P4283551093114837667.a n = (A065960 (n + 1) : ℚ)

end A065960

/-! ## A065960.P10504178823556060936

`A194533(n+1)/A065958(n+1)`
-/

namespace A065960.P10504178823556060936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194533 (n + 1) : ℚ) / (A065958 (n + 1) : ℚ)

end

end A065960.P10504178823556060936

namespace A065960

/-- `A194533(n+1)/A065958(n+1)` -/
def P10504178823556060936.Spec : Prop :=
  ∀ n, P10504178823556060936.a n = (A065960 (n + 1) : ℚ)

end A065960

/-! ## A065960.P4728789193207994986

`A160908(n+1)/A160891(n+1)`
-/

namespace A065960.P4728789193207994986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160908 (n + 1) : ℚ) / (A160891 (n + 1) : ℚ)

end

end A065960.P4728789193207994986

namespace A065960

/-- `A160908(n+1)/A160891(n+1)` -/
def P4728789193207994986.Spec : Prop :=
  ∀ n, P4728789193207994986.a n = (A065960 (n + 1) : ℚ)

end A065960

/-! ## A065960.P7209402917650508898

`∑{d}[n+1, A034444(#)*A059377((n+1)/#)]`
-/

namespace A065960.P7209402917650508898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P7209402917650508898

namespace A065960

/-- `∑{d}[n+1, A034444(#)*A059377((n+1)/#)]` -/
def P7209402917650508898.Spec : Prop :=
  ∀ n, P7209402917650508898.a n = A065960 (n + 1)

end A065960

/-! ## A065960.P15045577272349382497

`∑{d}[n+1, A065959(#)*A189393((n+1)/#)]`
-/

namespace A065960.P15045577272349382497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P15045577272349382497

namespace A065960

/-- `∑{d}[n+1, A065959(#)*A189393((n+1)/#)]` -/
def P15045577272349382497.Spec : Prop :=
  ∀ n, P15045577272349382497.a n = A065960 (n + 1)

end A065960

/-! ## A065960.P4184548296407571966

`∑{d}[n+1, A001159(#)*A271102((n+1)/#)]`
-/

namespace A065960.P4184548296407571966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P4184548296407571966

namespace A065960

/-- `∑{d}[n+1, A001159(#)*A271102((n+1)/#)]` -/
def P4184548296407571966.Spec : Prop :=
  ∀ n, P4184548296407571966.a n = A065960 (n + 1)

end A065960

/-! ## A065960.P4065431039441969738

`∑{d}[n+1, A078461(#)*A309336((n+1)/#)]`
-/

namespace A065960.P4065431039441969738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P4065431039441969738

namespace A065960

/-- `∑{d}[n+1, A078461(#)*A309336((n+1)/#)]` -/
def P4065431039441969738.Spec : Prop :=
  ∀ n, P4065431039441969738.a n = A065960 (n + 1)

end A065960

/-! ## A065960.P7533419028581780653

`∑{d}[n+1, A063659(#)*A372952((n+1)/#)]`
-/

namespace A065960.P7533419028581780653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P7533419028581780653

namespace A065960

/-- `∑{d}[n+1, A063659(#)*A372952((n+1)/#)]` -/
def P7533419028581780653.Spec : Prop :=
  ∀ n, P7533419028581780653.a n = A065960 (n + 1)

end A065960

/-! ## A065960.P12634716996019340684

`∑{d}[n+1, A065958(#)*A379833((n+1)/#)]`
-/

namespace A065960.P12634716996019340684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P12634716996019340684

namespace A065960

/-- `∑{d}[n+1, A065958(#)*A379833((n+1)/#)]` -/
def P12634716996019340684.Spec : Prop :=
  ∀ n, P12634716996019340684.a n = A065960 (n + 1)

end A065960

/-! ## A065960.P161542821812932539

`A069093(n+1)/(A007434(n+1)*A065958(n+1))`
-/

namespace A065960.P161542821812932539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A007434 (n + 1) * A065958 (n + 1) : ℚ)

end

end A065960.P161542821812932539

namespace A065960

/-- `A069093(n+1)/(A007434(n+1)*A065958(n+1))` -/
def P161542821812932539.Spec : Prop :=
  ∀ n, P161542821812932539.a n = (A065960 (n + 1) : ℚ)

end A065960

/-! ## A065960.P6937150141575425039

`A007434(n+1)/A059377(n+1)*A194533(n+1)`
-/

namespace A065960.P6937150141575425039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A059377 (n + 1) : ℚ) * (A194533 (n + 1) : ℚ)

end

end A065960.P6937150141575425039

namespace A065960

/-- `A007434(n+1)/A059377(n+1)*A194533(n+1)` -/
def P6937150141575425039.Spec : Prop :=
  ∀ n, P6937150141575425039.a n = (A065960 (n + 1) : ℚ)

end A065960

/-! ## A065960.P14892427438881045136

`∑{d}[n+1, A000583(#)*A008966((n+1)/#)]`
-/

namespace A065960.P14892427438881045136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000583 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P14892427438881045136

namespace A065960

/-- `∑{d}[n+1, A000583(#)*A008966((n+1)/#)]` -/
def P14892427438881045136.Spec : Prop :=
  ∀ n, P14892427438881045136.a n = A065960 (n + 1)

end A065960

/-! ## A065960.P4591400670928767756

`∑{d}[n+1, A281372(#)*A328729((n+1)/#)]`
-/

namespace A065960.P4591400670928767756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A281372 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065960.P4591400670928767756

namespace A065960

/-- `∑{d}[n+1, A281372(#)*A328729((n+1)/#)]` -/
def P4591400670928767756.Spec : Prop :=
  ∀ n, P4591400670928767756.a n = A065960 (n + 1)

end A065960

/-!
# A065961: a(n) = (3*n - 1)!*n/2.

The programs for A065961, the canonical program `A065961.P17290473748255014114` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065961 has offset 1).

The definition of A065961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065961.P17290473748255014114

`(3*(n+1))!/6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065961

/-- `(3*(n+1))!/6` -/
def P17290473748255014114.Spec : Prop :=
  ∀ n, P17290473748255014114.a n = (A065961 (n + 1) : ℚ)

end A065961

/-! ## A065961.P16991695486680778786

`(3*(n+1)-1)!*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065961.P16991695486680778786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((3 * (n + 1) : ℤ) - 1).toNat * (n + 1) : ℚ) / 2

end

end A065961.P16991695486680778786

namespace A065961

/-- `(3*(n+1)-1)!*(n+1)/2` -/
def P16991695486680778786.Spec : Prop :=
  ∀ n, P16991695486680778786.a n = (A065961 (n + 1) : ℚ)

end A065961

/-! ## A065961.P9249921824754138572

`A001715(3*(n+1))`
-/

namespace A065961.P9249921824754138572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (3 * (n + 1))

end

end A065961.P9249921824754138572

namespace A065961

/-- `A001715(3*(n+1))` -/
def P9249921824754138572.Spec : Prop :=
  ∀ n, P9249921824754138572.a n = A065961 (n + 1)

end A065961

/-! ## A065961.P8795742701570717511

`A100732(n+1)/6`
-/

namespace A065961.P8795742701570717511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100732 (n + 1) : ℚ) / 6

end

end A065961.P8795742701570717511

namespace A065961

/-- `A100732(n+1)/6` -/
def P8795742701570717511.Spec : Prop :=
  ∀ n, P8795742701570717511.a n = (A065961 (n + 1) : ℚ)

end A065961

/-! ## A065961.P1956193199208993365

`A119831(∑[n+1]+1)`
-/

namespace A065961.P1956193199208993365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065961.P1956193199208993365

namespace A065961

/-- `A119831(∑[n+1]+1)` -/
def P1956193199208993365.Spec : Prop :=
  ∀ n, P1956193199208993365.a n = A065961 (n + 1)

end A065961

/-!
# A065962: a(1) = 1, a(n) = a(n - 1) + pi(a(n - 1)) + 1.

The programs for A065962, the canonical program `A065962.P8648772428482290998` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065962 has offset 1).

The definition of A065962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+A000720(a(n-1))` (program `A065962.P8648772428482290998`, by `A065962.P8648772428482290998.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065962.P8648772428482290998

`1+a(n-1)+A000720(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065962

/-- `1+a(n-1)+A000720(a(n-1))` -/
def P8648772428482290998.Spec : Prop :=
  ∀ n, P8648772428482290998.a n = A065962 (n + 1)

theorem P8648772428482290998.correct : P8648772428482290998.Spec := by
  intro n
  simp only [A065962, Nat.add_sub_cancel]

end A065962

/-! ## A065962.P13618836086223700899

`a(n-1)+A000720(a(n-1))+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065962.P13618836086223700899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000720 (a (n - 1)).toNat + 1

end

end A065962.P13618836086223700899

namespace A065962

/-- `a(n-1)+A000720(a(n-1))+1` -/
def P13618836086223700899.Spec : Prop :=
  ∀ n, P13618836086223700899.a n = A065962 (n + 1)

theorem P13618836086223700899.correct : P13618836086223700899.Spec := by
  intro n
  simp only [A065962, Nat.add_sub_cancel, A065962.P13618836086223700899.a, A065962.P8648772428482290998.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065962

/-! ## A065962.P10931539410625146019

`A000720(A151800(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A065962.P10931539410625146019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000720 (A151800 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A065962.P10931539410625146019

namespace A065962

/-- `A000720(A151800(a(n-1)))+a(n-1)` -/
def P10931539410625146019.Spec : Prop :=
  ∀ n, P10931539410625146019.a n = A065962 (n + 1)

end A065962

/-! ## A065962.P14533720323792940726

`A064427(a(n-1)+1)` with `a(0)=1`
-/

namespace A065962.P14533720323792940726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064427 (a (n - 1) + 1).toNat

end

end A065962.P14533720323792940726

namespace A065962

/-- `A064427(a(n-1)+1)` -/
def P14533720323792940726.Spec : Prop :=
  ∀ n, P14533720323792940726.a n = A065962 (n + 1)

end A065962

/-! ## A065962.P17542173609108155425

`A095117(a(n-1))+1` with `a(0)=1`
-/

namespace A065962.P17542173609108155425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095117 (a (n - 1)).toNat + 1

end

end A065962.P17542173609108155425

namespace A065962

/-- `A095117(a(n-1))+1` -/
def P17542173609108155425.Spec : Prop :=
  ∀ n, P17542173609108155425.a n = A065962 (n + 1)

end A065962

/-!
# A065966: Numbers k such that phi(k) / 2 is prime.

The programs for A065966, the canonical program `A065966.P16852367913655566949` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065966 has offset 1).

The definition of A065966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065966.P16852367913655566949

`eq[2, A001222(A000010(n+1))]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065966

/-- `eq[2, A001222(A000010(n+1))]+1` -/
def P16852367913655566949.Spec : Prop :=
  ∀ n, (P16852367913655566949.a n : ℤ) = A065966 (n + 1)

theorem P16852367913655566949.correct : P16852367913655566949.Spec := by
  intro n
  simp only [A065966, Nat.add_sub_cancel]

end A065966

/-! ## A065966.P2498195704147014917

`eq[2, A193386(n+1)]+1`
-/

namespace A065966.P2498195704147014917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065966.P2498195704147014917

namespace A065966

/-- `eq[2, A193386(n+1)]+1` -/
def P2498195704147014917.Spec : Prop :=
  ∀ n, (P2498195704147014917.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P8020274626037785529

`eq[2, ∑{e}[A000010(abs(1-n)+1), #]]`
-/

namespace A065966.P8020274626037785529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065966.P8020274626037785529

namespace A065966

/-- `eq[2, ∑{e}[A000010(abs(1-n)+1), #]]` -/
def P8020274626037785529.Spec : Prop :=
  ∀ n, (P8020274626037785529.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P10396329785050314731

`eq[2, A001222((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])]+1`
-/

namespace A065966.P10396329785050314731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065966.P10396329785050314731

namespace A065966

/-- `eq[2, A001222((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])]+1` -/
def P10396329785050314731.Spec : Prop :=
  ∀ n, (P10396329785050314731.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P3249116228194256788

`eq[2, A193386(A028310(n))]`
-/

namespace A065966.P3249116228194256788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065966.P3249116228194256788

namespace A065966

/-- `eq[2, A193386(A028310(n))]` -/
def P3249116228194256788.Spec : Prop :=
  ∀ n, (P3249116228194256788.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P16564862326149066890

`A020725(eq[2, A193386(n+1)])`
-/

namespace A065966.P16564862326149066890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065966.P16564862326149066890

namespace A065966

/-- `A020725(eq[2, A193386(n+1)])` -/
def P16564862326149066890.Spec : Prop :=
  ∀ n, P16564862326149066890.a n = A065966 (n + 1)

end A065966

/-! ## A065966.P10324020110232820085

`eq[2, A193386(A004277(n)-n)]`
-/

namespace A065966.P10324020110232820085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065966.P10324020110232820085

namespace A065966

/-- `eq[2, A193386(A004277(n)-n)]` -/
def P10324020110232820085.Spec : Prop :=
  ∀ n, (P10324020110232820085.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P13151498648223630456

`eq[2, A277906(A277906(n+1))]+1`
-/

namespace A065966.P13151498648223630456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A277906 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065966.P13151498648223630456

namespace A065966

/-- `eq[2, A277906(A277906(n+1))]+1` -/
def P13151498648223630456.Spec : Prop :=
  ∀ n, (P13151498648223630456.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P5450939604843629723

`eq[2, A001222(A109606(n+1)+1)]+1`
-/

namespace A065966.P5450939604843629723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065966.P5450939604843629723

namespace A065966

/-- `eq[2, A001222(A109606(n+1)+1)]+1` -/
def P5450939604843629723.Spec : Prop :=
  ∀ n, (P5450939604843629723.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P2481291179465605216

`eq[2, A001222(A039649(n+1)-1)]+1`
-/

namespace A065966.P2481291179465605216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065966.P2481291179465605216

namespace A065966

/-- `eq[2, A001222(A039649(n+1)-1)]+1` -/
def P2481291179465605216.Spec : Prop :=
  ∀ n, (P2481291179465605216.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P9801203830964389011

`eq[2, A001222(abs(A051953(n+1)-n)+1)]+1`
-/

namespace A065966.P9801203830964389011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|A051953 (n + 1) - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065966.P9801203830964389011

namespace A065966

/-- `eq[2, A001222(abs(A051953(n+1)-n)+1)]+1` -/
def P9801203830964389011.Spec : Prop :=
  ∀ n, (P9801203830964389011.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P15142599554156175184

`eq[3, A001222(A000010(A008486(n)))]`
-/

namespace A065966.P15142599554156175184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065966.P15142599554156175184

namespace A065966

/-- `eq[3, A001222(A000010(A008486(n)))]` -/
def P15142599554156175184.Spec : Prop :=
  ∀ n, (P15142599554156175184.a n : ℤ) = A065966 (n + 1)

end A065966

/-! ## A065966.P4764426500060999661

`eq[1, A322993(A023022(n+2))]+2`
-/

namespace A065966.P4764426500060999661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (A023022 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A065966.P4764426500060999661

namespace A065966

/-- `eq[1, A322993(A023022(n+2))]+2` -/
def P4764426500060999661.Spec : Prop :=
  ∀ n, (P4764426500060999661.a n : ℤ) = A065966 (n + 1)

end A065966

/-!
# A065967: a(n) = n * Sum_{primes p dividing n} (1 + 1/p).

The programs for A065967, the canonical program `A065967.P9165261899428571397` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065967 has offset 1).

The definition of A065967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065967.P9165261899428571397

`∑{p}[n+1, ceil(n/#+n+1)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065967

/-- `∑{p}[n+1, ceil(n/#+n+1)]` -/
def P9165261899428571397.Spec : Prop :=
  ∀ n, P9165261899428571397.a n = A065967 (n + 1)

theorem P9165261899428571397.correct : P9165261899428571397.Spec := by
  intro n
  simp only [A065967, Nat.add_sub_cancel]

end A065967

/-! ## A065967.P3546542099871652652

`floor(∑{p}[n+1, (n+1)/#+n+1])`
-/

namespace A065967.P3546542099871652652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ) + (n + 1 : ℚ))⌋

end

end A065967.P3546542099871652652

namespace A065967

/-- `floor(∑{p}[n+1, (n+1)/#+n+1])` -/
def P3546542099871652652.Spec : Prop :=
  ∀ n, P3546542099871652652.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P17322436120390059206

`round(∑{p}[n+1, (n+1)/#+n+1])`
-/

namespace A065967.P17322436120390059206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ) + (n + 1 : ℚ)))

end

end A065967.P17322436120390059206

namespace A065967

/-- `round(∑{p}[n+1, (n+1)/#+n+1])` -/
def P17322436120390059206.Spec : Prop :=
  ∀ n, P17322436120390059206.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P15785147633568806472

`(n+1)*∑{p}[n+1, A000203(#)/#]`
-/

namespace A065967.P15785147633568806472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), (A000203 p : ℚ) / (p : ℚ))

end

end A065967.P15785147633568806472

namespace A065967

/-- `(n+1)*∑{p}[n+1, A000203(#)/#]` -/
def P15785147633568806472.Spec : Prop :=
  ∀ n, P15785147633568806472.a n = (A065967 (n + 1) : ℚ)

end A065967

/-! ## A065967.P3624659076429651659

`A328260(n+1)+A069359(n+1)`
-/

namespace A065967.P3624659076429651659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (n + 1) + A069359 (n + 1)

end

end A065967.P3624659076429651659

namespace A065967

/-- `A328260(n+1)+A069359(n+1)` -/
def P3624659076429651659.Spec : Prop :=
  ∀ n, P3624659076429651659.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P17533218999970396142

`A351371(n+1)+A334341(n+1)`
-/

namespace A065967.P17533218999970396142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351371 (n + 1) + A334341 (n + 1)

end

end A065967.P17533218999970396142

namespace A065967

/-- `A351371(n+1)+A334341(n+1)` -/
def P17533218999970396142.Spec : Prop :=
  ∀ n, P17533218999970396142.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P14362112985830902187

`A345305(n+1)+A345302(n+1)`
-/

namespace A065967.P14362112985830902187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345305 (n + 1) + A345302 (n + 1)

end

end A065967.P14362112985830902187

namespace A065967

/-- `A345305(n+1)+A345302(n+1)` -/
def P14362112985830902187.Spec : Prop :=
  ∀ n, P14362112985830902187.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P2751390285202216962

`A065968(n+1)+2*A069359(n+1)`
-/

namespace A065967.P2751390285202216962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065968 (n + 1) + 2 * A069359 (n + 1)

end

end A065967.P2751390285202216962

namespace A065967

/-- `A065968(n+1)+2*A069359(n+1)` -/
def P2751390285202216962.Spec : Prop :=
  ∀ n, P2751390285202216962.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P9363380808057290977

`2*A328260(n+1)-A065968(n+1)`
-/

namespace A065967.P9363380808057290977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328260 (n + 1) - A065968 (n + 1)

end

end A065967.P9363380808057290977

namespace A065967

/-- `2*A328260(n+1)-A065968(n+1)` -/
def P9363380808057290977.Spec : Prop :=
  ∀ n, P9363380808057290977.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P6470577667627289778

`∑{d}[n+1, A008683(#)*A180253((n+1)/#)]`
-/

namespace A065967.P6470577667627289778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A180253 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065967.P6470577667627289778

namespace A065967

/-- `∑{d}[n+1, A008683(#)*A180253((n+1)/#)]` -/
def P6470577667627289778.Spec : Prop :=
  ∀ n, P6470577667627289778.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P10423235458953649571

`A069359(n+1)+A329354(n+1)-A329375(n+1)`
-/

namespace A065967.P10423235458953649571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (A329354 (n + 1) - A329375 (n + 1))

end

end A065967.P10423235458953649571

namespace A065967

/-- `A069359(n+1)+A329354(n+1)-A329375(n+1)` -/
def P10423235458953649571.Spec : Prop :=
  ∀ n, P10423235458953649571.a n = A065967 (n + 1)

end A065967

/-! ## A065967.P15621555366476154916

`A003557(n+1)*A349620(A078615(n+1))`
-/

namespace A065967.P15621555366476154916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A349620 (A078615 (n + 1)).toNat

end

end A065967.P15621555366476154916

namespace A065967

/-- `A003557(n+1)*A349620(A078615(n+1))` -/
def P15621555366476154916.Spec : Prop :=
  ∀ n, P15621555366476154916.a n = A065967 (n + 1)

end A065967

/-!
# A065968: a(n) = n * Sum_{primes p dividing n} (1 - 1/p).

The programs for A065968, the canonical program `A065968.P10122842357532038382` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065968 has offset 1).

The definition of A065968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065968.P10122842357532038382

`∑{p}[n+1, n-floor(n/#)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065968

/-- `∑{p}[n+1, n-floor(n/#)]` -/
def P10122842357532038382.Spec : Prop :=
  ∀ n, P10122842357532038382.a n = A065968 (n + 1)

theorem P10122842357532038382.correct : P10122842357532038382.Spec := by
  intro n
  simp only [A065968, Nat.add_sub_cancel]

end A065968

/-! ## A065968.P204971666932435394

`abs(∑{p}[n+1, n+1-(n+1)/#])`
-/

namespace A065968.P204971666932435394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) - (n + 1 : ℚ) / (p : ℚ))|

end

end A065968.P204971666932435394

namespace A065968

/-- `abs(∑{p}[n+1, n+1-(n+1)/#])` -/
def P204971666932435394.Spec : Prop :=
  ∀ n, P204971666932435394.a n = (A065968 (n + 1) : ℚ)

end A065968

/-! ## A065968.P5187534627252073717

`-∑{p}[n+1, (n+1)/#-(n+1)]`
-/

namespace A065968.P5187534627252073717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ) - (n + 1 : ℚ)))

end

end A065968.P5187534627252073717

namespace A065968

/-- `-∑{p}[n+1, (n+1)/#-(n+1)]` -/
def P5187534627252073717.Spec : Prop :=
  ∀ n, P5187534627252073717.a n = (A065968 (n + 1) : ℚ)

end A065968

/-! ## A065968.P4023603305571713338

`ceil(∑{p}[n+1, n+1-(n+1)/#])`
-/

namespace A065968.P4023603305571713338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) - (n + 1 : ℚ) / (p : ℚ))⌉

end

end A065968.P4023603305571713338

namespace A065968

/-- `ceil(∑{p}[n+1, n+1-(n+1)/#])` -/
def P4023603305571713338.Spec : Prop :=
  ∀ n, P4023603305571713338.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P4086262210379628080

`round(∑{p}[n+1, n+1-(n+1)/#])`
-/

namespace A065968.P4086262210379628080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) - (n + 1 : ℚ) / (p : ℚ)))

end

end A065968.P4086262210379628080

namespace A065968

/-- `round(∑{p}[n+1, n+1-(n+1)/#])` -/
def P4086262210379628080.Spec : Prop :=
  ∀ n, P4086262210379628080.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P1417655127381515141

`∑{d}[n+1, #*A166260((n+1)/#)]`
-/

namespace A065968.P1417655127381515141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A166260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065968.P1417655127381515141

namespace A065968

/-- `∑{d}[n+1, #*A166260((n+1)/#)]` -/
def P1417655127381515141.Spec : Prop :=
  ∀ n, P1417655127381515141.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P5985700585804698510

`(n+1)*∑{p}[n+1, A000010(#)/#]`
-/

namespace A065968.P5985700585804698510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), (A000010 p : ℚ) / (p : ℚ))

end

end A065968.P5985700585804698510

namespace A065968

/-- `(n+1)*∑{p}[n+1, A000010(#)/#]` -/
def P5985700585804698510.Spec : Prop :=
  ∀ n, P5985700585804698510.a n = (A065968 (n + 1) : ℚ)

end A065968

/-! ## A065968.P18137150530649803153

`A328260(n+1)-A069359(n+1)`
-/

namespace A065968.P18137150530649803153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (n + 1) - A069359 (n + 1)

end

end A065968.P18137150530649803153

namespace A065968

/-- `A328260(n+1)-A069359(n+1)` -/
def P18137150530649803153.Spec : Prop :=
  ∀ n, P18137150530649803153.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P17563350591262456811

`A349217(n+1)-A348219(n+1)`
-/

namespace A065968.P17563350591262456811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349217 (n + 1) - A348219 (n + 1)

end

end A065968.P17563350591262456811

namespace A065968

/-- `A349217(n+1)-A348219(n+1)` -/
def P17563350591262456811.Spec : Prop :=
  ∀ n, P17563350591262456811.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P1594364869546079086

`A065967(n+1)-2*A069359(n+1)`
-/

namespace A065968.P1594364869546079086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1) - 2 * A069359 (n + 1)

end

end A065968.P1594364869546079086

namespace A065968

/-- `A065967(n+1)-2*A069359(n+1)` -/
def P1594364869546079086.Spec : Prop :=
  ∀ n, P1594364869546079086.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P17343197778448185466

`2*A328260(n+1)-A065967(n+1)`
-/

namespace A065968.P17343197778448185466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328260 (n + 1) - A065967 (n + 1)

end

end A065968.P17343197778448185466

namespace A065968

/-- `2*A328260(n+1)-A065967(n+1)` -/
def P17343197778448185466.Spec : Prop :=
  ∀ n, P17343197778448185466.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P10089474210680822001

`∑{d}[n+1, A000010(#)*A055631((n+1)/#)]`
-/

namespace A065968.P10089474210680822001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A055631 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065968.P10089474210680822001

namespace A065968

/-- `∑{d}[n+1, A000010(#)*A055631((n+1)/#)]` -/
def P10089474210680822001.Spec : Prop :=
  ∀ n, P10089474210680822001.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P682879907614355412

`A329354(n+1)-(A329375(n+1)+A069359(n+1))`
-/

namespace A065968.P682879907614355412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329354 (n + 1) - (A329375 (n + 1) + A069359 (n + 1))

end

end A065968.P682879907614355412

namespace A065968

/-- `A329354(n+1)-(A329375(n+1)+A069359(n+1))` -/
def P682879907614355412.Spec : Prop :=
  ∀ n, P682879907614355412.a n = A065968 (n + 1)

end A065968

/-! ## A065968.P8791091058824095205

`A007947(n+1)*A349620(n+1)-A003415(n+1)`
-/

namespace A065968.P8791091058824095205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A349620 (n + 1) - A003415 (n + 1)

end

end A065968.P8791091058824095205

namespace A065968

/-- `A007947(n+1)*A349620(n+1)-A003415(n+1)` -/
def P8791091058824095205.Spec : Prop :=
  ∀ n, P8791091058824095205.a n = A065968 (n + 1)

end A065968

/-!
# A065969: a(n) = n^2 * Sum_{primes p dividing n} (1 + 1/p^2).

The programs for A065969, the canonical program `A065969.P15778986629120031531` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065969 has offset 1).

The definition of A065969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065969.P15778986629120031531

`∑{p}[n+1, ((n+1)/#)²+(n+1)²]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065969

/-- `∑{p}[n+1, ((n+1)/#)²+(n+1)²]` -/
def P15778986629120031531.Spec : Prop :=
  ∀ n, P15778986629120031531.a n = (A065969 (n + 1) : ℚ)

end A065969

/-! ## A065969.P14076027265961177612

`A065970(n+1)+2*A322078(n+1)`
-/

namespace A065969.P14076027265961177612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065970 (n + 1) + 2 * A322078 (n + 1)

end

end A065969.P14076027265961177612

namespace A065969

/-- `A065970(n+1)+2*A322078(n+1)` -/
def P14076027265961177612.Spec : Prop :=
  ∀ n, P14076027265961177612.a n = A065969 (n + 1)

end A065969

/-!
# A065970: a(n) = n^2 * Sum_{primes p dividing n} (1 - 1/p^2).

The programs for A065970, the canonical program `A065970.P13115613865623270676` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065970 has offset 1).

The definition of A065970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065970.P2869575535846284784

`∑{p}[n+1, (n+1)²-((n+1)/#)²]`
-/

namespace A065970.P2869575535846284784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (((n + 1) ^ 2 : ℚ) - ((n + 1 : ℚ) / (p : ℚ)) ^ 2)

end

end A065970.P2869575535846284784

namespace A065970

/-- `∑{p}[n+1, (n+1)²-((n+1)/#)²]` -/
def P2869575535846284784.Spec : Prop :=
  ∀ n, P2869575535846284784.a n = (A065970 (n + 1) : ℚ)

end A065970

/-! ## A065970.P13115613865623270676

`A065969(n+1)-2*A322078(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065970

/-- `A065969(n+1)-2*A322078(n+1)` -/
def P13115613865623270676.Spec : Prop :=
  ∀ n, P13115613865623270676.a n = A065970 (n + 1)

theorem P13115613865623270676.correct : P13115613865623270676.Spec := by
  intro n
  simp only [A065970, Nat.add_sub_cancel]

end A065970

/-!
# A065971: Binomial transform of A064413.

The programs for A065971, there is no canonical definition to state claims against.
-/

/-! ## A065971.P10572853461924175135

`∑[n-2]+3*A048263(2^n)`
-/

namespace A065971.P10572853461924175135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * A048263 (2 ^ n)

end

end A065971.P10572853461924175135

/-! ## A065971.P14976678640126325240

`A243186(2^n)+∑[∑{d}[n, #]]+1`
-/

namespace A065971.P14976678640126325240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243186 (2 ^ n) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A065971.P14976678640126325240

/-!
# A065973: Denominators in an asymptotic expansion of Ramanujan.

The programs for A065973, there is no canonical definition to state claims against.
-/

/-! ## A065973.P15588662723379738931

`A264149(Δ[n²])`
-/

namespace A065973.P15588662723379738931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065973.P15588662723379738931

/-! ## A065973.P9961636668172312576

`lcm(3, A264149(2*n+1))`
-/

namespace A065973.P9961636668172312576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A264149 (2 * n + 1))

end

end A065973.P9961636668172312576

/-! ## A065973.P15003673478664548163

`A264149(2*n+1)+char[A264138(n+1)]`
-/

namespace A065973.P15003673478664548163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264138 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264149 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065973.P15003673478664548163

/-! ## A065973.P7246675281257990624

`A264149(2*n+1)+char[A264139(n+1)]`
-/

namespace A065973.P7246675281257990624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264149 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065973.P7246675281257990624

/-! ## A065973.P3164559844263280355

`A264149(2*n+1)+char[A264141(n+1)]`
-/

namespace A065973.P3164559844263280355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264141 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264149 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065973.P3164559844263280355

/-!
# A065974: Numerators in expansion of (exp(x)-1)^3.

The programs for A065974, there is no canonical definition to state claims against.
-/

/-! ## A065974.P15066302391295679531

`lcm(n!, A094033(n))/n!`
-/

namespace A065974.P15066302391295679531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (Nat.factorial n : ℤ) (A094033 n) : ℚ) / (Nat.factorial n : ℚ)

end

end A065974.P15066302391295679531

/-!
# A065975: Denominators in expansion of (exp(x)-1)^3.

The programs for A065975, there is no canonical definition to state claims against.
-/

/-! ## A065975.P13560963407404270590

`n!/gcd(3^n+3*(1-2^n), n!)`
-/

namespace A065975.P13560963407404270590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))) (Nat.factorial n : ℤ) : ℚ)

end

end A065975.P13560963407404270590

/-! ## A065975.P15699971874238558788

`A000142(n)/gcd(A000142(n), A001117(n))`
-/

namespace A065975.P15699971874238558788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A001117 n) : ℚ)

end

end A065975.P15699971874238558788

/-! ## A065975.P5893173384564987629

`A174842(A148869(n))`
-/

namespace A065975.P5893173384564987629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174842 (A148869 n).toNat

end

end A065975.P5893173384564987629

/-! ## A065975.P334696302954678028

`A225530(A001426(n)%A000111(n))`
-/

namespace A065975.P334696302954678028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.tmod (A001426 n) (A000111 n)).toNat

end

end A065975.P334696302954678028

/-! ## A065975.P7235071058682269226

`lcm(A099514(n), A317500(A003242(n)))`
-/

namespace A065975.P7235071058682269226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099514 n) (A317500 (A003242 n).toNat)

end

end A065975.P7235071058682269226

/-!
# A065976: Consecutive terms of A065966 which are also consecutive integers.

The programs for A065976, the canonical program `A065976.P14889509416752367906` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065976 has offset 1).

The definition of A065976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065976.P3345886641648106771

`∩[A065966(n+1)-1, A065966(n+1)]`
-/

namespace A065976.P3345886641648106771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065976.P3345886641648106771

namespace A065976

/-- `∩[A065966(n+1)-1, A065966(n+1)]` -/
def P3345886641648106771.Spec : Prop :=
  ∀ n, (P3345886641648106771.a n : ℤ) = A065976 (n + 1)

end A065976

/-! ## A065976.P14889509416752367906

`A065966(eq[1, A065966(n+2)-A065966(n+1)]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065976

/-- `A065966(eq[1, A065966(n+2)-A065966(n+1)]+1)` -/
def P14889509416752367906.Spec : Prop :=
  ∀ n, P14889509416752367906.a n = A065976 (n + 1)

theorem P14889509416752367906.correct : P14889509416752367906.Spec := by
  intro n
  simp only [A065976, Nat.add_sub_cancel]

end A065976

/-! ## A065976.P11934930986362213507

`∩[A065966(n+1), A023443(A065966(n+1))]`
-/

namespace A065976.P11934930986362213507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065966 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065976.P11934930986362213507

namespace A065976

/-- `∩[A065966(n+1), A023443(A065966(n+1))]` -/
def P11934930986362213507.Spec : Prop :=
  ∀ n, (P11934930986362213507.a n : ℤ) = A065976 (n + 1)

end A065976

/-! ## A065976.P2132660443508038837

`eq[4, A001222(A083542(n+1))]+1`
-/

namespace A065976.P2132660443508038837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083542 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065976.P2132660443508038837

namespace A065976

/-- `eq[4, A001222(A083542(n+1))]+1` -/
def P2132660443508038837.Spec : Prop :=
  ∀ n, (P2132660443508038837.a n : ℤ) = A065976 (n + 1)

end A065976

/-!
# A065977: Numbers k that divide the number formed by the first k decimal digits of e (A039920(k)).

The programs for A065977, there is no canonical definition to state claims against.
-/

/-! ## A065977.P13734378966372580398

`A235538(∑{d}[A041875(n), #])`
-/

namespace A065977.P13734378966372580398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235538 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A065977.P13734378966372580398

/-!
# A065978: For even k >= 4, let f(k) = A066285(k/2) be the minimal difference between primes p and q whose sum is k. Such a k is in the sequence if f(k) > f(m) for all even m with 4 <= m < k.

The programs for A065978, there is no canonical definition to state claims against.
-/

/-! ## A065978.P15446738519861485010

`2*A155765(n+1)`
-/

namespace A065978.P15446738519861485010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155765 (n + 1)

end

end A065978.P15446738519861485010

/-! ## A065978.P16970750322919999291

`4*A155765(Δ[n²]-n)/2`
-/

namespace A065978.P16970750322919999291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A155765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A065978.P16970750322919999291

/-! ## A065978.P17058714936515448727

`A155765(Δ[n²]-n)+A155765(n+1)`
-/

namespace A065978.P17058714936515448727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + A155765 (n + 1)

end

end A065978.P17058714936515448727

/-! ## A065978.P3768435784786616220

`A155765(n+1)+record[A155765(A032742(n+1))]`
-/

namespace A065978.P3768435784786616220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155765 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155765 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065978.P3768435784786616220

/-! ## A065978.P16357127731486108085

`A155765(n+1)+gcd(A000038(n), A155765(n+1))`
-/

namespace A065978.P16357127731486108085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155765 (n + 1) + (Int.gcd (A000038 n) (A155765 (n + 1)) : ℤ)

end

end A065978.P16357127731486108085

/-! ## A065978.P15321348135579616046

`lcm(A155765(n+1)+A155765(n+1), A054977(n))`
-/

namespace A065978.P15321348135579616046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155765 (n + 1) + A155765 (n + 1)) (A054977 n)

end

end A065978.P15321348135579616046

/-! ## A065978.P8734228643380752058

`A155765(n+1)+A155765(n+1)+A005843(n)%2`
-/

namespace A065978.P8734228643380752058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155765 (n + 1) + (A155765 (n + 1) + Int.tmod (A005843 n) 2)

end

end A065978.P8734228643380752058

/-! ## A065978.P1584264408387374572

`A155765(A233583(n+2))+A155765(n+1)-A000038(n)`
-/

namespace A065978.P1584264408387374572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155765 (A233583 (n + 2)).toNat + A155765 (n + 1) - A000038 n

end

end A065978.P1584264408387374572

/-! ## A065978.P17846464489092292538

`A155765(n+1)+A155765(n+1)+A000038(A233583(n+1))`
-/

namespace A065978.P17846464489092292538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155765 (n + 1) + (A155765 (n + 1) + A000038 (A233583 (n + 1)).toNat)

end

end A065978.P17846464489092292538

/-! ## A065978.P6003567571351758489

`A107926(A155764(n+1))`
-/

namespace A065978.P6003567571351758489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 (A155764 (n + 1)).toNat

end

end A065978.P6003567571351758489

/-!
# A065979: Binomial transform of A002024.

The programs for A065979, there is no canonical definition to state claims against.
-/

/-! ## A065979.P12567528145830693224

`A280352(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A065979.P12567528145830693224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280352 n + 2 * a (n - 1)

end

end A065979.P12567528145830693224

/-! ## A065979.P5170815180329395352

`A008620(A047862(n)-A232089(n))`
-/

namespace A065979.P5170815180329395352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A047862 n - A232089 n).toNat

end

end A065979.P5170815180329395352

/-! ## A065979.P15436387342077964108

`A137221(n)+record[A229120(n+1)]`
-/

namespace A065979.P15436387342077964108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065979.P15436387342077964108

/-! ## A065979.P3290832875604419159

`A106463(n+1)-A185284(A000124(n))`
-/

namespace A065979.P3290832875604419159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106463 (n + 1) - A185284 (A000124 n).toNat

end

end A065979.P3290832875604419159

/-! ## A065979.P8267085590402660374

`A106463(n+1)-A185284(A046938(n))`
-/

namespace A065979.P8267085590402660374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106463 (n + 1) - A185284 (A046938 n).toNat

end

end A065979.P8267085590402660374

/-!
# A065980: Inverse binomial transform of [1^1,2^2,3^3,...], shifted right by one index.

The programs for A065980, there is no canonical definition to state claims against.
-/

/-! ## A065980.P14367298830482078796

`abs(Δ[A069856(n)])`
-/

namespace A065980.P14367298830482078796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A065980.P14367298830482078796

/-! ## A065980.P13098514073740729371

`record[Δ[A069856(A008611(n))]]`
-/

namespace A065980.P13098514073740729371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069856 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065980.P13098514073740729371

/-! ## A065980.P15075492160780642661

`gcd(Δ[A069856(n)], A000038(n))`
-/

namespace A065980.P15075492160780642661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069856 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A065980.P15075492160780642661

/-! ## A065980.P9113065683351310644

`lcm(Δ[A069856(n)], A033999(n))`
-/

namespace A065980.P9113065683351310644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069856 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A065980.P9113065683351310644

/-! ## A065980.P12612651261513647382

`abs(A069856(n+1)-A069856(n))`
-/

namespace A065980.P12612651261513647382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069856 (n + 1) - A069856 n|

end

end A065980.P12612651261513647382

/-! ## A065980.P9414665984436370708

`Δ[A069856(n)]*A033999(n+1)`
-/

namespace A065980.P9414665984436370708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A065980.P9414665984436370708

/-! ## A065980.P1693920215309180582

`(A069856(n)-A069856(n+1))*A033999(n)`
-/

namespace A065980.P1693920215309180582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069856 n - A069856 (n + 1)) * A033999 n

end

end A065980.P1693920215309180582

/-! ## A065980.P5651214081141831125

`(A069856(n+1)-A069856(n))/A033999(n+1)`
-/

namespace A065980.P5651214081141831125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069856 (n + 1) - A069856 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A065980.P5651214081141831125

/-!
# A065981: Best approximation of the remainder in the zeta(4) series using the remainder in the zeta(3) series.

The programs for A065981, there is no canonical definition to state claims against.
-/

/-! ## A065981.P15611765259253549853

`A070977(n+1)-1`
-/

namespace A065981.P15611765259253549853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070977 (n + 1) - 1

end

end A065981.P15611765259253549853

/-! ## A065981.P1637788462146762810

`A023443(A070977(n+1))`
-/

namespace A065981.P1637788462146762810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A070977 (n + 1)).toNat

end

end A065981.P1637788462146762810

/-! ## A065981.P14790104495020252703

`A070990(A055396(2*(n+1)))+A070977(n+1)`
-/

namespace A065981.P14790104495020252703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (A055396 (2 * (n + 1))).toNat + A070977 (n + 1)

end

end A065981.P14790104495020252703

/-! ## A065981.P9968099507140779771

`A077074(n+2)-2`
-/

namespace A065981.P9968099507140779771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077074 (n + 2) - 2

end

end A065981.P9968099507140779771

/-! ## A065981.P15927209408032611941

`A003056(∑[∑[A216345(3*n+2)]])`
-/

namespace A065981.P15927209408032611941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065981.P15927209408032611941

/-!
# A065982: a(n) = (n+1)*binomial(2*n,n) - 2^(2*n-1).

The programs for A065982, the canonical program `A065982.P287869744662803109` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065982 has offset 1).

The definition of A065982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065982.P287869744662803109

`(n+2)*C(2*(n+1), n+1)-2^(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065982

/-- `(n+2)*C(2*(n+1), n+1)-2^(2*(n+1)-1)` -/
def P287869744662803109.Spec : Prop :=
  ∀ n, P287869744662803109.a n = (A065982 (n + 1) : ℚ)

end A065982

/-! ## A065982.P14426083239551348846

`2*A296770(n)`
-/

namespace A065982.P14426083239551348846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296770 n

end

end A065982.P14426083239551348846

namespace A065982

/-- `2*A296770(n)` -/
def P14426083239551348846.Spec : Prop :=
  ∀ n, P14426083239551348846.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P15347756355030961493

`A296665(n+1)/2`
-/

namespace A065982.P15347756355030961493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296665 (n + 1) : ℚ) / 2

end

end A065982.P15347756355030961493

namespace A065982

/-- `A296665(n+1)/2` -/
def P15347756355030961493.Spec : Prop :=
  ∀ n, P15347756355030961493.a n = (A065982 (n + 1) : ℚ)

end A065982

/-! ## A065982.P3477698956443877156

`2*A027305(2*n)`
-/

namespace A065982.P3477698956443877156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027305 (2 * n)

end

end A065982.P3477698956443877156

namespace A065982

/-- `2*A027305(2*n)` -/
def P3477698956443877156.Spec : Prop :=
  ∀ n, P3477698956443877156.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P9517782513804689692

`A296663(2*(n+1))/2`
-/

namespace A065982.P9517782513804689692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296663 (2 * (n + 1)) : ℚ) / 2

end

end A065982.P9517782513804689692

namespace A065982

/-- `A296663(2*(n+1))/2` -/
def P9517782513804689692.Spec : Prop :=
  ∀ n, P9517782513804689692.a n = (A065982 (n + 1) : ℚ)

end A065982

/-! ## A065982.P2143420065164690676

`A162551(n)+4*a(n-1)` with `a(0)=2`
-/

namespace A065982.P2143420065164690676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A162551 n + 4 * a (n - 1)

end

end A065982.P2143420065164690676

namespace A065982

/-- `A162551(n)+4*a(n-1)` -/
def P2143420065164690676.Spec : Prop :=
  ∀ n, P2143420065164690676.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P8501778818068351900

`A000531(n+1)+∏[4-2/(n+1)]/2`
-/

namespace A065982.P8501778818068351900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000531 (n + 1) : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A065982.P8501778818068351900

namespace A065982

/-- `A000531(n+1)+∏[4-2/(n+1)]/2` -/
def P8501778818068351900.Spec : Prop :=
  ∀ n, P8501778818068351900.a n = (A065982 (n + 1) : ℚ)

end A065982

/-! ## A065982.P16900146423201947098

`A033876(n)-A000346(n)`
-/

namespace A065982.P16900146423201947098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033876 n - A000346 n

end

end A065982.P16900146423201947098

namespace A065982

/-- `A033876(n)-A000346(n)` -/
def P16900146423201947098.Spec : Prop :=
  ∀ n, P16900146423201947098.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P8102169105975218241

`A031970(n)+Δ[A001700(n)]`
-/

namespace A065982.P8102169105975218241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031970 n + (f1 (n + 1) - f1 n)

end

end A065982.P8102169105975218241

namespace A065982

/-- `A031970(n)+Δ[A001700(n)]` -/
def P8102169105975218241.Spec : Prop :=
  ∀ n, P8102169105975218241.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P12798430967519099988

`A001700(n)+A000531(n+1)`
-/

namespace A065982.P12798430967519099988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A000531 (n + 1)

end

end A065982.P12798430967519099988

namespace A065982

/-- `A001700(n)+A000531(n+1)` -/
def P12798430967519099988.Spec : Prop :=
  ∀ n, P12798430967519099988.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P15746140793791197657

`A194460(n+1)+A002457(n)`
-/

namespace A065982.P15746140793791197657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194460 (n + 1) + A002457 n

end

end A065982.P15746140793791197657

namespace A065982

/-- `A194460(n+1)+A002457(n)` -/
def P15746140793791197657.Spec : Prop :=
  ∀ n, P15746140793791197657.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P16006294191611192247

`A031970(n)+A024482(n+2)`
-/

namespace A065982.P16006294191611192247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031970 n + A024482 (n + 2)

end

end A065982.P16006294191611192247

namespace A065982

/-- `A031970(n)+A024482(n+2)` -/
def P16006294191611192247.Spec : Prop :=
  ∀ n, P16006294191611192247.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P5702010524616446540

`A296771(n+1)-A001700(n)`
-/

namespace A065982.P5702010524616446540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296771 (n + 1) - A001700 n

end

end A065982.P5702010524616446540

namespace A065982

/-- `A296771(n+1)-A001700(n)` -/
def P5702010524616446540.Spec : Prop :=
  ∀ n, P5702010524616446540.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P9991322349040935

`A037965(n+2)-A004171(n)`
-/

namespace A065982.P9991322349040935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 (n + 2) - A004171 n

end

end A065982.P9991322349040935

namespace A065982

/-- `A037965(n+2)-A004171(n)` -/
def P9991322349040935.Spec : Prop :=
  ∀ n, P9991322349040935.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P3549400319860698469

`2*(A068552(n)+A051960(n))`
-/

namespace A065982.P3549400319860698469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068552 n + A051960 n)

end

end A065982.P3549400319860698469

namespace A065982

/-- `2*(A068552(n)+A051960(n))` -/
def P3549400319860698469.Spec : Prop :=
  ∀ n, P3549400319860698469.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P13717143980827734266

`2*(A172060(n)+A001700(n))`
-/

namespace A065982.P13717143980827734266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A172060 n + A001700 n)

end

end A065982.P13717143980827734266

namespace A065982

/-- `2*(A172060(n)+A001700(n))` -/
def P13717143980827734266.Spec : Prop :=
  ∀ n, P13717143980827734266.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P5774609710410644125

`2*(A002457(n)-A008549(n))`
-/

namespace A065982.P5774609710410644125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002457 n - A008549 n)

end

end A065982.P5774609710410644125

namespace A065982

/-- `2*(A002457(n)-A008549(n))` -/
def P5774609710410644125.Spec : Prop :=
  ∀ n, P5774609710410644125.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P10326976245615981533

`record[2*(A056040(n)-A294175(n))]`
-/

namespace A065982.P10326976245615981533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056040 n - A294175 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065982.P10326976245615981533

namespace A065982

/-- `record[2*(A056040(n)-A294175(n))]` -/
def P10326976245615981533.Spec : Prop :=
  ∀ n, P10326976245615981533.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P6854217173466104709

`A088218(n+1)+A000531(n+1)`
-/

namespace A065982.P6854217173466104709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A000531 (n + 1)

end

end A065982.P6854217173466104709

namespace A065982

/-- `A088218(n+1)+A000531(n+1)` -/
def P6854217173466104709.Spec : Prop :=
  ∀ n, P6854217173466104709.a n = A065982 (n + 1)

end A065982

/-! ## A065982.P16530930045054236828

`A037965(n+2)-A081294(n+1)`
-/

namespace A065982.P16530930045054236828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 (n + 2) - A081294 (n + 1)

end

end A065982.P16530930045054236828

namespace A065982

/-- `A037965(n+2)-A081294(n+1)` -/
def P16530930045054236828.Spec : Prop :=
  ∀ n, P16530930045054236828.a n = A065982 (n + 1)

end A065982

/-!
# A065983: Palindromes whose digit sum is 4.

The programs for A065983, there is no canonical definition to state claims against.
-/

/-! ## A065983.P17711900218051744231

`∩[A052218(n+1), A118596(n+1)]`
-/

namespace A065983.P17711900218051744231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065983.P17711900218051744231

/-! ## A065983.P10597357286696022318

`∩[A052218(n+1), A083160(n+1)]`
-/

namespace A065983.P10597357286696022318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065983.P10597357286696022318

/-! ## A065983.P1905123143402398066

`∩[A052218(n+1), A117056(n+1)]`
-/

namespace A065983.P1905123143402398066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065983.P1905123143402398066

/-! ## A065983.P4316066147121921445

`∩[A052218(n+1), A356648(n+1)]`
-/

namespace A065983.P4316066147121921445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065983.P4316066147121921445

/-! ## A065983.P16371996393394346500

`∩[A052218(n+1), A118597(n+1)]`
-/

namespace A065983.P16371996393394346500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065983.P16371996393394346500

/-!
# A065985: Numbers k such that d(k) / 2 is prime, where d(k) = number of divisors of k.

The programs for A065985, the canonical program `A065985.P16176326921055316665` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065985 has offset 1).

The definition of A065985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065985.P16176326921055316665

`eq[2, A052126(A000005(n+1))]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A065985

/-- `eq[2, A052126(A000005(n+1))]+1` -/
def P16176326921055316665.Spec : Prop :=
  ∀ n, (P16176326921055316665.a n : ℤ) = A065985 (n + 1)

theorem P16176326921055316665.correct : P16176326921055316665.Spec := by
  intro n
  simp only [A065985, Nat.add_sub_cancel]

end A065985

/-! ## A065985.P17989053720255217311

`eq[2, A193347(n+1)]+1`
-/

namespace A065985.P17989053720255217311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065985.P17989053720255217311

namespace A065985

/-- `eq[2, A193347(n+1)]+1` -/
def P17989053720255217311.Spec : Prop :=
  ∀ n, (P17989053720255217311.a n : ℤ) = A065985 (n + 1)

end A065985

/-! ## A065985.P12505999454495676128

`eq[1, A100802(A032741(n))]`
-/

namespace A065985.P12505999454495676128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065985.P12505999454495676128

namespace A065985

/-- `eq[1, A100802(A032741(n))]` -/
def P12505999454495676128.Spec : Prop :=
  ∀ n, (P12505999454495676128.a n : ℤ) = A065985 (n + 1)

end A065985

/-! ## A065985.P9303969014878997673

`eq[2, A193347(A000038(n)+n)]`
-/

namespace A065985.P9303969014878997673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193347 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065985.P9303969014878997673

namespace A065985

/-- `eq[2, A193347(A000038(n)+n)]` -/
def P9303969014878997673.Spec : Prop :=
  ∀ n, (P9303969014878997673.a n : ℤ) = A065985 (n + 1)

end A065985

/-! ## A065985.P10633397947581629432

`eq[2, A319694(A114003(n+1)+1)]+1`
-/

namespace A065985.P10633397947581629432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319694 (A114003 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065985.P10633397947581629432

namespace A065985

/-- `eq[2, A319694(A114003(n+1)+1)]+1` -/
def P10633397947581629432.Spec : Prop :=
  ∀ n, (P10633397947581629432.a n : ℤ) = A065985 (n + 1)

end A065985

/-! ## A065985.P13550914103247049256

`eq[5, A323436(A145154(n))]`
-/

namespace A065985.P13550914103247049256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065985.P13550914103247049256

namespace A065985

/-- `eq[5, A323436(A145154(n))]` -/
def P13550914103247049256.Spec : Prop :=
  ∀ n, (P13550914103247049256.a n : ℤ) = A065985 (n + 1)

end A065985

/-! ## A065985.P15177888245510269467

`∩[A166546(n+1), A331201(n+1)]`
-/

namespace A065985.P15177888245510269467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065985.P15177888245510269467

namespace A065985

/-- `∩[A166546(n+1), A331201(n+1)]` -/
def P15177888245510269467.Spec : Prop :=
  ∀ n, (P15177888245510269467.a n : ℤ) = A065985 (n + 1)

end A065985

/-!
# A065988: a(n) is the largest prime p < n such that n mod p is a perfect square; a(n) = 0 if no such prime exists.

The programs for A065988, there is no canonical definition to state claims against.
-/

/-! ## A065988.P12777196801257714286

`A006530(A226055(n))%A215871(Δ[n²])`
-/

namespace A065988.P12777196801257714286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A226055 n).toNat) (A215871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A065988.P12777196801257714286

/-! ## A065988.P6149751369669504416

`A006530(A230284(n+1))-A230279(A230292(n+1))`
-/

namespace A065988.P6149751369669504416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A230284 (n + 1)).toNat - A230279 (A230292 (n + 1)).toNat

end

end A065988.P6149751369669504416

/-!
# A065989: Numbers k such that the first k ternary digits of Pi expressed in decimal forms a prime.

The programs for A065989, there is no canonical definition to state claims against.
-/

/-! ## A065989.P6510134047050869831

`A120133(A353545(n+1))-A103221(n)`
-/

namespace A065989.P6510134047050869831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120133 (A353545 (n + 1)).toNat - A103221 n

end

end A065989.P6510134047050869831

/-!
# A065990: Numbers k such that the first k base-5 digits of Pi expressed in decimal forms a prime.

The programs for A065990, there is no canonical definition to state claims against.
-/

/-! ## A065990.P6054276529517689586

`A232497(3*n)%A232183(3*n+4)`
-/

namespace A065990.P6054276529517689586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232497 (3 * n)) (A232183 (3 * n + 4))

end

end A065990.P6054276529517689586

/-!
# A065992: Numbers k such that the sum of the nonsquare numbers from 1 to k is a square.

The programs for A065992, there is no canonical definition to state claims against.
-/

/-! ## A065992.P18272036806237150482

`A111786(2*(n+2))+A030307(A024780(2*(n+2)))`
-/

namespace A065992.P18272036806237150482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111786 (2 * (n + 2)) + A030307 (A024780 (2 * (n + 2))).toNat

end

end A065992.P18272036806237150482

/-!
# A065994: a(n) = prime(prime(n) - n).

The programs for A065994, the canonical program `A065994.P11249294252579639875` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065994 has offset 1).

The definition of A065994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+1)-(n+1))` (program `A065994.P11249294252579639875`, by `A065994.P11249294252579639875.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065994.P17973856597640154254

`A000040(A014689(n+1))`
-/

namespace A065994.P17973856597640154254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014689 (n + 1)).toNat

end

end A065994.P17973856597640154254

namespace A065994

/-- `A000040(A014689(n+1))` -/
def P17973856597640154254.Spec : Prop :=
  ∀ n, P17973856597640154254.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P11249294252579639875

`A000040(A000040(n+1)-(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065994

/-- `A000040(A000040(n+1)-(n+1))` -/
def P11249294252579639875.Spec : Prop :=
  ∀ n, P11249294252579639875.a n = A065994 (n + 1)

theorem P11249294252579639875.correct : P11249294252579639875.Spec := by
  intro n
  simp only [A065994, Nat.add_sub_cancel]

end A065994

/-! ## A065994.P12697372154697164718

`A008578(A014692(n+1))`
-/

namespace A065994.P12697372154697164718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014692 (n + 1)).toNat

end

end A065994.P12697372154697164718

namespace A065994

/-- `A008578(A014692(n+1))` -/
def P12697372154697164718.Spec : Prop :=
  ∀ n, P12697372154697164718.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P10147699599069546005

`A008578(Δ[A007504(n)]-n)`
-/

namespace A065994.P10147699599069546005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A065994.P10147699599069546005

namespace A065994

/-- `A008578(Δ[A007504(n)]-n)` -/
def P10147699599069546005.Spec : Prop :=
  ∀ n, P10147699599069546005.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P6803892340083700657

`A182986(Δ[A007504(n)]-n)`
-/

namespace A065994.P6803892340083700657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A065994.P6803892340083700657

namespace A065994

/-- `A182986(Δ[A007504(n)]-n)` -/
def P6803892340083700657.Spec : Prop :=
  ∀ n, P6803892340083700657.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P10566256256093865475

`A000040(record[A037225(n)]-n)`
-/

namespace A065994.P10566256256093865475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A065994.P10566256256093865475

namespace A065994

/-- `A000040(record[A037225(n)]-n)` -/
def P10566256256093865475.Spec : Prop :=
  ∀ n, P10566256256093865475.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P8788181344509115344

`A008578(record[A162753(n)]-n)`
-/

namespace A065994.P8788181344509115344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A065994.P8788181344509115344

namespace A065994

/-- `A008578(record[A162753(n)]-n)` -/
def P8788181344509115344.Spec : Prop :=
  ∀ n, P8788181344509115344.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P1614524204686932781

`A008578(p?[A007989(n)]-n)`
-/

namespace A065994.P1614524204686932781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A065994.P1614524204686932781

namespace A065994

/-- `A008578(p?[A007989(n)]-n)` -/
def P1614524204686932781.Spec : Prop :=
  ∀ n, P1614524204686932781.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P12235043559341849739

`A008578(p?[A259153(n)]-n)`
-/

namespace A065994.P12235043559341849739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A065994.P12235043559341849739

namespace A065994

/-- `A008578(p?[A259153(n)]-n)` -/
def P12235043559341849739.Spec : Prop :=
  ∀ n, P12235043559341849739.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P9855478586013665179

`A008578(p?[A344180(n)]-n)`
-/

namespace A065994.P9855478586013665179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A065994.P9855478586013665179

namespace A065994

/-- `A008578(p?[A344180(n)]-n)` -/
def P9855478586013665179.Spec : Prop :=
  ∀ n, P9855478586013665179.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P11345380893691024167

`A008578(A014689(n+1)+1)`
-/

namespace A065994.P11345380893691024167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014689 (n + 1) + 1).toNat

end

end A065994.P11345380893691024167

namespace A065994

/-- `A008578(A014689(n+1)+1)` -/
def P11345380893691024167.Spec : Prop :=
  ∀ n, P11345380893691024167.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P9237393179394212170

`A000040(A065890(n+1)+1)`
-/

namespace A065994.P9237393179394212170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065890 (n + 1) + 1).toNat

end

end A065994.P9237393179394212170

namespace A065994

/-- `A000040(A065890(n+1)+1)` -/
def P9237393179394212170.Spec : Prop :=
  ∀ n, P9237393179394212170.a n = A065994 (n + 1)

theorem P9237393179394212170.correct : P9237393179394212170.Spec := by
  intro n
  simp only [A065994, Nat.add_sub_cancel, A065994.P9237393179394212170.a, A065994.P11249294252579639875.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065890, A065890.P15936493256530540462.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065994

/-! ## A065994.P2003249270510725945

`A182986(A014689(n+1)+1)`
-/

namespace A065994.P2003249270510725945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A014689 (n + 1) + 1).toNat

end

end A065994.P2003249270510725945

namespace A065994

/-- `A182986(A014689(n+1)+1)` -/
def P2003249270510725945.Spec : Prop :=
  ∀ n, P2003249270510725945.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P18158938754494315404

`A000040(A014692(n+1)-1)`
-/

namespace A065994.P18158938754494315404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014692 (n + 1) - 1).toNat

end

end A065994.P18158938754494315404

namespace A065994

/-- `A000040(A014692(n+1)-1)` -/
def P18158938754494315404.Spec : Prop :=
  ∀ n, P18158938754494315404.a n = A065994 (n + 1)

theorem P18158938754494315404.correct : P18158938754494315404.Spec := by
  intro n
  simp only [A065994, Nat.add_sub_cancel, A065994.P18158938754494315404.a, A065994.P11249294252579639875.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065994

/-! ## A065994.P3393871923090845043

`A008578(A065890(n+1)+2)`
-/

namespace A065994.P3393871923090845043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A065890 (n + 1) + 2).toNat

end

end A065994.P3393871923090845043

namespace A065994

/-- `A008578(A065890(n+1)+2)` -/
def P3393871923090845043.Spec : Prop :=
  ∀ n, P3393871923090845043.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P118712425961138939

`A000040(A162177(n+2)+1)`
-/

namespace A065994.P118712425961138939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A162177 (n + 2) + 1).toNat

end

end A065994.P118712425961138939

namespace A065994

/-- `A000040(A162177(n+2)+1)` -/
def P118712425961138939.Spec : Prop :=
  ∀ n, P118712425961138939.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P9725456918879692454

`A158611(A014689(n+1)+2)`
-/

namespace A065994.P9725456918879692454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A014689 (n + 1) + 2).toNat

end

end A065994.P9725456918879692454

namespace A065994

/-- `A158611(A014689(n+1)+2)` -/
def P9725456918879692454.Spec : Prop :=
  ∀ n, P9725456918879692454.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P6302271513317342685

`A008578(A162177(n+2)+2)`
-/

namespace A065994.P6302271513317342685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A162177 (n + 2) + 2).toNat

end

end A065994.P6302271513317342685

namespace A065994

/-- `A008578(A162177(n+2)+2)` -/
def P6302271513317342685.Spec : Prop :=
  ∀ n, P6302271513317342685.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P7519246771575009610

`A182986(A162177(n+2)+2)`
-/

namespace A065994.P7519246771575009610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A162177 (n + 2) + 2).toNat

end

end A065994.P7519246771575009610

namespace A065994

/-- `A182986(A162177(n+2)+2)` -/
def P7519246771575009610.Spec : Prop :=
  ∀ n, P7519246771575009610.a n = A065994 (n + 1)

end A065994

/-! ## A065994.P7928156874508305505

`A000040(A131733(n+1)+n)`
-/

namespace A065994.P7928156874508305505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A131733 (n + 1) + (n : ℤ)).toNat

end

end A065994.P7928156874508305505

namespace A065994

/-- `A000040(A131733(n+1)+n)` -/
def P7928156874508305505.Spec : Prop :=
  ∀ n, P7928156874508305505.a n = A065994 (n + 1)

theorem P7928156874508305505.correct : P7928156874508305505.Spec := by
  intro n
  simp only [A065994, Nat.add_sub_cancel, A065994.P7928156874508305505.a, A065994.P11249294252579639875.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065994

/-!
# A065995: a(n) = prime(prime(n) + n).

The programs for A065995, the canonical program `A065995.P6615109094300225512` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065995 has offset 1).

The definition of A065995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+1)+n+1)` (program `A065995.P6615109094300225512`, by `A065995.P6615109094300225512.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065995.P2998673477376296587

`A000040(A014688(n+1))`
-/

namespace A065995.P2998673477376296587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014688 (n + 1)).toNat

end

end A065995.P2998673477376296587

namespace A065995

/-- `A000040(A014688(n+1))` -/
def P2998673477376296587.Spec : Prop :=
  ∀ n, P2998673477376296587.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P7405372002281248298

`A000040(n+1+A000040(n+1))`
-/

namespace A065995.P7405372002281248298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A000040 (n + 1)).toNat

end

end A065995.P7405372002281248298

namespace A065995

/-- `A000040(n+1+A000040(n+1))` -/
def P7405372002281248298.Spec : Prop :=
  ∀ n, P7405372002281248298.a n = A065995 (n + 1)

theorem P7405372002281248298.correct : P7405372002281248298.Spec := by
  intro n
  simp only [A065995, Nat.add_sub_cancel, A065995.P7405372002281248298.a, A065995.P6615109094300225512.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065995

/-! ## A065995.P6615109094300225512

`A000040(A000040(n+1)+n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065995

/-- `A000040(A000040(n+1)+n+1)` -/
def P6615109094300225512.Spec : Prop :=
  ∀ n, P6615109094300225512.a n = A065995 (n + 1)

theorem P6615109094300225512.correct : P6615109094300225512.Spec := by
  intro n
  simp only [A065995, Nat.add_sub_cancel]

end A065995

/-! ## A065995.P13042957443739203305

`A180470(n+1)+A008864(n+1)`
-/

namespace A065995.P13042957443739203305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180470 (n + 1) + A008864 (n + 1)

end

end A065995.P13042957443739203305

namespace A065995

/-- `A180470(n+1)+A008864(n+1)` -/
def P13042957443739203305.Spec : Prop :=
  ∀ n, P13042957443739203305.a n = A065995 (n + 1)

theorem P13042957443739203305.correct : P13042957443739203305.Spec := by
  intro n
  simp only [A065995, Nat.add_sub_cancel, A065995.P13042957443739203305.a, A065995.P6615109094300225512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A180470, A180470.P2135284540157233231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065995

/-! ## A065995.P12690195417899122502

`A001749(A008864(n+1)+n)/4`
-/

namespace A065995.P12690195417899122502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A008864 (n + 1) + (n : ℤ)).toNat : ℚ) / 4

end

end A065995.P12690195417899122502

namespace A065995

/-- `A001749(A008864(n+1)+n)/4` -/
def P12690195417899122502.Spec : Prop :=
  ∀ n, P12690195417899122502.a n = (A065995 (n + 1) : ℚ)

theorem P12690195417899122502.correct : P12690195417899122502.Spec := by
  intro n
  simp only [A065995, Nat.add_sub_cancel, A065995.P12690195417899122502.a, A065995.P6615109094300225512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065995

/-! ## A065995.P2674072445589777710

`A084792(A000040(n+1))`
-/

namespace A065995.P2674072445589777710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (A000040 (n + 1)).toNat

end

end A065995.P2674072445589777710

namespace A065995

/-- `A084792(A000040(n+1))` -/
def P2674072445589777710.Spec : Prop :=
  ∀ n, P2674072445589777710.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P7386171497222921694

`A084792(A008578(n+2))`
-/

namespace A065995.P7386171497222921694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (A008578 (n + 2)).toNat

end

end A065995.P7386171497222921694

namespace A065995

/-- `A084792(A008578(n+2))` -/
def P7386171497222921694.Spec : Prop :=
  ∀ n, P7386171497222921694.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P3630367433518069290

`A084792(A182986(n+2))`
-/

namespace A065995.P3630367433518069290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (A182986 (n + 2)).toNat

end

end A065995.P3630367433518069290

namespace A065995

/-- `A084792(A182986(n+2))` -/
def P3630367433518069290.Spec : Prop :=
  ∀ n, P3630367433518069290.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P420222595306207551

`A045344(A095116(n+1))`
-/

namespace A065995.P420222595306207551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A095116 (n + 1)).toNat

end

end A065995.P420222595306207551

namespace A065995

/-- `A045344(A095116(n+1))` -/
def P420222595306207551.Spec : Prop :=
  ∀ n, P420222595306207551.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P15895456785935331960

`A065091(∑[A230846(n+1)])`
-/

namespace A065995.P15895456785935331960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065995.P15895456785935331960

namespace A065995

/-- `A065091(∑[A230846(n+1)])` -/
def P15895456785935331960.Spec : Prop :=
  ∀ n, P15895456785935331960.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P13294534019775703784

`A045344(Δ[A007504(n)]+n)`
-/

namespace A065995.P13294534019775703784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A065995.P13294534019775703784

namespace A065995

/-- `A045344(Δ[A007504(n)]+n)` -/
def P13294534019775703784.Spec : Prop :=
  ∀ n, P13294534019775703784.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P4867584062195642556

`A065091(Δ[A007504(n)]+n)`
-/

namespace A065995.P4867584062195642556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A065995.P4867584062195642556

namespace A065995

/-- `A065091(Δ[A007504(n)]+n)` -/
def P4867584062195642556.Spec : Prop :=
  ∀ n, P4867584062195642556.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P11422288586410334197

`A065091(record[A051698(n)]+n)`
-/

namespace A065995.P11422288586410334197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A065995.P11422288586410334197

namespace A065995

/-- `A065091(record[A051698(n)]+n)` -/
def P11422288586410334197.Spec : Prop :=
  ∀ n, P11422288586410334197.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P1296312889601403235

`A065091(p?[A056847(n)]+n)`
-/

namespace A065995.P1296312889601403235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A065995.P1296312889601403235

namespace A065995

/-- `A065091(p?[A056847(n)]+n)` -/
def P1296312889601403235.Spec : Prop :=
  ∀ n, P1296312889601403235.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P15107702668398846809

`A045344(p?[A139693(n)]+n)`
-/

namespace A065995.P15107702668398846809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A065995.P15107702668398846809

namespace A065995

/-- `A045344(p?[A139693(n)]+n)` -/
def P15107702668398846809.Spec : Prop :=
  ∀ n, P15107702668398846809.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P7233370030283917082

`A065091(A014688(n+1)-1)`
-/

namespace A065995.P7233370030283917082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A014688 (n + 1) - 1).toNat

end

end A065995.P7233370030283917082

namespace A065995

/-- `A065091(A014688(n+1)-1)` -/
def P7233370030283917082.Spec : Prop :=
  ∀ n, P7233370030283917082.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P15038373010421532619

`A065091(A090178(n+2)-2)`
-/

namespace A065995.P15038373010421532619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A090178 (n + 2) - 2).toNat

end

end A065995.P15038373010421532619

namespace A065995

/-- `A065091(A090178(n+2)-2)` -/
def P15038373010421532619.Spec : Prop :=
  ∀ n, P15038373010421532619.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P6991225269756138429

`A045344(A000040(n+1)+n)`
-/

namespace A065995.P6991225269756138429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A000040 (n + 1) + (n : ℤ)).toNat

end

end A065995.P6991225269756138429

namespace A065995

/-- `A045344(A000040(n+1)+n)` -/
def P6991225269756138429.Spec : Prop :=
  ∀ n, P6991225269756138429.a n = A065995 (n + 1)

end A065995

/-! ## A065995.P2728215127886760976

`A065091(A000040(n+1)+n)`
-/

namespace A065995.P2728215127886760976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000040 (n + 1) + (n : ℤ)).toNat

end

end A065995.P2728215127886760976

namespace A065995

/-- `A065091(A000040(n+1)+n)` -/
def P2728215127886760976.Spec : Prop :=
  ∀ n, P2728215127886760976.a n = A065995 (n + 1)

end A065995

/-!
# A065996: a(n) = prime(prime(n) mod n).

The programs for A065996, the canonical program `A065996.P988422223089049167` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065996 has offset 2).

The definition of A065996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+2)%(n+2))` (program `A065996.P988422223089049167`, by `A065996.P988422223089049167.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065996.P988422223089049167

`A000040(A000040(n+2)%(n+2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065996

/-- `A000040(A000040(n+2)%(n+2))` -/
def P988422223089049167.Spec : Prop :=
  ∀ n, P988422223089049167.a n = A065996 (n + 2)

theorem P988422223089049167.correct : P988422223089049167.Spec := by
  intro n
  simp only [A065996, Nat.add_sub_cancel]

end A065996

/-! ## A065996.P18421531416531420560

`A000040(A004648(n+2))`
-/

namespace A065996.P18421531416531420560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004648 (n + 2)).toNat

end

end A065996.P18421531416531420560

namespace A065996

/-- `A000040(A004648(n+2))` -/
def P18421531416531420560.Spec : Prop :=
  ∀ n, P18421531416531420560.a n = A065996 (n + 2)

theorem P18421531416531420560.correct : P18421531416531420560.Spec := by
  intro n
  simp only [A065996, Nat.add_sub_cancel, A065996.P18421531416531420560.a, A065996.P988422223089049167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004648, A004648.P171968973179240133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065996

/-! ## A065996.P1758390164041700836

`A000040(Δ[A099850(n+1)])`
-/

namespace A065996.P1758390164041700836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A065996.P1758390164041700836

namespace A065996

/-- `A000040(Δ[A099850(n+1)])` -/
def P1758390164041700836.Spec : Prop :=
  ∀ n, P1758390164041700836.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P17337219099645282905

`A008578(A004648(n+2)+1)`
-/

namespace A065996.P17337219099645282905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004648 (n + 2) + 1).toNat

end

end A065996.P17337219099645282905

namespace A065996

/-- `A008578(A004648(n+2)+1)` -/
def P17337219099645282905.Spec : Prop :=
  ∀ n, P17337219099645282905.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P9646085873030625119

`A000040(A087611(n+2)+1)`
-/

namespace A065996.P9646085873030625119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A087611 (n + 2) + 1).toNat

end

end A065996.P9646085873030625119

namespace A065996

/-- `A000040(A087611(n+2)+1)` -/
def P9646085873030625119.Spec : Prop :=
  ∀ n, P9646085873030625119.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P4399573072232351493

`A182986(A004648(n+2)+1)`
-/

namespace A065996.P4399573072232351493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A004648 (n + 2) + 1).toNat

end

end A065996.P4399573072232351493

namespace A065996

/-- `A182986(A004648(n+2)+1)` -/
def P4399573072232351493.Spec : Prop :=
  ∀ n, P4399573072232351493.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P10238846236913747674

`A000040(n+2-A068901(n+2))`
-/

namespace A065996.P10238846236913747674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 2 : ℤ) - A068901 (n + 2)).toNat

end

end A065996.P10238846236913747674

namespace A065996

/-- `A000040(n+2-A068901(n+2))` -/
def P10238846236913747674.Spec : Prop :=
  ∀ n, P10238846236913747674.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P2270646414703562861

`A000040(A000040(n+2)-A076079(n+2))`
-/

namespace A065996.P2270646414703562861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2) - A076079 (n + 2)).toNat

end

end A065996.P2270646414703562861

namespace A065996

/-- `A000040(A000040(n+2)-A076079(n+2))` -/
def P2270646414703562861.Spec : Prop :=
  ∀ n, P2270646414703562861.a n = A065996 (n + 2)

theorem P2270646414703562861.correct : P2270646414703562861.Spec := by
  intro n
  simp only [A065996, Nat.add_sub_cancel, A065996.P2270646414703562861.a, A065996.P988422223089049167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A076079, A076079.P11386046758032469833.a, A004648, A004648.P171968973179240133.a, A006005, A006005.P1228063357782503489.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065996

/-! ## A065996.P10474953267481736454

`A006093(record[A014963(n+3)]%(n+2))+1`
-/

namespace A065996.P10474953267481736454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 2 : ℤ)).toNat + 1

end

end A065996.P10474953267481736454

namespace A065996

/-- `A006093(record[A014963(n+3)]%(n+2))+1` -/
def P10474953267481736454.Spec : Prop :=
  ∀ n, P10474953267481736454.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P8147938592354631135

`A000040(A065134(A000040(n+2)))`
-/

namespace A065996.P8147938592354631135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065134 (A000040 (n + 2)).toNat).toNat

end

end A065996.P8147938592354631135

namespace A065996

/-- `A000040(A065134(A000040(n+2)))` -/
def P8147938592354631135.Spec : Prop :=
  ∀ n, P8147938592354631135.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P5096993375077233413

`A000040(A073464(A000040(n+2))+1)`
-/

namespace A065996.P5096993375077233413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073464 (A000040 (n + 2)).toNat + 1).toNat

end

end A065996.P5096993375077233413

namespace A065996

/-- `A000040(A073464(A000040(n+2))+1)` -/
def P5096993375077233413.Spec : Prop :=
  ∀ n, P5096993375077233413.a n = A065996 (n + 2)

end A065996

/-! ## A065996.P12852220860137955712

`A000040(A101257(A033286(n+2)))`
-/

namespace A065996.P12852220860137955712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A101257 (A033286 (n + 2)).toNat).toNat

end

end A065996.P12852220860137955712

namespace A065996

/-- `A000040(A101257(A033286(n+2)))` -/
def P12852220860137955712.Spec : Prop :=
  ∀ n, P12852220860137955712.a n = A065996 (n + 2)

end A065996

/-!
# A065997: Numbers n such that sigma(n) / n is prime.

The programs for A065997, there is no canonical definition to state claims against.
-/

/-! ## A065997.P18438458825222099568

`∩[A073349(n+1), A117349(n+1)]`
-/

namespace A065997.P18438458825222099568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065997.P18438458825222099568

/-! ## A065997.P13553219548948921446

`∩[A007691(n+1), A342924(n+1)]`
-/

namespace A065997.P13553219548948921446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065997.P13553219548948921446

/-! ## A065997.P6938423960781916219

`∩[A055715(n+1), A342924(n+1)]`
-/

namespace A065997.P6938423960781916219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065997.P6938423960781916219

/-! ## A065997.P14403408356610918687

`∩[A073349(n+1), A334410(n+1)]`
-/

namespace A065997.P14403408356610918687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065997.P14403408356610918687

/-! ## A065997.P16221142789015364428

`∩[A071707(n+1), A342924(n+1)]`
-/

namespace A065997.P16221142789015364428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065997.P16221142789015364428

/-!
# A065998: Concatenate n and number of divisors of n.

The programs for A065998, the canonical program `A065998.P3373505576399175454` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065998 has offset 1).

The definition of A065998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065998.P3373505576399175454

`A084854(∏{e}[n+1, #+1]+∑[n])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065998

/-- `A084854(∏{e}[n+1, #+1]+∑[n])` -/
def P3373505576399175454.Spec : Prop :=
  ∀ n, P3373505576399175454.a n = A065998 (n + 1)

theorem P3373505576399175454.correct : P3373505576399175454.Spec := by
  intro n
  simp only [A065998, Nat.add_sub_cancel]

end A065998

/-! ## A065998.P8566418676130731038

`A084854(Δ[A006218(n)]+∑[n])`
-/

namespace A065998.P8566418676130731038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A065998.P8566418676130731038

namespace A065998

/-- `A084854(Δ[A006218(n)]+∑[n])` -/
def P8566418676130731038.Spec : Prop :=
  ∀ n, P8566418676130731038.a n = A065998 (n + 1)

end A065998

/-! ## A065998.P5187221859697140167

`A084854(A000005(n+1)+∑[n])`
-/

namespace A065998.P5187221859697140167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (A000005 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A065998.P5187221859697140167

namespace A065998

/-- `A084854(A000005(n+1)+∑[n])` -/
def P5187221859697140167.Spec : Prop :=
  ∀ n, P5187221859697140167.a n = A065998 (n + 1)

end A065998

/-! ## A065998.P7599899480890821726

`A084854(A000217(n)+∏{e}[n+1, #+1])`
-/

namespace A065998.P7599899480890821726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (A000217 n + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A065998.P7599899480890821726

namespace A065998

/-- `A084854(A000217(n)+∏{e}[n+1, #+1])` -/
def P7599899480890821726.Spec : Prop :=
  ∀ n, P7599899480890821726.a n = A065998 (n + 1)

end A065998

/-! ## A065998.P4982702292525955572

`A084854(A000217(n)+Δ[A006218(n)])`
-/

namespace A065998.P4982702292525955572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (A000217 n + (f1 (n + 1) - f1 n)).toNat

end

end A065998.P4982702292525955572

namespace A065998

/-- `A084854(A000217(n)+Δ[A006218(n)])` -/
def P4982702292525955572.Spec : Prop :=
  ∀ n, P4982702292525955572.a n = A065998 (n + 1)

end A065998

/-! ## A065998.P11412016149299374667

`A084854(A000217(n)+A000005(n+1))`
-/

namespace A065998.P11412016149299374667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (A000217 n + A000005 (n + 1)).toNat

end

end A065998.P11412016149299374667

namespace A065998

/-- `A084854(A000217(n)+A000005(n+1))` -/
def P11412016149299374667.Spec : Prop :=
  ∀ n, P11412016149299374667.a n = A065998 (n + 1)

end A065998

/-! ## A065998.P9881943044269030649

`A084854(A133263(n)+A070824(n+1))`
-/

namespace A065998.P9881943044269030649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (A133263 n + A070824 (n + 1)).toNat

end

end A065998.P9881943044269030649

namespace A065998

/-- `A084854(A133263(n)+A070824(n+1))` -/
def P9881943044269030649.Spec : Prop :=
  ∀ n, P9881943044269030649.a n = A065998 (n + 1)

end A065998

/-! ## A065998.P17001421012072548687

`A084854(A332712((n+1)*(n+1))+∑[n])`
-/

namespace A065998.P17001421012072548687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (A332712 ((n + 1) * (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A065998.P17001421012072548687

namespace A065998

/-- `A084854(A332712((n+1)*(n+1))+∑[n])` -/
def P17001421012072548687.Spec : Prop :=
  ∀ n, P17001421012072548687.a n = A065998 (n + 1)

end A065998

/-!
# A065999: Sum of digits of 9^n.

The programs for A065999, the canonical program `A065999.P18140349948238874302` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065999 has offset 0).

The definition of A065999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065999.P18140349948238874302

`A004166(2*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065999

/-- `A004166(2*n)` -/
def P18140349948238874302.Spec : Prop :=
  ∀ n, P18140349948238874302.a n = A065999 n

theorem P18140349948238874302.correct : P18140349948238874302.Spec := by
  intro n
  simp only [A065999]

end A065999

/-! ## A065999.P6908454844759274757

`A004166(n+n)%A239935(n+1)²`
-/

namespace A065999.P6908454844759274757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004166 (n + n)) (A239935 (n + 1) ^ 2)

end

end A065999.P6908454844759274757

namespace A065999

/-- `A004166(n+n)%A239935(n+1)²` -/
def P6908454844759274757.Spec : Prop :=
  ∀ n, P6908454844759274757.a n = A065999 n

end A065999

/-! ## A065999.P3534718790792427900

`A004166(A005843(n))%A017462(n)`
-/

namespace A065999.P3534718790792427900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004166 (A005843 n).toNat) (A017462 n)

end

end A065999.P3534718790792427900

namespace A065999

/-- `A004166(A005843(n))%A017462(n)` -/
def P3534718790792427900.Spec : Prop :=
  ∀ n, P3534718790792427900.a n = A065999 n

end A065999

/-! ## A065999.P6611990445265060885

`A019590(n+4)+A004166(A005843(n))`
-/

namespace A065999.P6611990445265060885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 4) + A004166 (A005843 n).toNat

end

end A065999.P6611990445265060885

namespace A065999

/-- `A019590(n+4)+A004166(A005843(n))` -/
def P6611990445265060885.Spec : Prop :=
  ∀ n, P6611990445265060885.a n = A065999 n

end A065999

/-! ## A065999.P14015309541404358766

`A049986(A020483(n))+A004166(n+n)`
-/

namespace A065999.P14015309541404358766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (A020483 n).toNat + A004166 (n + n)

end

end A065999.P14015309541404358766

namespace A065999

/-- `A049986(A020483(n))+A004166(n+n)` -/
def P14015309541404358766.Spec : Prop :=
  ∀ n, P14015309541404358766.a n = A065999 n

end A065999

/-! ## A065999.P17301388974446843812

`or(A008683(A066002(n)), A004166(n+n))`
-/

namespace A065999.P17301388974446843812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A066002 n).toNat) (A004166 (n + n))

end

end A065999.P17301388974446843812

namespace A065999

/-- `or(A008683(A066002(n)), A004166(n+n))` -/
def P17301388974446843812.Spec : Prop :=
  ∀ n, P17301388974446843812.a n = A065999 n

end A065999

/-! ## A065999.P432518153546366870

`gcd(A008683(A004166(n+1)), A004166(n+n))`
-/

namespace A065999.P432518153546366870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A004166 (n + 1)).toNat) (A004166 (n + n))

end

end A065999.P432518153546366870

namespace A065999

/-- `gcd(A008683(A004166(n+1)), A004166(n+n))` -/
def P432518153546366870.Spec : Prop :=
  ∀ n, (P432518153546366870.a n : ℤ) = A065999 n

end A065999

/-! ## A065999.P12973614353575156093

`∑{digits}[A321540(2*n), #]`
-/

namespace A065999.P12973614353575156093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321540 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065999.P12973614353575156093

namespace A065999

/-- `∑{digits}[A321540(2*n), #]` -/
def P12973614353575156093.Spec : Prop :=
  ∀ n, (P12973614353575156093.a n : ℤ) = A065999 n

end A065999

/-! ## A065999.P10695960659056602387

`∑{digits}[9^n, #]`
-/

namespace A065999.P10695960659056602387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A065999.P10695960659056602387

namespace A065999

/-- `∑{digits}[9^n, #]` -/
def P10695960659056602387.Spec : Prop :=
  ∀ n, (P10695960659056602387.a n : ℤ) = A065999 n

end A065999

/-! ## A065999.P16919697986088234932

`∑{digits}[A024023(2*n), #]+1`
-/

namespace A065999.P16919697986088234932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A065999.P16919697986088234932

namespace A065999

/-- `∑{digits}[A024023(2*n), #]+1` -/
def P16919697986088234932.Spec : Prop :=
  ∀ n, (P16919697986088234932.a n : ℤ) = A065999 n

end A065999

/-! ## A065999.P14900196675516799239

`∑{digits}[A001019(n), #]+char[A284020(3*n+4)]`
-/

namespace A065999.P14900196675516799239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A065999.P14900196675516799239

namespace A065999

/-- `∑{digits}[A001019(n), #]+char[A284020(3*n+4)]` -/
def P14900196675516799239.Spec : Prop :=
  ∀ n, (P14900196675516799239.a n : ℤ) = A065999 n

end A065999

