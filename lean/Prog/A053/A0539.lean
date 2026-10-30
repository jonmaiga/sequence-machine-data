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
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C023

/-!
# A053900: Numbers k such that k^2 contains only digits {1,4,8}.

The programs for A053900, there is no canonical definition to state claims against.
-/

/-! ## A053900.P4612371901320879768

`sqrt(A053901(n+1))`
-/

namespace A053900.P4612371901320879768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053901 (n + 1) : ℝ)

end

end A053900.P4612371901320879768

/-! ## A053900.P12518880316937325221

`A053901(-xor(n, -1))^(1/2)`
-/

namespace A053900.P12518880316937325221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053901 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053900.P12518880316937325221

/-! ## A053900.P16763542887913861099

`A053901(A000027(n+1))^(1/2)`
-/

namespace A053900.P16763542887913861099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053901 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053900.P16763542887913861099

/-! ## A053900.P7015098834004277755

`root(A053901(n+1), A020639(2*(n+1)))`
-/

namespace A053900.P7015098834004277755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053901 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A053900.P7015098834004277755

/-! ## A053900.P16339415458551329953

`A053901(n+1)^(1/A000005(A108183(n+1)))`
-/

namespace A053900.P16339415458551329953
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053901 (n + 1) : ℝ) ^ (1 / (A000005 (A108183 (n + 1)).toNat : ℚ) : ℝ)

end

end A053900.P16339415458551329953

/-!
# A053901: Squares composed of digits {1,4,8}.

The programs for A053901, there is no canonical definition to state claims against.
-/

/-! ## A053901.P12068172515289282884

`A053900(n+1)²`
-/

namespace A053901.P12068172515289282884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053900 (n + 1) ^ 2

end

end A053901.P12068172515289282884

/-! ## A053901.P7324749892915417062

`A053900(n+1)^(2%A000051(n))`
-/

namespace A053901.P7324749892915417062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053900 (n + 1) : ℚ) ^ (Int.tmod 2 (A000051 n) : ℤ)

end

end A053901.P7324749892915417062

/-! ## A053901.P14248401971044634372

`A053900(n+1)^A020639(A008458(n))`
-/

namespace A053901.P14248401971044634372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053900 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A053901.P14248401971044634372

/-! ## A053901.P2041174019708910944

`A053900(n+1)^A000005(A053845(n+1))`
-/

namespace A053901.P2041174019708910944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053900 (n + 1) : ℚ) ^ (A000005 (A053845 (n + 1)).toNat : ℤ)

end

end A053901.P2041174019708910944

/-! ## A053901.P16662538200640721990

`A053900(n+1)^A000040(A053878(n+2))`
-/

namespace A053901.P16662538200640721990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053900 (n + 1) : ℚ) ^ (A000040 (A053878 (n + 2)).toNat : ℤ)

end

end A053901.P16662538200640721990

/-!
# A053902: Numbers k such that k^2 contains only digits {1,5,6}.

The programs for A053902, there is no canonical definition to state claims against.
-/

/-! ## A053902.P13721061174860965356

`sqrt(A053903(n+1))`
-/

namespace A053902.P13721061174860965356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053903 (n + 1) : ℝ)

end

end A053902.P13721061174860965356

/-! ## A053902.P1202109834598617202

`root(A053903(n+1), A040000(n))`
-/

namespace A053902.P1202109834598617202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053903 (n + 1) : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A053902.P1202109834598617202

/-! ## A053902.P3539428371782319148

`root(A053903(n+1), 2%A017377(n))`
-/

namespace A053902.P3539428371782319148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053903 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017377 n) : ℝ))

end

end A053902.P3539428371782319148

/-! ## A053902.P13049624270158331221

`root(A053903(n+1), gcd(2, A040272(n)))`
-/

namespace A053902.P13049624270158331221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053903 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A040272 n) : ℝ))

end

end A053902.P13049624270158331221

/-! ## A053902.P12056879589414405919

`root(A053903(n+1), A092505(2*n+1))`
-/

namespace A053902.P12056879589414405919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053903 (n + 1) : ℝ) ^ (1 / (A092505 (2 * n + 1) : ℝ))

end

end A053902.P12056879589414405919

/-!
# A053903: Squares composed of digits {1,5,6}.

The programs for A053903, there is no canonical definition to state claims against.
-/

/-! ## A053903.P14167056487818527708

`A053902(n+1)²`
-/

namespace A053903.P14167056487818527708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053902 (n + 1) ^ 2

end

end A053903.P14167056487818527708

/-! ## A053903.P9985333073949996645

`A053902(n+1)^A020639(A034896(n))`
-/

namespace A053903.P9985333073949996645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053902 (n + 1) : ℚ) ^ (A020639 (A034896 n).toNat : ℤ)

end

end A053903.P9985333073949996645

/-! ## A053903.P13895292560446674668

`A053902(n+1)^A014963(A062383(n))`
-/

namespace A053903.P13895292560446674668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053902 (n + 1) : ℚ) ^ (A014963 (A062383 n).toNat : ℤ)

end

end A053903.P13895292560446674668

/-! ## A053903.P16187848233831275864

`A053902(n+1)*A053902(A000027(n+1))`
-/

namespace A053903.P16187848233831275864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053902 (n + 1) * A053902 (A000027 (n + 1)).toNat

end

end A053903.P16187848233831275864

/-! ## A053903.P9065313083742858878

`A053902(n+1)^A061142(A302493(n+1))`
-/

namespace A053903.P9065313083742858878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053902 (n + 1) : ℚ) ^ (A061142 (A302493 (n + 1)).toNat : ℤ)

end

end A053903.P9065313083742858878

/-!
# A053904: Numbers k such that k^2 contains only digits {1,5,8}.

The programs for A053904, there is no canonical definition to state claims against.
-/

/-! ## A053904.P15695489857948248405

`sqrt(A053905(n+1))`
-/

namespace A053904.P15695489857948248405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053905 (n + 1) : ℝ)

end

end A053904.P15695489857948248405

/-!
# A053905: Squares composed of digits {1,5,8}.

The programs for A053905, there is no canonical definition to state claims against.
-/

/-! ## A053905.P6854606775227816989

`A053904(n+1)²`
-/

namespace A053905.P6854606775227816989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053904 (n + 1) ^ 2

end

end A053905.P6854606775227816989

/-! ## A053905.P16453258599285391478

`A053904(n+1)^A140431(A053874(n+1))`
-/

namespace A053905.P16453258599285391478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053904 (n + 1) : ℚ) ^ (A140431 (A053874 (n + 1)).toNat : ℤ)

end

end A053905.P16453258599285391478

/-!
# A053906: Numbers k such that k^2 contains only digits {1,6,7}.

The programs for A053906, there is no canonical definition to state claims against.
-/

/-! ## A053906.P8438092312227503106

`sqrt(A053907(n+1))`
-/

namespace A053906.P8438092312227503106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053907 (n + 1) : ℝ)

end

end A053906.P8438092312227503106

/-! ## A053906.P18369871587874588851

`root(A053907(n+1), A040000(n))`
-/

namespace A053906.P18369871587874588851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053907 (n + 1) : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A053906.P18369871587874588851

/-! ## A053906.P16370273015329300576

`root(A053907(n+1), p?[A072491(n)])`
-/

namespace A053906.P16370273015329300576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053907 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053906.P16370273015329300576

/-! ## A053906.P4536601036545992921

`root(A053907(n+1), p?[A255647(n)])`
-/

namespace A053906.P4536601036545992921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053907 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053906.P4536601036545992921

/-! ## A053906.P13334132809663713305

`root(A053907(n+1), p?[A001221(n+1)])`
-/

namespace A053906.P13334132809663713305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053907 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053906.P13334132809663713305

/-!
# A053907: Squares composed of digits {1,6,7}.

The programs for A053907, there is no canonical definition to state claims against.
-/

/-! ## A053907.P1466934435080369300

`A053906(n+1)²`
-/

namespace A053907.P1466934435080369300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053906 (n + 1) ^ 2

end

end A053907.P1466934435080369300

/-! ## A053907.P4054314132289171829

`record[A053906(A263274(n))²]`
-/

namespace A053907.P4054314132289171829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053906 (A263274 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053907.P4054314132289171829

/-! ## A053907.P1966981763890000507

`A053906(n+1)^A040000(n)!`
-/

namespace A053907.P1966981763890000507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053906 (n + 1) ^ Nat.factorial (A040000 n).toNat

end

end A053907.P1966981763890000507

/-! ## A053907.P17474422011552905279

`A053906(n+1)^A014963(A001316(n))`
-/

namespace A053907.P17474422011552905279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053906 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A053907.P17474422011552905279

/-! ## A053907.P9116697754669407209

`A053906(n+1)^A000032(A108782(n))`
-/

namespace A053907.P9116697754669407209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053906 (n + 1) : ℚ) ^ (A000032 (A108782 n).toNat : ℤ)

end

end A053907.P9116697754669407209

/-!
# A053908: Numbers k such that k^2 contains only digits {1,6,8}.

The programs for A053908, there is no canonical definition to state claims against.
-/

/-! ## A053908.P3915018026367343824

`sqrt(A053909(n+1))`
-/

namespace A053908.P3915018026367343824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053909 (n + 1) : ℝ)

end

end A053908.P3915018026367343824

/-! ## A053908.P4757182706238906897

`A053909(-xor(n, -1))^(1/2)`
-/

namespace A053908.P4757182706238906897
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053909 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053908.P4757182706238906897

/-! ## A053908.P17192897964555103814

`A053909(A000027(n+1))^(1/2)`
-/

namespace A053908.P17192897964555103814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053909 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053908.P17192897964555103814

/-! ## A053908.P2231080814091443048

`root(A053909(n+1), A020639(2*(n+1)))`
-/

namespace A053908.P2231080814091443048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053909 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A053908.P2231080814091443048

/-! ## A053908.P8021799354592771625

`A053909(n+1)^(1/A000005(A108183(n+1)))`
-/

namespace A053908.P8021799354592771625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053909 (n + 1) : ℝ) ^ (1 / (A000005 (A108183 (n + 1)).toNat : ℚ) : ℝ)

end

end A053908.P8021799354592771625

/-!
# A053909: Squares composed of digits {1,6,8}.

The programs for A053909, there is no canonical definition to state claims against.
-/

/-! ## A053909.P13800137362959383938

`A053908(n+1)²`
-/

namespace A053909.P13800137362959383938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053908 (n + 1) ^ 2

end

end A053909.P13800137362959383938

/-! ## A053909.P964216604263473862

`A053908(n+1)^A000005(A000043(n+1))`
-/

namespace A053909.P964216604263473862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053908 (n + 1) : ℚ) ^ (A000005 (A000043 (n + 1)).toNat : ℤ)

end

end A053909.P964216604263473862

/-! ## A053909.P181289679377553089

`A053908(n+1)^A000032(A034473(n+1))`
-/

namespace A053909.P181289679377553089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053908 (n + 1) : ℚ) ^ (A000032 (A034473 (n + 1)).toNat : ℤ)

end

end A053909.P181289679377553089

/-! ## A053909.P527872273325877311

`A053908(n+1)^A000005(A053872(n+1))`
-/

namespace A053909.P527872273325877311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053908 (n + 1) : ℚ) ^ (A000005 (A053872 (n + 1)).toNat : ℤ)

end

end A053909.P527872273325877311

/-! ## A053909.P16064200491495517500

`A053908(n+1)^A000040(A053878(n+2))`
-/

namespace A053909.P16064200491495517500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053908 (n + 1) : ℚ) ^ (A000040 (A053878 (n + 2)).toNat : ℤ)

end

end A053909.P16064200491495517500

/-!
# A053910: Numbers k such that k^2 contains only digits {1,6,9}.

The programs for A053910, there is no canonical definition to state claims against.
-/

/-! ## A053910.P776258428343087800

`sqrt(A053911(n+1))`
-/

namespace A053910.P776258428343087800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053911 (n + 1) : ℝ)

end

end A053910.P776258428343087800

/-! ## A053910.P16120507578980896712

`A053911(-xor(n, -1))^(1/2)`
-/

namespace A053910.P16120507578980896712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053911 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053910.P16120507578980896712

/-! ## A053910.P9613519737393348988

`A053911(A000027(n+1))^(1/2)`
-/

namespace A053910.P9613519737393348988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053911 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053910.P9613519737393348988

/-!
# A053911: Squares composed of digits {1,6,9}.

The programs for A053911, there is no canonical definition to state claims against.
-/

/-! ## A053911.P11639048328790856104

`A053910(n+1)²`
-/

namespace A053911.P11639048328790856104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053910 (n + 1) ^ 2

end

end A053911.P11639048328790856104

/-! ## A053911.P7294086706919646685

`A053910(n+1)^A020639(A016958(n))`
-/

namespace A053911.P7294086706919646685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053910 (n + 1) : ℚ) ^ (A020639 (A016958 n).toNat : ℤ)

end

end A053911.P7294086706919646685

/-! ## A053911.P8361248577738804744

`A053910(n+1)*A053910(A000027(n+1))`
-/

namespace A053911.P8361248577738804744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053910 (n + 1) * A053910 (A000027 (n + 1)).toNat

end

end A053911.P8361248577738804744

/-! ## A053911.P9764927660247031613

`A053910(n+1)^A000005(A008578(n+1))`
-/

namespace A053911.P9764927660247031613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053910 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ)

end

end A053911.P9764927660247031613

/-! ## A053911.P13642056141261287056

`A053910(n+1)^A000005(A053872(n+1))`
-/

namespace A053911.P13642056141261287056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053910 (n + 1) : ℚ) ^ (A000005 (A053872 (n + 1)).toNat : ℤ)

end

end A053911.P13642056141261287056

/-!
# A053912: Numbers k such that k^2 contains only digits {1,7,8}.

The programs for A053912, there is no canonical definition to state claims against.
-/

/-! ## A053912.P8841359775772101354

`sqrt(A053913(n+1))`
-/

namespace A053912.P8841359775772101354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053913 (n + 1) : ℝ)

end

end A053912.P8841359775772101354

/-!
# A053913: Squares composed of digits {1,7,8}.

The programs for A053913, there is no canonical definition to state claims against.
-/

/-! ## A053913.P17670001493049499701

`A053912(n+1)²`
-/

namespace A053913.P17670001493049499701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053912 (n + 1) ^ 2

end

end A053913.P17670001493049499701

/-!
# A053914: Numbers k such that k^2 contains only digits {1,8,9}.

The programs for A053914, there is no canonical definition to state claims against.
-/

/-! ## A053914.P7599243340321613450

`sqrt(A053915(n+1))`
-/

namespace A053914.P7599243340321613450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053915 (n + 1) : ℝ)

end

end A053914.P7599243340321613450

/-! ## A053914.P17409812102721774142

`root(A053915(n+1), p?[A000161(n)])`
-/

namespace A053914.P17409812102721774142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053915 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053914.P17409812102721774142

/-! ## A053914.P13546994648583433090

`root(A053915(n+1), A005247(C(3, n²)))`
-/

namespace A053914.P13546994648583433090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053915 (n + 1) : ℝ) ^ (1 / (A005247 (Nat.choose 3 (n ^ 2)) : ℝ))

end

end A053914.P13546994648583433090

/-! ## A053914.P5549046235130557118

`root(A053915(n+1), A281786(C(2, n+2)))`
-/

namespace A053914.P5549046235130557118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053915 (n + 1) : ℝ) ^ (1 / (A281786 (Nat.choose 2 (n + 2)) : ℝ))

end

end A053914.P5549046235130557118

/-! ## A053914.P1002000445220362002

`root(A053915(n+1), A001316(A001316(n)))`
-/

namespace A053914.P1002000445220362002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053915 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A053914.P1002000445220362002

/-!
# A053915: Squares composed of digits {1,8,9}.

The programs for A053915, there is no canonical definition to state claims against.
-/

/-! ## A053915.P5757543723163269724

`A053914(n+1)²`
-/

namespace A053915.P5757543723163269724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053914 (n + 1) ^ 2

end

end A053915.P5757543723163269724

/-! ## A053915.P1972133279281329292

`A053914(n+1)^(A000007(n)+2)`
-/

namespace A053915.P1972133279281329292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053914 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A053915.P1972133279281329292

/-! ## A053915.P15668968593055498542

`A053914(n+1)^(2%A016825(n))`
-/

namespace A053915.P15668968593055498542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053914 (n + 1) : ℚ) ^ (Int.tmod 2 (A016825 n) : ℤ)

end

end A053915.P15668968593055498542

/-! ## A053915.P12546277852786894657

`A053914(n+1)^A014963(A001316(n))`
-/

namespace A053915.P12546277852786894657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053914 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A053915.P12546277852786894657

/-! ## A053915.P2193881270500271757

`A053914(n+1)^A020639(A038232(n))`
-/

namespace A053915.P2193881270500271757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053914 (n + 1) : ℚ) ^ (A020639 (A038232 n).toNat : ℤ)

end

end A053915.P2193881270500271757

/-!
# A053916: Numbers k such that k^2 contains only digits {2,3,4}.

The programs for A053916, there is no canonical definition to state claims against.
-/

/-! ## A053916.P15867009830008098780

`sqrt(A053917(n+1))`
-/

namespace A053916.P15867009830008098780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053917 (n + 1) : ℝ)

end

end A053916.P15867009830008098780

/-! ## A053916.P10854739068467877483

`root(A053917(n+1), p?[A059995(n)])`
-/

namespace A053916.P10854739068467877483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053917 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053916.P10854739068467877483

/-! ## A053916.P10668567192693997945

`root(A053917(n+1), p?[A112848(n+1)])`
-/

namespace A053916.P10668567192693997945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053917 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053916.P10668567192693997945

/-! ## A053916.P14405794151772618786

`root(A053917(n+1), A193432(A193432(n)))`
-/

namespace A053916.P14405794151772618786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053917 (n + 1) : ℝ) ^ (1 / (A193432 (A193432 n).toNat : ℝ))

end

end A053916.P14405794151772618786

/-! ## A053916.P15154045583062870823

`A053917(n+1)^2^A008683(A003629(n+1))`
-/

namespace A053916.P15154045583062870823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053917 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) : ℝ)

end

end A053916.P15154045583062870823

/-!
# A053917: Squares composed of digits {2,3,4}.

The programs for A053917, there is no canonical definition to state claims against.
-/

/-! ## A053917.P10077855436952303115

`A053916(n+1)²`
-/

namespace A053917.P10077855436952303115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053916 (n + 1) ^ 2

end

end A053917.P10077855436952303115

/-! ## A053917.P107120590336277961

`record[A053916(A050603(n))²]`
-/

namespace A053917.P107120590336277961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053916 (A050603 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053917.P107120590336277961

/-! ## A053917.P11157476231526351988

`record[A053916(A214950(n))²]`
-/

namespace A053917.P11157476231526351988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053916 (A214950 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053917.P11157476231526351988

/-! ## A053917.P1348096413543069303

`A053916(n+1)^A000005(A002148(n))`
-/

namespace A053917.P1348096413543069303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053916 (n + 1) : ℚ) ^ (A000005 (A002148 n).toNat : ℤ)

end

end A053917.P1348096413543069303

/-! ## A053917.P6109127758940677481

`A053916(n+1)^A029635(A059995(n))`
-/

namespace A053917.P6109127758940677481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053916 (n + 1) : ℚ) ^ (A029635 (A059995 n).toNat : ℤ)

end

end A053917.P6109127758940677481

/-!
# A053918: Numbers k such that k^2 contains only digits {2,3,5}.

The programs for A053918, there is no canonical definition to state claims against.
-/

/-! ## A053918.P14993492247481003327

`sqrt(A053919(n+1))`
-/

namespace A053918.P14993492247481003327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053919 (n + 1) : ℝ)

end

end A053918.P14993492247481003327

/-! ## A053918.P6524954470315511966

`root(A053919(n+1), dr(A073214(n)))`
-/

namespace A053918.P6524954470315511966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053919 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A073214 n) : ℝ))

end

end A053918.P6524954470315511966

/-! ## A053918.P9891546719550336690

`root(A053919(n+1), dr(A199417(n)))`
-/

namespace A053918.P9891546719550336690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053919 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A199417 n) : ℝ))

end

end A053918.P9891546719550336690

/-! ## A053918.P7368188175290665065

`root(A053919(n+1), p?[A135661(n+1)])`
-/

namespace A053918.P7368188175290665065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053919 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053918.P7368188175290665065

/-! ## A053918.P7096529267515909316

`∩[A160109(n+1), A295005(n+1)]`
-/

namespace A053918.P7096529267515909316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053918.P7096529267515909316

/-!
# A053919: Squares composed of digits {2,3,5}.

The programs for A053919, there is no canonical definition to state claims against.
-/

/-! ## A053919.P15666261999940678071

`A053918(n+1)²`
-/

namespace A053919.P15666261999940678071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053918 (n + 1) ^ 2

end

end A053919.P15666261999940678071

/-! ## A053919.P2172267114275322247

`A053918(n+1)^A000005(A089793(n))`
-/

namespace A053919.P2172267114275322247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053918 (n + 1) : ℚ) ^ (A000005 (A089793 n).toNat : ℤ)

end

end A053919.P2172267114275322247

/-! ## A053919.P5404251556042871243

`A053918(n+1)*A053918(A000027(n+1))`
-/

namespace A053919.P5404251556042871243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053918 (n + 1) * A053918 (A000027 (n + 1)).toNat

end

end A053919.P5404251556042871243

/-! ## A053919.P14022873411546564288

`A053918(n+1)^A000005(A053872(n+1))`
-/

namespace A053919.P14022873411546564288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053918 (n + 1) : ℚ) ^ (A000005 (A053872 (n + 1)).toNat : ℤ)

end

end A053919.P14022873411546564288

/-! ## A053919.P1257231962301476001

`A053918(n+1)^A000005(A139496(n+1))`
-/

namespace A053919.P1257231962301476001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053918 (n + 1) : ℚ) ^ (A000005 (A139496 (n + 1)).toNat : ℤ)

end

end A053919.P1257231962301476001

/-!
# A053920: Numbers k such that k^2 contains only digits {2,3,9}.

The programs for A053920, there is no canonical definition to state claims against.
-/

/-! ## A053920.P9168072676684146081

`sqrt(A053921(n+1))`
-/

namespace A053920.P9168072676684146081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053921 (n + 1) : ℝ)

end

end A053920.P9168072676684146081

/-! ## A053920.P8375450127544455757

`root(A053921(n+1), p?[A000161(n)])`
-/

namespace A053920.P8375450127544455757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053921 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053920.P8375450127544455757

/-! ## A053920.P3190573763374649106

`root(A053921(n+1), p?[A331591(n+1)])`
-/

namespace A053920.P3190573763374649106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053921 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053920.P3190573763374649106

/-! ## A053920.P5467347623148282403

`A053921(n+1)^(A062513(n+1)/2)`
-/

namespace A053920.P5467347623148282403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053921 (n + 1) : ℝ) ^ ((A062513 (n + 1) : ℚ) / 2 : ℝ)

end

end A053920.P5467347623148282403

/-!
# A053921: Squares composed of digits {2,3,9}.

The programs for A053921, there is no canonical definition to state claims against.
-/

/-! ## A053921.P16686311359934033968

`A053920(n+1)²`
-/

namespace A053921.P16686311359934033968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053920 (n + 1) ^ 2

end

end A053921.P16686311359934033968

/-! ## A053921.P9998410953613078301

`A053920(n+1)*A053920(A321993(n+1))`
-/

namespace A053921.P9998410953613078301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053920 (n + 1) * A053920 (A321993 (n + 1)).toNat

end

end A053921.P9998410953613078301

/-! ## A053921.P4954140388150596723

`A053920(n+1)^A000005(A053872(n+1))`
-/

namespace A053921.P4954140388150596723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053920 (n + 1) : ℚ) ^ (A000005 (A053872 (n + 1)).toNat : ℤ)

end

end A053921.P4954140388150596723

/-! ## A053921.P4830501706928722627

`A053920(n+1)^A000040(A062513(n+1))`
-/

namespace A053921.P4830501706928722627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053920 (n + 1) : ℚ) ^ (A000040 (A062513 (n + 1)).toNat : ℤ)

end

end A053921.P4830501706928722627

/-! ## A053921.P6278881749403266068

`A053920(n+1)^A000005(A139841(n+1))`
-/

namespace A053921.P6278881749403266068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053920 (n + 1) : ℚ) ^ (A000005 (A139841 (n + 1)).toNat : ℤ)

end

end A053921.P6278881749403266068

/-!
# A053922: Numbers k such that k^2 contains only digits {2,4,6}.

The programs for A053922, there is no canonical definition to state claims against.
-/

/-! ## A053922.P7438225820279108150

`sqrt(A053923(n+1))`
-/

namespace A053922.P7438225820279108150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053923 (n + 1) : ℝ)

end

end A053922.P7438225820279108150

/-! ## A053922.P394579062014992475

`A053923(-xor(n, -1))^(1/2)`
-/

namespace A053922.P394579062014992475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053923 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053922.P394579062014992475

/-! ## A053922.P393286940636493379

`A053923(A000027(n+1))^(1/2)`
-/

namespace A053922.P393286940636493379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053923 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053922.P393286940636493379

/-! ## A053922.P18210986756146475949

`root(A053923(n+1), A040000(n+1))`
-/

namespace A053922.P18210986756146475949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053923 (n + 1) : ℝ) ^ (1 / (A040000 (n + 1) : ℝ))

end

end A053922.P18210986756146475949

/-! ## A053922.P2553651145103311275

`root(A053923(n+1), A036453(n+2))`
-/

namespace A053922.P2553651145103311275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053923 (n + 1) : ℝ) ^ (1 / (A036453 (n + 2) : ℝ))

end

end A053922.P2553651145103311275

/-!
# A053923: Squares composed of digits {2,4,6}.

The programs for A053923, there is no canonical definition to state claims against.
-/

/-! ## A053923.P13628584078998681551

`A053922(n+1)²`
-/

namespace A053923.P13628584078998681551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053922 (n + 1) ^ 2

end

end A053923.P13628584078998681551

/-! ## A053923.P10156912966443723027

`A053922(n+1)^A036453(n+2)`
-/

namespace A053923.P10156912966443723027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053922 (n + 1) : ℚ) ^ (A036453 (n + 2) : ℤ)

end

end A053923.P10156912966443723027

/-! ## A053923.P14139270282159375311

`A053922(n+1)^A010698(2*n)`
-/

namespace A053923.P14139270282159375311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053922 (n + 1) : ℚ) ^ (A010698 (2 * n) : ℤ)

end

end A053923.P14139270282159375311

/-! ## A053923.P1029011553219432571

`A053922(n+1)^A020639(2*(n+1))`
-/

namespace A053923.P1029011553219432571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053922 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A053923.P1029011553219432571

/-! ## A053923.P18315754843800528918

`A053922(n+1)^A277561(A277561(n))`
-/

namespace A053923.P18315754843800528918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053922 (n + 1) : ℚ) ^ (A277561 (A277561 n).toNat : ℤ)

end

end A053923.P18315754843800528918

/-!
# A053924: Numbers k such that k^2 contains only digits {2,4,9}.

The programs for A053924, there is no canonical definition to state claims against.
-/

/-! ## A053924.P7212040217725867097

`sqrt(A053925(n+1))`
-/

namespace A053924.P7212040217725867097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053925 (n + 1) : ℝ)

end

end A053924.P7212040217725867097

/-! ## A053924.P9547846707483050359

`root(A053925(n+1), A010698(2*n))`
-/

namespace A053924.P9547846707483050359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053925 (n + 1) : ℝ) ^ (1 / (A010698 (2 * n) : ℝ))

end

end A053924.P9547846707483050359

/-! ## A053924.P7001983640100541945

`root(A053925(n+1), A020639(2*(n+1)))`
-/

namespace A053924.P7001983640100541945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053925 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A053924.P7001983640100541945

/-! ## A053924.P14597716548690554129

`root(A053925(n+1), A133265(A133265(n)))`
-/

namespace A053924.P14597716548690554129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053925 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A053924.P14597716548690554129

/-! ## A053924.P4926407823190163079

`A053925(n+1)^(1/A000005(A108183(n+1)))`
-/

namespace A053924.P4926407823190163079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053925 (n + 1) : ℝ) ^ (1 / (A000005 (A108183 (n + 1)).toNat : ℚ) : ℝ)

end

end A053924.P4926407823190163079

/-!
# A053925: Squares composed of digits {2,4,9}.

The programs for A053925, there is no canonical definition to state claims against.
-/

/-! ## A053925.P3078196318206226903

`A053924(n+1)²`
-/

namespace A053925.P3078196318206226903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053924 (n + 1) ^ 2

end

end A053925.P3078196318206226903

/-! ## A053925.P1819885903609899930

`A053924(n+1)^A010698(2*n)`
-/

namespace A053925.P1819885903609899930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053924 (n + 1) : ℚ) ^ (A010698 (2 * n) : ℤ)

end

end A053925.P1819885903609899930

/-! ## A053925.P14602756007384036885

`A053924(n+1)^A020639(2*(n+1))`
-/

namespace A053925.P14602756007384036885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053924 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A053925.P14602756007384036885

/-! ## A053925.P10360292813964635910

`A053924(n+1)*A053924(A000027(n+1))`
-/

namespace A053925.P10360292813964635910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053924 (n + 1) * A053924 (A000027 (n + 1)).toNat

end

end A053925.P10360292813964635910

/-! ## A053925.P12462846714409518047

`A053924(n+1)^A000005(A082598(n+1))`
-/

namespace A053925.P12462846714409518047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053924 (n + 1) : ℚ) ^ (A000005 (A082598 (n + 1)).toNat : ℤ)

end

end A053925.P12462846714409518047

/-!
# A053926: Numbers k such that k^2 contains only digits {2,5,8}.

The programs for A053926, there is no canonical definition to state claims against.
-/

/-! ## A053926.P17063091920706556480

`sqrt(A053927(n+1))`
-/

namespace A053926.P17063091920706556480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053927 (n + 1) : ℝ)

end

end A053926.P17063091920706556480

/-! ## A053926.P2664035805820175858

`root(A053927(n+1), 2%A020744(n))`
-/

namespace A053926.P2664035805820175858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053927 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A020744 n) : ℝ))

end

end A053926.P2664035805820175858

/-! ## A053926.P13780734958901078284

`root(A053927(n+1), gcd(2, A052953(n)))`
-/

namespace A053926.P13780734958901078284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053927 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A052953 n) : ℝ))

end

end A053926.P13780734958901078284

/-! ## A053926.P16145530108232684252

`root(A053927(n+1), p?[A106799(n+1)])`
-/

namespace A053926.P16145530108232684252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053927 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053926.P16145530108232684252

/-! ## A053926.P14280983717876913110

`root(A053927(n+1), and(2, A119224(n+1)))`
-/

namespace A053926.P14280983717876913110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053927 (n + 1) : ℝ) ^ (1 / (Int.land 2 (A119224 (n + 1)) : ℝ))

end

end A053926.P14280983717876913110

/-!
# A053927: Squares composed of digits {2,5,8}.

The programs for A053927, there is no canonical definition to state claims against.
-/

/-! ## A053927.P16137779532422793398

`A053926(n+1)²`
-/

namespace A053927.P16137779532422793398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053926 (n + 1) ^ 2

end

end A053927.P16137779532422793398

/-! ## A053927.P6989939471196610031

`A053926(n+1)^p?[A106799(n+1)]`
-/

namespace A053927.P6989939471196610031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053926 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053927.P6989939471196610031

/-! ## A053927.P6045163734452004081

`A053926(n+1)^A020639(A020744(n))`
-/

namespace A053927.P6045163734452004081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053926 (n + 1) : ℚ) ^ (A020639 (A020744 n).toNat : ℤ)

end

end A053927.P6045163734452004081

/-! ## A053927.P3956416050869287265

`A053926(n+1)^A020639(A052953(n))`
-/

namespace A053927.P3956416050869287265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053926 (n + 1) : ℚ) ^ (A020639 (A052953 n).toNat : ℤ)

end

end A053927.P3956416050869287265

/-! ## A053927.P10104102810487599652

`A053926(n+1)*A053926(A000027(n+1))`
-/

namespace A053927.P10104102810487599652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053926 (n + 1) * A053926 (A000027 (n + 1)).toNat

end

end A053927.P10104102810487599652

/-!
# A053928: Numbers k such that k^2 contains only digits {2,5,9}.

The programs for A053928, there is no canonical definition to state claims against.
-/

/-! ## A053928.P16723528090969693609

`sqrt(A053929(n+1))`
-/

namespace A053928.P16723528090969693609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053929 (n + 1) : ℝ)

end

end A053928.P16723528090969693609

/-! ## A053928.P4429273593774952323

`floor(sqrt(A053929(-xor(n, -1))))`
-/

namespace A053928.P4429273593774952323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A053929 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A053928.P4429273593774952323

/-! ## A053928.P5007663259563929790

`root(A053929(n+1), p?[A193238(n)])`
-/

namespace A053928.P5007663259563929790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053929 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053928.P5007663259563929790

/-! ## A053928.P15565479891649510224

`A053929(A000027(n+1))^(1/2)`
-/

namespace A053928.P15565479891649510224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053929 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A053928.P15565479891649510224

/-! ## A053928.P11010888878751620965

`root(A053929(n+1), A073813(A073813(3*(n+1))))`
-/

namespace A053928.P11010888878751620965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053929 (n + 1) : ℝ) ^ (1 / (A073813 (A073813 (3 * (n + 1))).toNat : ℝ))

end

end A053928.P11010888878751620965

/-!
# A053929: Squares composed of digits {2,5,9}.

The programs for A053929, there is no canonical definition to state claims against.
-/

/-! ## A053929.P3312561519006510297

`A053928(n+1)²`
-/

namespace A053929.P3312561519006510297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053928 (n + 1) ^ 2

end

end A053929.P3312561519006510297

/-! ## A053929.P7102840921261815024

`A053928(n+1)^A103663(A008441(n))`
-/

namespace A053929.P7102840921261815024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053928 (n + 1) : ℚ) ^ (A103663 (A008441 n).toNat : ℤ)

end

end A053929.P7102840921261815024

/-! ## A053929.P2515326992226879463

`A053928(n+1)^A103663(A260720(n))`
-/

namespace A053929.P2515326992226879463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053928 (n + 1) : ℚ) ^ (A103663 (A260720 n).toNat : ℤ)

end

end A053929.P2515326992226879463

/-! ## A053929.P6973221075012812972

`A053928(n+1)*A053928(A000027(n+1))`
-/

namespace A053929.P6973221075012812972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053928 (n + 1) * A053928 (A000027 (n + 1)).toNat

end

end A053929.P6973221075012812972

/-! ## A053929.P7988643338833765700

`A053928(n+1)^A000005(A084758(n+1))`
-/

namespace A053929.P7988643338833765700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053928 (n + 1) : ℚ) ^ (A000005 (A084758 (n + 1)).toNat : ℤ)

end

end A053929.P7988643338833765700

/-!
# A053930: Numbers k such that k^2 contains only digits {2,6,9}.

The programs for A053930, there is no canonical definition to state claims against.
-/

/-! ## A053930.P17757252034570030120

`sqrt(A053931(n+1))`
-/

namespace A053930.P17757252034570030120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053931 (n + 1) : ℝ)

end

end A053930.P17757252034570030120

/-! ## A053930.P10572053051561262171

`root(A053931(Δ[n²]-n), 2)`
-/

namespace A053930.P10572053051561262171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A053930.P10572053051561262171

/-! ## A053930.P15377975297762909446

`A053931(n+1)^((n+1)/A004277(n+1))`
-/

namespace A053930.P15377975297762909446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053931 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A004277 (n + 1) : ℚ) : ℝ)

end

end A053930.P15377975297762909446

/-! ## A053930.P679580690765561351

`A000027(root(A053931(n+1), 2))`
-/

namespace A053930.P679580690765561351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A053931 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A053930.P679580690765561351

/-!
# A053931: Squares composed of digits {2,6,9}.

The programs for A053931, there is no canonical definition to state claims against.
-/

/-! ## A053931.P9320888589649385201

`A053930(n+1)²`
-/

namespace A053931.P9320888589649385201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053930 (n + 1) ^ 2

end

end A053931.P9320888589649385201

/-! ## A053931.P17157981601612267798

`A053930(A028310(n+1))^2`
-/

namespace A053931.P17157981601612267798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053930 (A028310 (n + 1)).toNat ^ 2

end

end A053931.P17157981601612267798

/-! ## A053931.P6906636244439294130

`A053930(n+1)^A000032(A165878(n))`
-/

namespace A053931.P6906636244439294130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053930 (n + 1) : ℚ) ^ (A000032 (A165878 n).toNat : ℤ)

end

end A053931.P6906636244439294130

/-! ## A053931.P3372243201409632094

`A053930(n+1)*A053930(A028310(n+1))`
-/

namespace A053931.P3372243201409632094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053930 (n + 1) * A053930 (A028310 (n + 1)).toNat

end

end A053931.P3372243201409632094

/-! ## A053931.P2731583913861113965

`A053930(n+1)^A096855(A070103(n+1))`
-/

namespace A053931.P2731583913861113965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053930 (n + 1) : ℚ) ^ (A096855 (A070103 (n + 1)).toNat : ℤ)

end

end A053931.P2731583913861113965

/-!
# A053932: Numbers k such that k^2 contains only digits {2,7,9}.

The programs for A053932, there is no canonical definition to state claims against.
-/

/-! ## A053932.P11491329535476074924

`sqrt(A053933(n+1))`
-/

namespace A053932.P11491329535476074924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053933 (n + 1) : ℝ)

end

end A053932.P11491329535476074924

/-! ## A053932.P12979502896672548750

`root(A053933(n+1), p?[A279278(n)])`
-/

namespace A053932.P12979502896672548750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053933 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053932.P12979502896672548750

/-! ## A053932.P14832577695931918479

`root(A053933(n+1), p?[A076500(n+1)])`
-/

namespace A053932.P14832577695931918479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076500 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053933 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053932.P14832577695931918479

/-! ## A053932.P13558794605255945618

`root(A053933(n+1), p?[A078128(n+1)])`
-/

namespace A053932.P13558794605255945618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053933 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053932.P13558794605255945618

/-! ## A053932.P14715789797658981744

`root(A053933(n+1), 2%A086977(n+1))`
-/

namespace A053932.P14715789797658981744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053933 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A086977 (n + 1)) : ℝ))

end

end A053932.P14715789797658981744

/-!
# A053933: Squares composed of digits {2,7,9}.

The programs for A053933, there is no canonical definition to state claims against.
-/

/-! ## A053933.P10760232385326434800

`A053932(n+1)²`
-/

namespace A053933.P10760232385326434800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053932 (n + 1) ^ 2

end

end A053933.P10760232385326434800

/-!
# A053934: Numbers k such that k^2 contains only digits {2,8,9}.

The programs for A053934, there is no canonical definition to state claims against.
-/

/-! ## A053934.P2317239462376725595

`sqrt(A053935(n+1))`
-/

namespace A053934.P2317239462376725595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053935 (n + 1) : ℝ)

end

end A053934.P2317239462376725595

/-! ## A053934.P6055417487777275976

`root(A053935(n+1), p?[A060950(n+1)])`
-/

namespace A053934.P6055417487777275976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053935 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053934.P6055417487777275976

/-! ## A053934.P10111806090687125544

`root(A053935(n+1), p?[A143262(n+1)])`
-/

namespace A053934.P10111806090687125544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053935 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053934.P10111806090687125544

/-! ## A053934.P435089299644980280

`root(A053935(n+1), p?[A271325(n+1)])`
-/

namespace A053934.P435089299644980280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271325 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053935 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053934.P435089299644980280

/-!
# A053935: Squares composed of digits {2,8,9}.

The programs for A053935, there is no canonical definition to state claims against.
-/

/-! ## A053935.P15995772008367898831

`A053934(n+1)²`
-/

namespace A053935.P15995772008367898831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053934 (n + 1) ^ 2

end

end A053935.P15995772008367898831

/-!
# A053936: Numbers k such that k^2 contains only digits {3,4,5}.

The programs for A053936, there is no canonical definition to state claims against.
-/

/-! ## A053936.P15246987376758849058

`sqrt(A053937(n+1))`
-/

namespace A053936.P15246987376758849058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053937 (n + 1) : ℝ)

end

end A053936.P15246987376758849058

/-! ## A053936.P11860040550969670878

`root(A053937(n+1), p?[A025426(n)])`
-/

namespace A053936.P11860040550969670878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053937 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053936.P11860040550969670878

/-! ## A053936.P14355241735929313369

`root(A053937(n+1), p?[A249161(n)])`
-/

namespace A053936.P14355241735929313369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053937 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053936.P14355241735929313369

/-! ## A053936.P15744871671650276460

`root(A053937(n+1), p?[A067742(n+1)])`
-/

namespace A053936.P15744871671650276460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053937 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053936.P15744871671650276460

/-! ## A053936.P7172212038861069607

`root(A053937(n+1), A001316(A001316(n)))`
-/

namespace A053936.P7172212038861069607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053937 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A053936.P7172212038861069607

/-!
# A053937: Squares composed of digits {3,4,5}.

The programs for A053937, there is no canonical definition to state claims against.
-/

/-! ## A053937.P5312525928791048981

`A053936(n+1)²`
-/

namespace A053937.P5312525928791048981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053936 (n + 1) ^ 2

end

end A053937.P5312525928791048981

/-! ## A053937.P17339751344503740418

`A053936(n+1)^p?[A249161(n)]`
-/

namespace A053937.P17339751344503740418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053936 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053937.P17339751344503740418

/-! ## A053937.P4851586959611684554

`A053936(n+1)^A000005(A007918(n))`
-/

namespace A053937.P4851586959611684554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053936 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A053937.P4851586959611684554

/-! ## A053937.P17262970708516200960

`A053936(n+1)*A053936(A000027(n+1))`
-/

namespace A053937.P17262970708516200960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053936 (n + 1) * A053936 (A000027 (n + 1)).toNat

end

end A053937.P17262970708516200960

/-! ## A053937.P17959975282462014700

`A053936(n+1)^A001222(A001248(n+1))`
-/

namespace A053937.P17959975282462014700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053936 (n + 1) : ℚ) ^ (A001222 (A001248 (n + 1)).toNat : ℤ)

end

end A053937.P17959975282462014700

/-!
# A053938: Numbers k such that k^2 contains only digits {3,4,6}.

The programs for A053938, there is no canonical definition to state claims against.
-/

/-! ## A053938.P12316812715776438886

`sqrt(A053939(n+1))`
-/

namespace A053938.P12316812715776438886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053939 (n + 1) : ℝ)

end

end A053938.P12316812715776438886

/-! ## A053938.P5910539586901154633

`root(A053939(n+1), p?[A286852(n)])`
-/

namespace A053938.P5910539586901154633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053939 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053938.P5910539586901154633

/-! ## A053938.P2289335622722817494

`root(A053939(n+1), A178798(n)+2)`
-/

namespace A053938.P2289335622722817494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053939 (n + 1) : ℝ) ^ (1 / (A178798 n + 2 : ℝ))

end

end A053938.P2289335622722817494

/-! ## A053938.P9762637661851378398

`root(A053939(n+1), 2%A146081(n))`
-/

namespace A053938.P9762637661851378398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053939 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A146081 n) : ℝ))

end

end A053938.P9762637661851378398

/-! ## A053938.P2029486746774199022

`root(A053939(n+1), p?[A067742(n+1)])`
-/

namespace A053938.P2029486746774199022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053939 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053938.P2029486746774199022

/-!
# A053939: Squares composed of digits {3,4,6}.

The programs for A053939, there is no canonical definition to state claims against.
-/

/-! ## A053939.P4811050638209682509

`A053938(n+1)²`
-/

namespace A053939.P4811050638209682509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053938 (n + 1) ^ 2

end

end A053939.P4811050638209682509

/-! ## A053939.P11142245296959704656

`A053938(n+1)^p?[A003646(n+2)]`
-/

namespace A053939.P11142245296959704656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003646 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053938 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053939.P11142245296959704656

/-! ## A053939.P7096103266942010086

`A053938(n+1)^A020639(A146081(n))`
-/

namespace A053939.P7096103266942010086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053938 (n + 1) : ℚ) ^ (A020639 (A146081 n).toNat : ℤ)

end

end A053939.P7096103266942010086

/-! ## A053939.P4984044846885831873

`record[A053938(A053632(n))²]`
-/

namespace A053939.P4984044846885831873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053938 (A053632 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053939.P4984044846885831873

/-! ## A053939.P12216660110299100903

`A053938(n+1)*A053938(record[A053632(n)])`
-/

namespace A053939.P12216660110299100903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053938 (n + 1) * A053938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053939.P12216660110299100903

/-!
# A053940: Numbers k such that k^2 contains only digits {3,4,8}.

The programs for A053940, there is no canonical definition to state claims against.
-/

/-! ## A053940.P17659255284036523848

`sqrt(A053941(n+1))`
-/

namespace A053940.P17659255284036523848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053941 (n + 1) : ℝ)

end

end A053940.P17659255284036523848

/-!
# A053941: Squares composed of digits {3,4,8}.

The programs for A053941, there is no canonical definition to state claims against.
-/

/-! ## A053941.P2795739122160628286

`A053940(n+1)²`
-/

namespace A053941.P2795739122160628286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053940 (n + 1) ^ 2

end

end A053941.P2795739122160628286

/-!
# A053942: Numbers k such that k^2 contains only digits {3,4,9}.

The programs for A053942, there is no canonical definition to state claims against.
-/

/-! ## A053942.P11733807780764683027

`sqrt(A053943(n+1))`
-/

namespace A053942.P11733807780764683027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053943 (n + 1) : ℝ)

end

end A053942.P11733807780764683027

/-! ## A053942.P6607518623726123017

`root(A053943(n+1), Δ[A062028(n)])`
-/

namespace A053942.P6607518623726123017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053943 (n + 1) : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A053942.P6607518623726123017

/-! ## A053942.P17743660819400963889

`root(A053943(n+1), ratio[A172318(n)])`
-/

namespace A053942.P17743660819400963889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172318 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053943 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A053942.P17743660819400963889

/-! ## A053942.P13423366597064675629

`root(A053943(n+1), ratio[A234590(n)])`
-/

namespace A053942.P13423366597064675629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234590 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053943 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A053942.P13423366597064675629

/-!
# A053943: Squares composed of digits {3,4,9}.

The programs for A053943, there is no canonical definition to state claims against.
-/

/-! ## A053943.P7896047565970163798

`A053942(n+1)²`
-/

namespace A053943.P7896047565970163798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053942 (n + 1) ^ 2

end

end A053943.P7896047565970163798

/-! ## A053943.P16091214977166181128

`record[A053942(A020986(n))²]`
-/

namespace A053943.P16091214977166181128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053942 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053943.P16091214977166181128

/-! ## A053943.P8781423378751507145

`record[A053942(A025422(n))²]`
-/

namespace A053943.P8781423378751507145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053942 (A025422 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053943.P8781423378751507145

/-! ## A053943.P11868607175013386182

`record[A053942(A091948(n))²]`
-/

namespace A053943.P11868607175013386182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053942 (A091948 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053943.P11868607175013386182

/-!
# A053944: Numbers k such that k^2 contains only digits {3,5,6}.

The programs for A053944, there is no canonical definition to state claims against.
-/

/-! ## A053944.P9962712643280749735

`sqrt(A053945(n+1))`
-/

namespace A053944.P9962712643280749735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053945 (n + 1) : ℝ)

end

end A053944.P9962712643280749735

/-! ## A053944.P13896693793236486810

`root(A053945(n+1), p?[A025426(n)])`
-/

namespace A053944.P13896693793236486810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053945 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053944.P13896693793236486810

/-! ## A053944.P10488724365040841623

`root(A053945(n+1), p?[A244560(n)])`
-/

namespace A053944.P10488724365040841623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053945 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053944.P10488724365040841623

/-! ## A053944.P17887021841981788257

`root(A053945(n+1), gcd(2, A215655(n+1)))`
-/

namespace A053944.P17887021841981788257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053945 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A215655 (n + 1)) : ℝ))

end

end A053944.P17887021841981788257

/-! ## A053944.P16269993026338777512

`root(A053945(n+1), lcm(2, A046951(n+1)))`
-/

namespace A053944.P16269993026338777512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053945 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A046951 (n + 1)) : ℝ))

end

end A053944.P16269993026338777512

/-!
# A053945: Squares composed of digits {3,5,6}.

The programs for A053945, there is no canonical definition to state claims against.
-/

/-! ## A053945.P7664391180358203719

`A053944(n+1)²`
-/

namespace A053945.P7664391180358203719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053944 (n + 1) ^ 2

end

end A053945.P7664391180358203719

/-! ## A053945.P10064066385607467652

`A053944(n+1)^A000005(A051698(n))`
-/

namespace A053945.P10064066385607467652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053944 (n + 1) : ℚ) ^ (A000005 (A051698 n).toNat : ℤ)

end

end A053945.P10064066385607467652

/-! ## A053945.P6648330757907873924

`A053944(n+1)^A000005(A053998(n))`
-/

namespace A053945.P6648330757907873924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053944 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053945.P6648330757907873924

/-! ## A053945.P8682770484753189686

`A053944(n+1)^A000005(A053999(n))`
-/

namespace A053945.P8682770484753189686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053944 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053945.P8682770484753189686

/-! ## A053945.P1990956772622827394

`A053944(n+1)*A053944(A000027(n+1))`
-/

namespace A053945.P1990956772622827394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053944 (n + 1) * A053944 (A000027 (n + 1)).toNat

end

end A053945.P1990956772622827394

/-!
# A053946: Numbers k such that k^2 contains only digits {3,6,7}.

The programs for A053946, there is no canonical definition to state claims against.
-/

/-! ## A053946.P13828348576653411084

`sqrt(A053947(n+1))`
-/

namespace A053946.P13828348576653411084
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053947 (n + 1) : ℝ)

end

end A053946.P13828348576653411084

/-!
# A053947: Squares composed of digits {3,6,7}.

The programs for A053947, there is no canonical definition to state claims against.
-/

/-! ## A053947.P6323257824531811218

`A053946(n+1)²`
-/

namespace A053947.P6323257824531811218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053946 (n + 1) ^ 2

end

end A053947.P6323257824531811218

/-! ## A053947.P16324755916267496984

`A053946(n+1)^A159953(ceil(2^(n-1)))`
-/

namespace A053947.P16324755916267496984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053946 (n + 1) : ℚ) ^ (A159953 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℤ)

end

end A053947.P16324755916267496984

/-! ## A053947.P2454260771021973703

`A053946(n+1)^A000040(A346095(n+1))`
-/

namespace A053947.P2454260771021973703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053946 (n + 1) : ℚ) ^ (A000040 (A346095 (n + 1)).toNat : ℤ)

end

end A053947.P2454260771021973703

/-!
# A053948: Numbers k such that k^2 contains only digits {3,6,9}.

The programs for A053948, there is no canonical definition to state claims against.
-/

/-! ## A053948.P18192904745181395052

`sqrt(A053949(n+1))`
-/

namespace A053948.P18192904745181395052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053949 (n + 1) : ℝ)

end

end A053948.P18192904745181395052

/-! ## A053948.P11227587806303260994

`root(A053949(n+1), p?[A228085(n)])`
-/

namespace A053948.P11227587806303260994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053949 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053948.P11227587806303260994

/-! ## A053948.P2764826190473534398

`root(A053949(n+1), A001316(A001316(n)))`
-/

namespace A053948.P2764826190473534398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053949 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A053948.P2764826190473534398

/-! ## A053948.P14159983512129415558

`root(A053949(n+1), A100008(A100008(n+1)))`
-/

namespace A053948.P14159983512129415558
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053949 (n + 1) : ℝ) ^ (1 / (A100008 (A100008 (n + 1)).toNat : ℝ))

end

end A053948.P14159983512129415558

/-!
# A053949: Squares composed of digits {3,6,9}.

The programs for A053949, there is no canonical definition to state claims against.
-/

/-! ## A053949.P6542102909067204616

`A053948(n+1)²`
-/

namespace A053949.P6542102909067204616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053948 (n + 1) ^ 2

end

end A053949.P6542102909067204616

/-! ## A053949.P6828089677265901258

`A053948(n+1)^A020639(3-(-1)^n)`
-/

namespace A053949.P6828089677265901258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053948 (n + 1) : ℚ) ^ (A020639 (3 - (-1) ^ n).toNat : ℤ)

end

end A053949.P6828089677265901258

/-! ## A053949.P3596885137475621204

`A053948(n+1)^A000005(A053998(n))`
-/

namespace A053949.P3596885137475621204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053948 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053949.P3596885137475621204

/-! ## A053949.P11144921050629456000

`A053948(n+1)^A000032(A264668(n))`
-/

namespace A053949.P11144921050629456000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053948 (n + 1) : ℚ) ^ (A000032 (A264668 n).toNat : ℤ)

end

end A053949.P11144921050629456000

/-! ## A053949.P16992469111479721950

`A053948(n+1)^A000040(A000041(C(n, 64)))`
-/

namespace A053949.P16992469111479721950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053948 (n + 1) : ℚ) ^ (A000040 (A000041 (Nat.choose n 64)).toNat : ℤ)

end

end A053949.P16992469111479721950

/-!
# A053950: Numbers k such that k^2 contains only digits {4,5,7}.

The programs for A053950, there is no canonical definition to state claims against.
-/

/-! ## A053950.P11384883740363921745

`sqrt(A053951(n+1))`
-/

namespace A053950.P11384883740363921745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053951 (n + 1) : ℝ)

end

end A053950.P11384883740363921745

/-! ## A053950.P15702870871424716404

`root(A053951(n+1), p?[A025462(n)])`
-/

namespace A053950.P15702870871424716404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053951 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053950.P15702870871424716404

/-! ## A053950.P2502444330889514189

`root(A053951(n+1), p?[A225541(n)])`
-/

namespace A053950.P2502444330889514189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053951 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053950.P2502444330889514189

/-! ## A053950.P16880159053340135673

`root(A053951(n+1), p?[A032539(n+1)])`
-/

namespace A053950.P16880159053340135673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053951 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053950.P16880159053340135673

/-!
# A053951: Squares composed of digits {4,5,7}.

The programs for A053951, there is no canonical definition to state claims against.
-/

/-! ## A053951.P1686292153132700565

`A053950(n+1)²`
-/

namespace A053951.P1686292153132700565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053950 (n + 1) ^ 2

end

end A053951.P1686292153132700565

/-! ## A053951.P6199225079058627208

`record[A053950(A020986(n))²]`
-/

namespace A053951.P6199225079058627208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053950 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053951.P6199225079058627208

/-! ## A053951.P6420131789369074010

`record[A053950(A134478(n))²]`
-/

namespace A053951.P6420131789369074010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053950 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053951.P6420131789369074010

/-! ## A053951.P7282143465106000803

`A053950(n+1)^A000005(A053998(n))`
-/

namespace A053951.P7282143465106000803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053950 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053951.P7282143465106000803

/-! ## A053951.P222635546517868971

`A053950(n+1)^A000005(A053999(n))`
-/

namespace A053951.P222635546517868971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053950 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053951.P222635546517868971

/-!
# A053952: Numbers k such that k^2 contains only digits {4,5,8}.

The programs for A053952, there is no canonical definition to state claims against.
-/

/-! ## A053952.P14042239270735659950

`sqrt(A053953(n+1))`
-/

namespace A053952.P14042239270735659950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053953 (n + 1) : ℝ)

end

end A053952.P14042239270735659950

/-! ## A053952.P3878239727291839461

`root(A053953(n+1), Δ[A262223(n)])`
-/

namespace A053952.P3878239727291839461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053953 (n + 1) : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A053952.P3878239727291839461

/-! ## A053952.P8139021250920507821

`root(A053953(n+1), A020639(2*(n+1)))`
-/

namespace A053952.P8139021250920507821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053953 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A053952.P8139021250920507821

/-! ## A053952.P6184423234464979402

`root(A053953(n+1), A014963(2^(n+1)))`
-/

namespace A053952.P6184423234464979402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053953 (n + 1) : ℝ) ^ (1 / (A014963 (2 ^ (n + 1)) : ℝ))

end

end A053952.P6184423234464979402

/-!
# A053953: Squares composed of digits {4,5,8}.

The programs for A053953, there is no canonical definition to state claims against.
-/

/-! ## A053953.P1048603716049397994

`A053952(n+1)²`
-/

namespace A053953.P1048603716049397994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053952 (n + 1) ^ 2

end

end A053953.P1048603716049397994

/-!
# A053954: Numbers k such that k^2 contains only digits {4,5,9}.

The programs for A053954, there is no canonical definition to state claims against.
-/

/-! ## A053954.P2738603383781982155

`sqrt(A053955(n+1))`
-/

namespace A053954.P2738603383781982155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053955 (n + 1) : ℝ)

end

end A053954.P2738603383781982155

/-! ## A053954.P5258067445875481408

`root(A053955(n+1), p?[A025426(n)])`
-/

namespace A053954.P5258067445875481408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053955 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053954.P5258067445875481408

/-! ## A053954.P13816882559003414124

`root(A053955(n+1), p?[A132272(n)])`
-/

namespace A053954.P13816882559003414124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053955 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053954.P13816882559003414124

/-! ## A053954.P8363944152677129329

`root(A053955(n+1), p?[A178334(n)])`
-/

namespace A053954.P8363944152677129329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053955 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053954.P8363944152677129329

/-! ## A053954.P12068953900602778108

`round(root(A053955(n+1)+A003436(n), 2))`
-/

namespace A053954.P12068953900602778108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053955 (n + 1) + A003436 n : ℝ) ^ (1 / (2 : ℝ)))

end

end A053954.P12068953900602778108

/-!
# A053955: Squares composed of digits {4,5,9}.

The programs for A053955, there is no canonical definition to state claims against.
-/

/-! ## A053955.P13121726564146493089

`A053954(n+1)²`
-/

namespace A053955.P13121726564146493089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053954 (n + 1) ^ 2

end

end A053955.P13121726564146493089

/-! ## A053955.P6110587220646917344

`record[A053954(A158416(n))²]`
-/

namespace A053955.P6110587220646917344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053954 (A158416 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053955.P6110587220646917344

/-! ## A053955.P8144382280047364601

`A053954(n+1)^A000005(A053998(n))`
-/

namespace A053955.P8144382280047364601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053954 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053955.P8144382280047364601

/-! ## A053955.P7265099943647586683

`A053954(n+1)^A000005(A053999(n))`
-/

namespace A053955.P7265099943647586683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053954 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053955.P7265099943647586683

/-! ## A053955.P18224355602223595278

`record[A053954(A158416(n))]*A053954(n+1)`
-/

namespace A053955.P18224355602223595278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053954 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A053954 (n + 1)

end

end A053955.P18224355602223595278

/-!
# A053956: Numbers k such that k^2 contains only digits {4,6,7}.

The programs for A053956, there is no canonical definition to state claims against.
-/

/-! ## A053956.P9875537687065258889

`sqrt(A053957(n+1))`
-/

namespace A053956.P9875537687065258889
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053957 (n + 1) : ℝ)

end

end A053956.P9875537687065258889

/-! ## A053956.P12631558413669589593

`root(A053957(n+1), p?[A052343(n)])`
-/

namespace A053956.P12631558413669589593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053957 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053956.P12631558413669589593

/-! ## A053956.P4371685371972004229

`root(A053957(n+1), p?[A213636(n+1)])`
-/

namespace A053956.P4371685371972004229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053957 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053956.P4371685371972004229

/-! ## A053956.P10707062425007655967

`root(A053957(n+1), p?[A319662(n+1)])`
-/

namespace A053956.P10707062425007655967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319662 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053957 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053956.P10707062425007655967

/-! ## A053956.P5472925022364399091

`root(A053957(n+1), A001221(6*2^n))`
-/

namespace A053956.P5472925022364399091
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053957 (n + 1) : ℝ) ^ (1 / (A001221 (6 * 2 ^ n) : ℝ))

end

end A053956.P5472925022364399091

/-!
# A053957: Squares composed of digits {4,6,7}.

The programs for A053957, there is no canonical definition to state claims against.
-/

/-! ## A053957.P5728863381902271406

`A053956(n+1)²`
-/

namespace A053957.P5728863381902271406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053956 (n + 1) ^ 2

end

end A053957.P5728863381902271406

/-!
# A053958: Numbers k such that k^2 contains only digits {4,6,8}.

The programs for A053958, there is no canonical definition to state claims against.
-/

/-! ## A053958.P18079116517031272539

`sqrt(A053959(n+1))`
-/

namespace A053958.P18079116517031272539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053959 (n + 1) : ℝ)

end

end A053958.P18079116517031272539

/-! ## A053958.P8147985933723346771

`root(A053959(n+1), p?[A025426(n)])`
-/

namespace A053958.P8147985933723346771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053959 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053958.P8147985933723346771

/-! ## A053958.P11472017436729699901

`root(A053959(n+1), A001504(n)%3)`
-/

namespace A053958.P11472017436729699901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053959 (n + 1) : ℝ) ^ (1 / (Int.tmod (A001504 n) 3 : ℝ))

end

end A053958.P11472017436729699901

/-! ## A053958.P6641991795973215378

`root(A053959(n+1), A004171(n)%3)`
-/

namespace A053958.P6641991795973215378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053959 (n + 1) : ℝ) ^ (1 / (Int.tmod (A004171 n) 3 : ℝ))

end

end A053958.P6641991795973215378

/-! ## A053958.P17504207890463333996

`root(A053959(n+1), p?[A084928(n+1)])`
-/

namespace A053958.P17504207890463333996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084928 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053959 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053958.P17504207890463333996

/-!
# A053959: Squares composed of digits {4,6,8}.

The programs for A053959, there is no canonical definition to state claims against.
-/

/-! ## A053959.P3865897689658037729

`A053958(n+1)²`
-/

namespace A053959.P3865897689658037729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053958 (n + 1) ^ 2

end

end A053959.P3865897689658037729

/-! ## A053959.P16302364152583752143

`record[A053958(A059126(n))²]`
-/

namespace A053959.P16302364152583752143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053958 (A059126 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053959.P16302364152583752143

/-! ## A053959.P13061666945971654885

`A053958(n+1)^A000005(A053998(n))`
-/

namespace A053959.P13061666945971654885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053958 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053959.P13061666945971654885

/-! ## A053959.P14817434361035341810

`A053958(n+1)^A000005(A053999(n))`
-/

namespace A053959.P14817434361035341810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053958 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053959.P14817434361035341810

/-! ## A053959.P15502318049145233894

`record[A053958(A059126(n))]*A053958(n+1)`
-/

namespace A053959.P15502318049145233894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053958 (A059126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A053958 (n + 1)

end

end A053959.P15502318049145233894

/-!
# A053960: Numbers k such that k^2 contains only digits {4,6,9}.

The programs for A053960, there is no canonical definition to state claims against.
-/

/-! ## A053960.P5345726232909657023

`sqrt(A053961(n+1))`
-/

namespace A053960.P5345726232909657023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053961 (n + 1) : ℝ)

end

end A053960.P5345726232909657023

/-! ## A053960.P11993300500022399306

`root(A053961(root((n+1)², 2)), 2)`
-/

namespace A053960.P11993300500022399306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053961 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A053960.P11993300500022399306

/-! ## A053960.P6425549071084280190

`A053961(n+1)^(A185063(n)!/2)`
-/

namespace A053960.P6425549071084280190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053961 (n + 1) : ℝ) ^ ((Nat.factorial (A185063 n).toNat : ℚ) / 2 : ℝ)

end

end A053960.P6425549071084280190

/-! ## A053960.P16775533369316117620

`A000027(root(A053961(n+1), 2))`
-/

namespace A053960.P16775533369316117620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A053961 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A053960.P16775533369316117620

/-! ## A053960.P8641370613000979586

`sqrt(∩[A107665(n+1), n²])`
-/

namespace A053960.P8641370613000979586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A053960.P8641370613000979586

/-!
# A053961: Squares composed of digits {4,6,9}.

The programs for A053961, there is no canonical definition to state claims against.
-/

/-! ## A053961.P13389684700062872480

`A053960(n+1)²`
-/

namespace A053961.P13389684700062872480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053960 (n + 1) ^ 2

end

end A053961.P13389684700062872480

/-! ## A053961.P7581153809991718657

`record[A053960(A203814(n))²]`
-/

namespace A053961.P7581153809991718657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053960 (A203814 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053961.P7581153809991718657

/-! ## A053961.P8395820959947582674

`record[A053960(A291769(n))²]`
-/

namespace A053961.P8395820959947582674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053960 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053961.P8395820959947582674

/-! ## A053961.P15440341167058886509

`record[A053960(A305296(n))²]`
-/

namespace A053961.P15440341167058886509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053960 (A305296 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053961.P15440341167058886509

/-! ## A053961.P16559059555366822565

`record[A053960(A324347(n))²]`
-/

namespace A053961.P16559059555366822565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053960 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053961.P16559059555366822565

/-!
# A053962: Numbers k such that k^2 contains only digits {4,7,8}.

The programs for A053962, there is no canonical definition to state claims against.
-/

/-! ## A053962.P14181099855435323686

`sqrt(A053963(n+1))`
-/

namespace A053962.P14181099855435323686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053963 (n + 1) : ℝ)

end

end A053962.P14181099855435323686

/-!
# A053963: Squares composed of digits {4,7,8}.

The programs for A053963, there is no canonical definition to state claims against.
-/

/-! ## A053963.P11035974471993529993

`A053962(n+1)²`
-/

namespace A053963.P11035974471993529993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053962 (n + 1) ^ 2

end

end A053963.P11035974471993529993

/-! ## A053963.P4678922915067527588

`A053962(n+1)^A000005(A053998(n))`
-/

namespace A053963.P4678922915067527588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053962 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053963.P4678922915067527588

/-! ## A053963.P5096181540505859507

`A053962(n+1)^A000005(A053999(n))`
-/

namespace A053963.P5096181540505859507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053962 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053963.P5096181540505859507

/-! ## A053963.P5906542177984665233

`A053962(n+1)^A053997(A054014(2*n+5))`
-/

namespace A053963.P5906542177984665233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053962 (n + 1) : ℚ) ^ (A053997 (A054014 (2 * n + 5)).toNat : ℤ)

end

end A053963.P5906542177984665233

/-!
# A053964: Numbers k such that k^2 contains only digits {4,7,9}.

The programs for A053964, there is no canonical definition to state claims against.
-/

/-! ## A053964.P12721046295287832861

`sqrt(A053965(n+1))`
-/

namespace A053964.P12721046295287832861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053965 (n + 1) : ℝ)

end

end A053964.P12721046295287832861

/-! ## A053964.P9356291681311884493

`root(A053965(n+1), Δ[A230099(n)])`
-/

namespace A053964.P9356291681311884493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053965 (n + 1) : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A053964.P9356291681311884493

/-!
# A053965: Squares composed of digits {4,7,9}.

The programs for A053965, there is no canonical definition to state claims against.
-/

/-! ## A053965.P4919817303850164411

`A053964(n+1)²`
-/

namespace A053965.P4919817303850164411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053964 (n + 1) ^ 2

end

end A053965.P4919817303850164411

/-! ## A053965.P8655831641754837422

`A053964(n+1)^Δ[A230099(n)]`
-/

namespace A053965.P8655831641754837422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053964 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A053965.P8655831641754837422

/-! ## A053965.P4794496655000557302

`A053964(n+1)^dr(A038444(n+1))`
-/

namespace A053965.P4794496655000557302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053964 (n + 1) ^ SequenceMachineLib.digitalRoot (A038444 (n + 1))

end

end A053965.P4794496655000557302

/-! ## A053965.P9542422230761903611

`A053964(n+1)^A000032(floor(n/10))`
-/

namespace A053965.P9542422230761903611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053964 (n + 1) : ℚ) ^ (A000032 ⌊(n : ℚ) / 10⌋.toNat : ℤ)

end

end A053965.P9542422230761903611

/-! ## A053965.P9645954384673155119

`A053964(n+1)^(A117358(n+1)+1)`
-/

namespace A053965.P9645954384673155119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053964 (n + 1) : ℚ) ^ (A117358 (n + 1) + 1 : ℤ)

end

end A053965.P9645954384673155119

/-!
# A053966: Numbers k such that k^2 contains only digits {4,8,9}.

The programs for A053966, there is no canonical definition to state claims against.
-/

/-! ## A053966.P14218530930329303395

`sqrt(A053967(n+1))`
-/

namespace A053966.P14218530930329303395
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053967 (n + 1) : ℝ)

end

end A053966.P14218530930329303395

/-! ## A053966.P12080527262032205112

`root(A053967(n+1), A040000(n+1))`
-/

namespace A053966.P12080527262032205112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053967 (n + 1) : ℝ) ^ (1 / (A040000 (n + 1) : ℝ))

end

end A053966.P12080527262032205112

/-! ## A053966.P216031618816277324

`root(A053967(n+1), 2%A142241(n))`
-/

namespace A053966.P216031618816277324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053967 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A142241 n) : ℝ))

end

end A053966.P216031618816277324

/-! ## A053966.P7749513256537058133

`root(A053967(n+1), A001316(A001316(n)))`
-/

namespace A053966.P7749513256537058133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053967 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A053966.P7749513256537058133

/-!
# A053967: Squares composed of digits {4,8,9}.

The programs for A053967, there is no canonical definition to state claims against.
-/

/-! ## A053967.P743422533376305841

`A053966(n+1)²`
-/

namespace A053967.P743422533376305841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053966 (n + 1) ^ 2

end

end A053967.P743422533376305841

/-! ## A053967.P8794852544583757669

`A053966(n+1)^A010698(2*n)`
-/

namespace A053967.P8794852544583757669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053966 (n + 1) : ℚ) ^ (A010698 (2 * n) : ℤ)

end

end A053967.P8794852544583757669

/-! ## A053967.P8627726577748549230

`A053966(n+1)^A020639(2*(n+1))`
-/

namespace A053967.P8627726577748549230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053966 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A053967.P8627726577748549230

/-! ## A053967.P13296626125185625975

`A053966(n+1)^A040000(2*n+3)!`
-/

namespace A053967.P13296626125185625975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053966 (n + 1) ^ Nat.factorial (A040000 (2 * n + 3)).toNat

end

end A053967.P13296626125185625975

/-! ## A053967.P9636669996352532911

`A053966(n+1)^A000005(A053998(n))`
-/

namespace A053967.P9636669996352532911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053966 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053967.P9636669996352532911

/-!
# A053968: Numbers k such that k^2 contains only digits {5,6,7}.

The programs for A053968, there is no canonical definition to state claims against.
-/

/-! ## A053968.P13397019819844546103

`sqrt(A053969(n+1))`
-/

namespace A053968.P13397019819844546103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053969 (n + 1) : ℝ)

end

end A053968.P13397019819844546103

/-!
# A053969: Squares composed of digits {5,6,7}.

The programs for A053969, there is no canonical definition to state claims against.
-/

/-! ## A053969.P7551522582492770262

`A053968(n+1)²`
-/

namespace A053969.P7551522582492770262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053968 (n + 1) ^ 2

end

end A053969.P7551522582492770262

/-! ## A053969.P17516128438372332715

`A053968(n+1)^A000005(A053998(n))`
-/

namespace A053969.P17516128438372332715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053968 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053969.P17516128438372332715

/-! ## A053969.P16781027624541082496

`A053968(n+1)^A000005(A053999(n))`
-/

namespace A053969.P16781027624541082496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053968 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053969.P16781027624541082496

/-! ## A053969.P845130091323385583

`A053968(n+1)^A053997(A054014(2*n+5))`
-/

namespace A053969.P845130091323385583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053968 (n + 1) : ℚ) ^ (A053997 (A054014 (2 * n + 5)).toNat : ℤ)

end

end A053969.P845130091323385583

/-!
# A053970: Numbers k such that k^2 contains only digits {5,6,9}.

The programs for A053970, there is no canonical definition to state claims against.
-/

/-! ## A053970.P8227805868539393829

`sqrt(A053971(n+1))`
-/

namespace A053970.P8227805868539393829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053971 (n + 1) : ℝ)

end

end A053970.P8227805868539393829

/-! ## A053970.P4561748962699481646

`root(A053971(n+1), p?[A048766(n)])`
-/

namespace A053970.P4561748962699481646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053971 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053970.P4561748962699481646

/-! ## A053970.P5202208847761422670

`root(A053971(n+1), p?[A124765(n)])`
-/

namespace A053970.P5202208847761422670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053971 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053970.P5202208847761422670

/-! ## A053970.P8507468355687180508

`root(A053971(n+1), p?[A131851(n)])`
-/

namespace A053970.P8507468355687180508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053971 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053970.P8507468355687180508

/-! ## A053970.P3581686094566223272

`root(A053971(n+1), A074264(n+1))`
-/

namespace A053970.P3581686094566223272
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053971 (n + 1) : ℝ) ^ (1 / (A074264 (n + 1) : ℝ))

end

end A053970.P3581686094566223272

/-!
# A053971: Squares composed of digits {5,6,9}.

The programs for A053971, there is no canonical definition to state claims against.
-/

/-! ## A053971.P18009439524708190219

`A053970(n+1)²`
-/

namespace A053971.P18009439524708190219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053970 (n + 1) ^ 2

end

end A053971.P18009439524708190219

/-! ## A053971.P9432283846028122783

`A053970(n+1)^p?[A048766(n)]`
-/

namespace A053971.P9432283846028122783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053970 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053971.P9432283846028122783

/-! ## A053971.P9429256441098909516

`A053970(n+1)^p?[A124765(n)]`
-/

namespace A053971.P9429256441098909516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053970 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053971.P9429256441098909516

/-! ## A053971.P9826746799521493593

`A053970(n+1)^A040000(2*n+3)!`
-/

namespace A053971.P9826746799521493593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053970 (n + 1) ^ Nat.factorial (A040000 (2 * n + 3)).toNat

end

end A053971.P9826746799521493593

/-! ## A053971.P18374158839712163864

`A053970(n+1)^A000005(A053998(n))`
-/

namespace A053971.P18374158839712163864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053970 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053971.P18374158839712163864

/-!
# A053972: Numbers k such that k^2 contains only digits {6,7,9}.

The programs for A053972, there is no canonical definition to state claims against.
-/

/-! ## A053972.P17598430700811625601

`sqrt(A053973(n+1))`
-/

namespace A053972.P17598430700811625601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053973 (n + 1) : ℝ)

end

end A053972.P17598430700811625601

/-! ## A053972.P10089814062319656459

`root(A053973(n+1), p?[A048766(n)])`
-/

namespace A053972.P10089814062319656459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053973 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053972.P10089814062319656459

/-! ## A053972.P7630785336783694485

`root(A053973(n+1), p?[A076493(n)])`
-/

namespace A053972.P7630785336783694485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053973 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053972.P7630785336783694485

/-! ## A053972.P1941237617791004779

`root(A053973(n+1), p?[A124765(n)])`
-/

namespace A053972.P1941237617791004779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053973 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053972.P1941237617791004779

/-! ## A053972.P4890827073312061700

`root(A053973(n+1), A001316(A001316(n)))`
-/

namespace A053972.P4890827073312061700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053973 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A053972.P4890827073312061700

/-!
# A053973: Squares composed of digits {6,7,9}.

The programs for A053973, there is no canonical definition to state claims against.
-/

/-! ## A053973.P15314739769062499968

`A053972(n+1)²`
-/

namespace A053973.P15314739769062499968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053972 (n + 1) ^ 2

end

end A053973.P15314739769062499968

/-! ## A053973.P18301369442406909780

`A053972(n+1)^A000005(A053998(n))`
-/

namespace A053973.P18301369442406909780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053972 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053973.P18301369442406909780

/-! ## A053973.P16728831339987783878

`A053972(n+1)^A000005(A053999(n))`
-/

namespace A053973.P16728831339987783878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053972 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053973.P16728831339987783878

/-! ## A053973.P14903673466072947084

`A053972(n+1)^A053997(A054014(2*n+5))`
-/

namespace A053973.P14903673466072947084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053972 (n + 1) : ℚ) ^ (A053997 (A054014 (2 * n + 5)).toNat : ℤ)

end

end A053973.P14903673466072947084

/-!
# A053974: Numbers k such that k^2 contains only digits {6,8,9}.

The programs for A053974, there is no canonical definition to state claims against.
-/

/-! ## A053974.P3135280911642031551

`sqrt(A053975(n+1))`
-/

namespace A053974.P3135280911642031551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053975 (n + 1) : ℝ)

end

end A053974.P3135280911642031551

/-! ## A053974.P15334277158473693182

`root(A053975(n+1), p?[A033182(n)])`
-/

namespace A053974.P15334277158473693182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053975 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053974.P15334277158473693182

/-! ## A053974.P1681347714781416071

`root(A053975(n+1), p?[A048766(n)])`
-/

namespace A053974.P1681347714781416071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053975 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053974.P1681347714781416071

/-! ## A053974.P1693172879324008145

`root(A053975(n+1), p?[A097876(n)])`
-/

namespace A053974.P1693172879324008145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053975 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053974.P1693172879324008145

/-! ## A053974.P18185368960412971468

`root(A053975(n+1), p?[A124765(n)])`
-/

namespace A053974.P18185368960412971468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053975 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053974.P18185368960412971468

/-!
# A053975: Squares composed of digits {6,8,9}.

The programs for A053975, there is no canonical definition to state claims against.
-/

/-! ## A053975.P1244511869878426256

`A053974(n+1)²`
-/

namespace A053975.P1244511869878426256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053974 (n + 1) ^ 2

end

end A053975.P1244511869878426256

/-! ## A053975.P16183994320331527004

`A053974(n+1)^A040000(2*n+3)!`
-/

namespace A053975.P16183994320331527004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053974 (n + 1) ^ Nat.factorial (A040000 (2 * n + 3)).toNat

end

end A053975.P16183994320331527004

/-! ## A053975.P14580167017796232750

`A053974(n+1)^A020639(A017341(n))`
-/

namespace A053975.P14580167017796232750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053974 (n + 1) : ℚ) ^ (A020639 (A017341 n).toNat : ℤ)

end

end A053975.P14580167017796232750

/-! ## A053975.P362889635485572698

`A053974(n+1)^A000005(A053998(n))`
-/

namespace A053975.P362889635485572698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053974 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A053975.P362889635485572698

/-! ## A053975.P16868795161349230974

`A053974(n+1)^A000005(A053999(n))`
-/

namespace A053975.P16868795161349230974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053974 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A053975.P16868795161349230974

/-!
# A053981: A fourth order generalization of the Mobius function of n.

The programs for A053981, the canonical program `A053981.P11504119553309885411` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053981 has offset 1).

The definition of A053981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053981.P5327912692932557283

`A189021(A019554(n+1))^A007426(n+1)`
-/

namespace A053981.P5327912692932557283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189021 (A019554 (n + 1)).toNat : ℚ) ^ (A007426 (n + 1) : ℤ)

end

end A053981.P5327912692932557283

namespace A053981

/-- `A189021(A019554(n+1))^A007426(n+1)` -/
def P5327912692932557283.Spec : Prop :=
  ∀ n, P5327912692932557283.a n = (A053981 (n + 1) : ℚ)

end A053981

/-! ## A053981.P11504119553309885411

`A189021(A062378(n+1))^A007426(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053981

/-- `A189021(A062378(n+1))^A007426(n+1)` -/
def P11504119553309885411.Spec : Prop :=
  ∀ n, P11504119553309885411.a n = (A053981 (n + 1) : ℚ)

end A053981

/-! ## A053981.P732138192325021731

`A189023(n+1)^A027868(A046523(n+1))`
-/

namespace A053981.P732138192325021731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189023 (n + 1) : ℚ) ^ (A027868 (A046523 (n + 1)).toNat : ℤ)

end

end A053981.P732138192325021731

namespace A053981

/-- `A189023(n+1)^A027868(A046523(n+1))` -/
def P732138192325021731.Spec : Prop :=
  ∀ n, P732138192325021731.a n = (A053981 (n + 1) : ℚ)

end A053981

/-! ## A053981.P3258440079998252450

`A189023(n+1)^A000720(A293442(n+1))`
-/

namespace A053981.P3258440079998252450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189023 (n + 1) : ℚ) ^ (A000720 (A293442 (n + 1)).toNat : ℤ)

end

end A053981.P3258440079998252450

namespace A053981

/-- `A189023(n+1)^A000720(A293442(n+1))` -/
def P3258440079998252450.Spec : Prop :=
  ∀ n, P3258440079998252450.a n = (A053981 (n + 1) : ℚ)

end A053981

/-! ## A053981.P13462712621024436017

`A189023(n+1)^A194649(A008480(n+1))`
-/

namespace A053981.P13462712621024436017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189023 (n + 1) : ℚ) ^ (A194649 (A008480 (n + 1)).toNat : ℤ)

end

end A053981.P13462712621024436017

namespace A053981

/-- `A189023(n+1)^A194649(A008480(n+1))` -/
def P13462712621024436017.Spec : Prop :=
  ∀ n, P13462712621024436017.a n = (A053981 (n + 1) : ℚ)

end A053981

/-! ## A053981.P17770926381843073620

`A189023(n+1)^A000189(A317848(n+1))`
-/

namespace A053981.P17770926381843073620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189023 (n + 1) : ℚ) ^ (A000189 (A317848 (n + 1)).toNat : ℤ)

end

end A053981.P17770926381843073620

namespace A053981

/-- `A189023(n+1)^A000189(A317848(n+1))` -/
def P17770926381843073620.Spec : Prop :=
  ∀ n, P17770926381843073620.a n = (A053981 (n + 1) : ℚ)

end A053981

/-! ## A053981.P2855082455467588970

`A189023(or(A003961(n+1), A238745(n+1)))`
-/

namespace A053981.P2855082455467588970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (Int.lor (A003961 (n + 1)) (A238745 (n + 1))).toNat

end

end A053981.P2855082455467588970

namespace A053981

/-- `A189023(or(A003961(n+1), A238745(n+1)))` -/
def P2855082455467588970.Spec : Prop :=
  ∀ n, P2855082455467588970.a n = A053981 (n + 1)

end A053981

/-! ## A053981.P8736422089735745178

`A189023(A274346(n))`
-/

namespace A053981.P8736422089735745178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (A274346 n).toNat

end

end A053981.P8736422089735745178

namespace A053981

/-- `A189023(A274346(n))` -/
def P8736422089735745178.Spec : Prop :=
  ∀ n, P8736422089735745178.a n = A053981 (n + 1)

end A053981

/-! ## A053981.P2804643237252608194

`and(A189023(n+1), A319116(n))`
-/

namespace A053981.P2804643237252608194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189023 (n + 1)) (A319116 n)

end

end A053981.P2804643237252608194

namespace A053981

/-- `and(A189023(n+1), A319116(n))` -/
def P2804643237252608194.Spec : Prop :=
  ∀ n, P2804643237252608194.a n = A053981 (n + 1)

end A053981

/-! ## A053981.P12407404229136192427

`and(A168423(n), A189023(n+1))`
-/

namespace A053981.P12407404229136192427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168423 n) (A189023 (n + 1))

end

end A053981.P12407404229136192427

namespace A053981

/-- `and(A168423(n), A189023(n+1))` -/
def P12407404229136192427.Spec : Prop :=
  ∀ n, P12407404229136192427.a n = A053981 (n + 1)

end A053981

/-!
# A053982: Numbers k such that 1 + product of first k composite numbers is prime.

The programs for A053982, there is no canonical definition to state claims against.
-/

/-! ## A053982.P18341744438684840755

`A065855(A049420(n+1))`
-/

namespace A053982.P18341744438684840755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A049420 (n + 1)).toNat

end

end A053982.P18341744438684840755

/-! ## A053982.P14447016877951831020

`A026238(A049420(n+1))`
-/

namespace A053982.P14447016877951831020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A049420 (n + 1)).toNat

end

end A053982.P14447016877951831020

/-! ## A053982.P2735708383282879381

`A062298(A049420(n+1)-1)`
-/

namespace A053982.P2735708383282879381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A049420 (n + 1) - 1).toNat

end

end A053982.P2735708383282879381

/-! ## A053982.P315949674654988192

`A066246(A049420(n+1))%A022112(n)`
-/

namespace A053982.P315949674654988192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066246 (A049420 (n + 1)).toNat) (A022112 n)

end

end A053982.P315949674654988192

/-! ## A053982.P18165683673749085783

`A066246(A049420(n+1)%A122242(n+1))`
-/

namespace A053982.P18165683673749085783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (Int.tmod (A049420 (n + 1)) (A122242 (n + 1))).toNat

end

end A053982.P18165683673749085783

/-!
# A053983: a(n) = (2*n-1)*a(n-1) - a(n-2), a(0)=a(1)=1.

The programs for A053983, the canonical program `A053983.P1270004538028369567` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053983 has offset 0).

The definition of A053983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A053983.P1270004538028369567`, by `A053983.P1270004538028369567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053983.P1270004538028369567

`(2*n-1)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053983

/-- `(2*n-1)*a(n-1)-a(n-2)` -/
def P1270004538028369567.Spec : Prop :=
  ∀ n, P1270004538028369567.a n = A053983 n

theorem P1270004538028369567.correct : P1270004538028369567.Spec := by
  intro n
  simp only [A053983]

end A053983

/-! ## A053983.P13920621501979174660

`a(n-1)*A004273(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A053983.P13920621501979174660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A004273 n - a (n - 2)

end

end A053983.P13920621501979174660

namespace A053983

/-- `a(n-1)*A004273(n)-a(n-2)` -/
def P13920621501979174660.Spec : Prop :=
  ∀ n, P13920621501979174660.a n = A053983 n

end A053983

/-! ## A053983.P1298842561219152015

`a(n-1)*eq[n, A026741(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A053983.P1298842561219152015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - a (n - 2)

end

end A053983.P1298842561219152015

namespace A053983

/-- `a(n-1)*eq[n, A026741(n)]-a(n-2)` -/
def P1298842561219152015.Spec : Prop :=
  ∀ n, P1298842561219152015.a n = A053983 n

end A053983

/-! ## A053983.P13313596072458792016

`A242227(n)-A053984(n)`
-/

namespace A053983.P13313596072458792016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242227 n - A053984 n

end

end A053983.P13313596072458792016

namespace A053983

/-- `A242227(n)-A053984(n)` -/
def P13313596072458792016.Spec : Prop :=
  ∀ n, P13313596072458792016.a n = A053983 n

end A053983

/-! ## A053983.P1719151500434958517

`(A257859(n)+A053984(n))/2`
-/

namespace A053983.P1719151500434958517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257859 n + A053984 n : ℚ) / 2

end

end A053983.P1719151500434958517

namespace A053983

/-- `(A257859(n)+A053984(n))/2` -/
def P1719151500434958517.Spec : Prop :=
  ∀ n, P1719151500434958517.a n = (A053983 n : ℚ)

end A053983

/-! ## A053983.P3424583274632966820

`(A257859(n)+A242227(n))/3`
-/

namespace A053983.P3424583274632966820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257859 n + A242227 n : ℚ) / 3

end

end A053983.P3424583274632966820

namespace A053983

/-- `(A257859(n)+A242227(n))/3` -/
def P3424583274632966820.Spec : Prop :=
  ∀ n, P3424583274632966820.a n = (A053983 n : ℚ)

end A053983

/-! ## A053983.P37355247783393626

`(A257859(n)+A053984(n))*2^A008683(A020484(n))`
-/

namespace A053983.P37355247783393626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257859 n + A053984 n : ℚ) * (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A053983.P37355247783393626

namespace A053983

/-- `(A257859(n)+A053984(n))*2^A008683(A020484(n))` -/
def P37355247783393626.Spec : Prop :=
  ∀ n, P37355247783393626.a n = (A053983 n : ℚ)

end A053983

/-!
# A053984: a(n) = (2*n-1)*a(n-1) - a(n-2), a(0) = 0, a(1) = 1.

The programs for A053984, the canonical program `A053984.P7858531212643035131` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053984 has offset 0).

The definition of A053984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A053984.P7858531212643035131`, by `A053984.P7858531212643035131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053984.P7858531212643035131

`(2*n-1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053984

/-- `(2*n-1)*a(n-1)-a(n-2)` -/
def P7858531212643035131.Spec : Prop :=
  ∀ n, P7858531212643035131.a n = A053984 n

theorem P7858531212643035131.correct : P7858531212643035131.Spec := by
  intro n
  simp only [A053984]

end A053984

/-! ## A053984.P8992773539154845170

`a(n-1)*A004273(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A053984.P8992773539154845170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A004273 n - a (n - 2)

end

end A053984.P8992773539154845170

namespace A053984

/-- `a(n-1)*A004273(n)-a(n-2)` -/
def P8992773539154845170.Spec : Prop :=
  ∀ n, P8992773539154845170.a n = A053984 n

end A053984

/-! ## A053984.P6470163915882765305

`A242227(n)-A053983(n)`
-/

namespace A053984.P6470163915882765305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242227 n - A053983 n

end

end A053984.P6470163915882765305

namespace A053984

/-- `A242227(n)-A053983(n)` -/
def P6470163915882765305.Spec : Prop :=
  ∀ n, P6470163915882765305.a n = A053984 n

end A053984

/-! ## A053984.P13405264411291696882

`2*A053983(n)-A257859(n)`
-/

namespace A053984.P13405264411291696882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053983 n - A257859 n

end

end A053984.P13405264411291696882

namespace A053984

/-- `2*A053983(n)-A257859(n)` -/
def P13405264411291696882.Spec : Prop :=
  ∀ n, P13405264411291696882.a n = A053984 n

end A053984

/-! ## A053984.P2326579018470694278

`A242227(n)-(A257859(n)+A242227(n))/3`
-/

namespace A053984.P2326579018470694278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242227 n : ℚ) - (A257859 n + A242227 n : ℚ) / 3

end

end A053984.P2326579018470694278

namespace A053984

/-- `A242227(n)-(A257859(n)+A242227(n))/3` -/
def P2326579018470694278.Spec : Prop :=
  ∀ n, P2326579018470694278.a n = (A053984 n : ℚ)

end A053984

/-!
# A053985: Replace 2^k with (-2)^k in binary expansion of n.

The programs for A053985, the canonical program `A053985.P4227650463783182312` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053985 has offset 0).

The definition of A053985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053985.P4227650463783182312

`n%2-2*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053985

/-- `n%2-2*a(floor(n/2))` -/
def P4227650463783182312.Spec : Prop :=
  ∀ n, P4227650463783182312.a n = A053985 n

theorem P4227650463783182312.correct : P4227650463783182312.Spec := by
  intro n
  simp only [A053985]

end A053985

/-! ## A053985.P4291365006834097239

`1-(log2(gcd(2, n))+2*a(floor(n/2)))` with `a(0)=0`
-/

namespace A053985.P4291365006834097239
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  1 - (Real.logb 2 (Nat.gcd 2 n : ℝ) + 2 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A053985.P4291365006834097239

namespace A053985

/-- `1-(log2(gcd(2, n))+2*a(floor(n/2)))` -/
def P4291365006834097239.Spec : Prop :=
  ∀ n, P4291365006834097239.a n = (A053985 n : ℝ)

end A053985

/-! ## A053985.P9266407869941567657

`a(n-2)-2*(a(floor(n/2))-a(abs(floor(n/2)-1)))` with `a(0)=0, a(1)=1`
-/

namespace A053985.P9266407869941567657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 2 * (a ⌊(n : ℚ) / 2⌋.toNat - a |⌊(n : ℚ) / 2⌋ - 1|.toNat)

end

end A053985.P9266407869941567657

namespace A053985

/-- `a(n-2)-2*(a(floor(n/2))-a(abs(floor(n/2)-1)))` -/
def P9266407869941567657.Spec : Prop :=
  ∀ n, P9266407869941567657.a n = A053985 n

end A053985

/-! ## A053985.P577121304060303821

`A004514(n)-n`
-/

namespace A053985.P577121304060303821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n - (n : ℤ)

end

end A053985.P577121304060303821

namespace A053985

/-- `A004514(n)-n` -/
def P577121304060303821.Spec : Prop :=
  ∀ n, P577121304060303821.a n = A053985 n

end A053985

/-! ## A053985.P11813269280430731704

`A088442(n)-(n+1)`
-/

namespace A053985.P11813269280430731704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n - (n + 1 : ℤ)

end

end A053985.P11813269280430731704

namespace A053985

/-- `A088442(n)-(n+1)` -/
def P11813269280430731704.Spec : Prop :=
  ∀ n, P11813269280430731704.a n = A053985 n

end A053985

/-! ## A053985.P9483700485254683217

`2*A063694(n)-n`
-/

namespace A053985.P9483700485254683217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063694 n - (n : ℤ)

end

end A053985.P9483700485254683217

namespace A053985

/-- `2*A063694(n)-n` -/
def P9483700485254683217.Spec : Prop :=
  ∀ n, P9483700485254683217.a n = A053985 n

end A053985

/-! ## A053985.P5295742135600106704

`n-2*A063695(n)`
-/

namespace A053985.P5295742135600106704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A063695 n

end

end A053985.P5295742135600106704

namespace A053985

/-- `n-2*A063695(n)` -/
def P5295742135600106704.Spec : Prop :=
  ∀ n, P5295742135600106704.a n = A053985 n

end A053985

/-! ## A053985.P16849045439368078583

`xor(n, A048647(n))-n`
-/

namespace A053985.P16849045439368078583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048647 n) - (n : ℤ)

end

end A053985.P16849045439368078583

namespace A053985

/-- `xor(n, A048647(n))-n` -/
def P16849045439368078583.Spec : Prop :=
  ∀ n, P16849045439368078583.a n = A053985 n

end A053985

/-! ## A053985.P388865641564536783

`A317050(A006068(n))`
-/

namespace A053985.P388865641564536783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (A006068 n).toNat

end

end A053985.P388865641564536783

namespace A053985

/-- `A317050(A006068(n))` -/
def P388865641564536783.Spec : Prop :=
  ∀ n, P388865641564536783.a n = A053985 n

end A053985

/-! ## A053985.P15696156290867912848

`A005843(A063694(n))-n`
-/

namespace A053985.P15696156290867912848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063694 n).toNat - (n : ℤ)

end

end A053985.P15696156290867912848

namespace A053985

/-- `A005843(A063694(n))-n` -/
def P15696156290867912848.Spec : Prop :=
  ∀ n, P15696156290867912848.a n = A053985 n

end A053985

/-! ## A053985.P510291466700911743

`n-A005843(A063695(n))`
-/

namespace A053985.P510291466700911743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A063695 n).toNat

end

end A053985.P510291466700911743

namespace A053985

/-- `n-A005843(A063695(n))` -/
def P510291466700911743.Spec : Prop :=
  ∀ n, P510291466700911743.a n = A053985 n

end A053985

/-! ## A053985.P109870041698742931

`A062880(A059905(n))-n`
-/

namespace A053985.P109870041698742931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (A059905 n).toNat - (n : ℤ)

end

end A053985.P109870041698742931

namespace A053985

/-- `A062880(A059905(n))-n` -/
def P109870041698742931.Spec : Prop :=
  ∀ n, P109870041698742931.a n = A053985 n

end A053985

/-! ## A053985.P8584746756775009138

`A063694(n)-A063695(n)`
-/

namespace A053985.P8584746756775009138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n - A063695 n

end

end A053985.P8584746756775009138

namespace A053985

/-- `A063694(n)-A063695(n)` -/
def P8584746756775009138.Spec : Prop :=
  ∀ n, P8584746756775009138.a n = A053985 n

end A053985

/-! ## A053985.P17459865513073838495

`n-A000695(2*A059906(n))`
-/

namespace A053985.P17459865513073838495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000695 (2 * A059906 n).toNat

end

end A053985.P17459865513073838495

namespace A053985

/-- `n-A000695(2*A059906(n))` -/
def P17459865513073838495.Spec : Prop :=
  ∀ n, P17459865513073838495.a n = A053985 n

end A053985

/-! ## A053985.P3796847105718775165

`and(A057300(n), A379578(n))-n`
-/

namespace A053985.P3796847105718775165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057300 n) (A379578 n) - (n : ℤ)

end

end A053985.P3796847105718775165

namespace A053985

/-- `and(A057300(n), A379578(n))-n` -/
def P3796847105718775165.Spec : Prop :=
  ∀ n, P3796847105718775165.a n = A053985 n

end A053985

/-! ## A053985.P11099291940523138675

`xor(n, A057300(A004468(n)))-n`
-/

namespace A053985.P11099291940523138675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057300 (A004468 n).toNat) - (n : ℤ)

end

end A053985.P11099291940523138675

namespace A053985

/-- `xor(n, A057300(A004468(n)))-n` -/
def P11099291940523138675.Spec : Prop :=
  ∀ n, P11099291940523138675.a n = A053985 n

end A053985

/-! ## A053985.P4820994147493426043

`A088442(n)-n-A020985(n)²`
-/

namespace A053985.P4820994147493426043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n - (n : ℤ) - A020985 n ^ 2

end

end A053985.P4820994147493426043

namespace A053985

/-- `A088442(n)-n-A020985(n)²` -/
def P4820994147493426043.Spec : Prop :=
  ∀ n, P4820994147493426043.a n = A053985 n

end A053985

/-! ## A053985.P3297193488191564593

`A004442(A088442(n))-n`
-/

namespace A053985.P3297193488191564593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A088442 n).toNat - (n : ℤ)

end

end A053985.P3297193488191564593

namespace A053985

/-- `A004442(A088442(n))-n` -/
def P3297193488191564593.Spec : Prop :=
  ∀ n, P3297193488191564593.a n = A053985 n

end A053985

/-! ## A053985.P5461906664076226020

`A063695(A057300(n))-n`
-/

namespace A053985.P5461906664076226020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (A057300 n).toNat - (n : ℤ)

end

end A053985.P5461906664076226020

namespace A053985

/-- `A063695(A057300(n))-n` -/
def P5461906664076226020.Spec : Prop :=
  ∀ n, P5461906664076226020.a n = A053985 n

end A053985

/-! ## A053985.P11936481878862139776

`A063695(2*n)-n`
-/

namespace A053985.P11936481878862139776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (2 * n) - (n : ℤ)

end

end A053985.P11936481878862139776

namespace A053985

/-- `A063695(2*n)-n` -/
def P11936481878862139776.Spec : Prop :=
  ∀ n, P11936481878862139776.a n = A053985 n

end A053985

/-!
# A053986: a(n) = n^(n!).

The programs for A053986, the canonical program `A053986.P11650445530625309332` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053986 has offset 0).

The definition of A053986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n!` (program `A053986.P11650445530625309332`, by `A053986.P11650445530625309332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053986.P11650445530625309332

`n^n!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053986

/-- `n^n!` -/
def P11650445530625309332.Spec : Prop :=
  ∀ n, (P11650445530625309332.a n : ℤ) = A053986 n

theorem P11650445530625309332.correct : P11650445530625309332.Spec := by
  intro n
  simp only [A053986]

end A053986

/-!
# A053987: Numerators of successive convergents to tan(1/2) using continued fraction 1/(2-1/(6-1/(10-1/(14-1/(18-1/(22-1/(26-1/30-...))))))).

The programs for A053987, there is no canonical definition to state claims against.
-/

/-! ## A053987.P12587991393161544735

`(4*n+2)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A053987.P12587991393161544735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (4 * n + 2 : ℤ) * a (n - 1) - a (n - 2)

end

end A053987.P12587991393161544735

/-! ## A053987.P13308084639551445756

`a(n-1)*A016825(n)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A053987.P13308084639551445756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) * A016825 n - a (n - 2)

end

end A053987.P13308084639551445756

/-!
# A053988: Denominators of successive convergents to tan(1/2) using continued fraction 1/(2-1/(6-1/(10-1/(14-1/(18-1/(22-1/(26-1/30-...))))))).

The programs for A053988, the canonical program `A053988.P6155698818530646771` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053988 has offset 1).

The definition of A053988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053988.P6155698818530646771

`2*(2*(n+1)-1)*a(n-1)-a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053988

/-- `2*(2*(n+1)-1)*a(n-1)-a(n-2)` -/
def P6155698818530646771.Spec : Prop :=
  ∀ n, P6155698818530646771.a n = A053988 (n + 1)

theorem P6155698818530646771.correct : P6155698818530646771.Spec := by
  intro n
  simp only [A053988, Nat.add_sub_cancel]

end A053988

/-! ## A053988.P6447513109050487521

`∑{#}[floor((n+1)/2), (-1)^#*(2*(n+1)-2*#)!/((n+1-2*#)!*(2*#)!)]`
-/

namespace A053988.P6447513109050487521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((-1) ^ k * (Nat.factorial ((2 * (n + 1) : ℤ) - (2 * k : ℤ)).toNat : ℤ) : ℚ) / (Nat.factorial ((n + 1 : ℤ) - (2 * k : ℤ)).toNat * Nat.factorial (2 * k) : ℚ)

end

end A053988.P6447513109050487521

namespace A053988

/-- `∑{#}[floor((n+1)/2), (-1)^#*(2*(n+1)-2*#)!/((n+1-2*#)!*(2*#)!)]` -/
def P6447513109050487521.Spec : Prop :=
  ∀ n, P6447513109050487521.a n = (A053988 (n + 1) : ℚ)

end A053988

/-!
# A053989: Smallest k such that nk-1 is prime.

The programs for A053989, there is no canonical definition to state claims against.
-/

/-! ## A053989.P4875247218633631008

`(A038700(n+1)+1)/(n+1)`
-/

namespace A053989.P4875247218633631008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038700 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A053989.P4875247218633631008

/-! ## A053989.P12211442785636028813

`A103689(n+1)+A200996(n+1)-A034693(n+1)`
-/

namespace A053989.P12211442785636028813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (n + 1) + (A200996 (n + 1) - A034693 (n + 1))

end

end A053989.P12211442785636028813

/-! ## A053989.P7234164708238970470

`A000203(A038700(n+1))/(n+1)`
-/

namespace A053989.P7234164708238970470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A038700 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A053989.P7234164708238970470

/-! ## A053989.P13104410365774914961

`A008864(A219109(n+1))/(n+1)`
-/

namespace A053989.P13104410365774914961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (A219109 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A053989.P13104410365774914961

/-! ## A053989.P17633570077684952863

`floor(A004768(A038700(n+1))/A004771(n))`
-/

namespace A053989.P17633570077684952863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004768 (A038700 (n + 1)).toNat : ℚ) / (A004771 n : ℚ)⌋

end

end A053989.P17633570077684952863

/-!
# A053990: Numbers of the form x*(x + 1)*y*(y + 1) ("bipronics") where x and y are distinct.

The programs for A053990, there is no canonical definition to state claims against.
-/

/-! ## A053990.P331778511103829673

`A054734(n+1)/2`
-/

namespace A053990.P331778511103829673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054734 (n + 1) : ℚ) / 2

end

end A053990.P331778511103829673

/-! ## A053990.P4584910322762263528

`4*A054731(n+1)`
-/

namespace A053990.P4584910322762263528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054731 (n + 1)

end

end A053990.P4584910322762263528

/-! ## A053990.P6165179340668258935

`A008586(A054731(1+n))`
-/

namespace A053990.P6165179340668258935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A054731 (1 + n)).toNat

end

end A053990.P6165179340668258935

/-! ## A053990.P3440704276544634114

`A008574(A054731(n+1))-A000007(n)`
-/

namespace A053990.P3440704276544634114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A054731 (n + 1)).toNat - A000007 n

end

end A053990.P3440704276544634114

/-! ## A053990.P3320734069839017770

`A008574(A054731(n+1))%A083728(n)`
-/

namespace A053990.P3320734069839017770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A054731 (n + 1)).toNat) (A083728 n)

end

end A053990.P3320734069839017770

/-! ## A053990.P755164713321287370

`A008574(A054731(n+1)+n)-A008574(n)`
-/

namespace A053990.P755164713321287370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A054731 (n + 1) + (n : ℤ)).toNat - A008574 n

end

end A053990.P755164713321287370

/-! ## A053990.P11945995461250345732

`A001281(A054734(n+1))`
-/

namespace A053990.P11945995461250345732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A054734 (n + 1)).toNat

end

end A053990.P11945995461250345732

/-! ## A053990.P11620021582014927093

`A004526(A054734(n+1)+1)`
-/

namespace A053990.P11620021582014927093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054734 (n + 1) + 1).toNat

end

end A053990.P11620021582014927093

/-! ## A053990.P15396418160188438237

`A026730(A054734(n+1)+1)-1`
-/

namespace A053990.P15396418160188438237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A054734 (n + 1) + 1).toNat - 1

end

end A053990.P15396418160188438237

/-! ## A053990.P1937057923223933930

`A106609(A054734(n+1)+2)-1`
-/

namespace A053990.P1937057923223933930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A054734 (n + 1) + 2).toNat - 1

end

end A053990.P1937057923223933930

/-! ## A053990.P15182781596484282197

`A106617(A054734(n+1)+2)-1`
-/

namespace A053990.P15182781596484282197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A054734 (n + 1) + 2).toNat - 1

end

end A053990.P15182781596484282197

/-!
# A053992: The number phi_3(n) of Frobenius partitions that allow up to 3 repetitions of an integer in a row.

The programs for A053992, there is no canonical definition to state claims against.
-/

/-! ## A053992.P5398031079005025852

`A130855(A048497(n))-A065033(n)`
-/

namespace A053992.P5398031079005025852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (A048497 n).toNat - A065033 n

end

end A053992.P5398031079005025852

/-! ## A053992.P9417854782049391271

`A257639(A000213(n)*A082015(n+1))`
-/

namespace A053992.P9417854782049391271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A000213 n * A082015 (n + 1)).toNat

end

end A053992.P9417854782049391271

/-! ## A053992.P13515992474897245743

`A067085(A023871(n))`
-/

namespace A053992.P13515992474897245743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A023871 n).toNat

end

end A053992.P13515992474897245743

/-! ## A053992.P12078821678810203840

`A000194(A124634(n))`
-/

namespace A053992.P12078821678810203840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A124634 n).toNat

end

end A053992.P12078821678810203840

/-! ## A053992.P298262334622159421

`A190899(A018147(n))`
-/

namespace A053992.P298262334622159421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (A018147 n).toNat

end

end A053992.P298262334622159421

/-!
# A053993: The number phi_2(n) of Frobenius partitions that allow up to 2 repetitions of an integer in a row.

The programs for A053993, there is no canonical definition to state claims against.
-/

/-! ## A053993.P7940682118086553922

`A129181(A002412(n)+n)`
-/

namespace A053993.P7940682118086553922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (A002412 n + (n : ℤ)).toNat

end

end A053993.P7940682118086553922

/-! ## A053993.P8666841625430265259

`A129181(A016061(n)-n²)`
-/

namespace A053993.P8666841625430265259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (A016061 n - (n ^ 2 : ℤ)).toNat

end

end A053993.P8666841625430265259

/-! ## A053993.P12680926314342320721

`A129181(A005900(n)+∑[n])`
-/

namespace A053993.P12680926314342320721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (A005900 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A053993.P12680926314342320721

/-! ## A053993.P5532705356591044103

`A129181(A006331(n)-A161680(n))`
-/

namespace A053993.P5532705356591044103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (A006331 n - A161680 n).toNat

end

end A053993.P5532705356591044103

/-! ## A053993.P9362765087205556257

`A129181(∑[A000124(2*n+1)]-A000124(2*n+1))`
-/

namespace A053993.P9362765087205556257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (∑ j ∈ Finset.range (n + 1), f1 j - A000124 (2 * n + 1)).toNat

end

end A053993.P9362765087205556257

/-!
# A053995: Bases of n-dimensional vector space over GF(3).

The programs for A053995, there is no canonical definition to state claims against.
-/

/-! ## A053995.P17259029383335321294

`A053290(n)/n!`
-/

namespace A053995.P17259029383335321294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053290 n : ℚ) / (Nat.factorial n : ℚ)

end

end A053995.P17259029383335321294

/-! ## A053995.P6695624602742067787

`a(n-1)*A219205(n)/n` with `a(0)=1`
-/

namespace A053995.P6695624602742067787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A219205 n : ℚ) / (n : ℚ)

end

end A053995.P6695624602742067787

/-! ## A053995.P13499259835802445067

`A053290(n)/A000142(n)`
-/

namespace A053995.P13499259835802445067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053290 n : ℚ) / (A000142 n : ℚ)

end

end A053995.P13499259835802445067

/-! ## A053995.P15416550393842963750

`A053290(n)/Δ[A003422(n)]`
-/

namespace A053995.P15416550393842963750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053290 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A053995.P15416550393842963750

/-! ## A053995.P10403563434477423965

`A027871(n)*A047656(n)/n!`
-/

namespace A053995.P10403563434477423965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027871 n * A047656 n : ℚ) / (Nat.factorial n : ℚ)

end

end A053995.P10403563434477423965

/-!
# A053996: Number of bases of n-dimensional vector space over GF(4).

The programs for A053996, there is no canonical definition to state claims against.
-/

/-! ## A053996.P15099855571198268960

`A053291(n)/n!`
-/

namespace A053996.P15099855571198268960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053291 n : ℚ) / (Nat.factorial n : ℚ)

end

end A053996.P15099855571198268960

/-! ## A053996.P5786898224386192191

`A053291(n)/A000142(n)`
-/

namespace A053996.P5786898224386192191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053291 n : ℚ) / (A000142 n : ℚ)

end

end A053996.P5786898224386192191

/-! ## A053996.P4004191475787255545

`A053291(n)/A053290(n)*A053995(n)`
-/

namespace A053996.P4004191475787255545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053291 n : ℚ) / (A053290 n : ℚ) * (A053995 n : ℚ)

end

end A053996.P4004191475787255545

/-!
# A053997: Sum of primes in n-th shell of prime spiral.

The programs for A053997, the canonical program `A053997.P5947380031336642127` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053997 has offset 0).

The definition of A053997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053997.P5947380031336642127

`Δ[A109724(A004273(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053997

/-- `Δ[A109724(A004273(n))]` -/
def P5947380031336642127.Spec : Prop :=
  ∀ n, P5947380031336642127.a n = A053997 n

theorem P5947380031336642127.correct : P5947380031336642127.Spec := by
  intro n
  simp only [A053997]

end A053997

/-! ## A053997.P16559127146517349980

`Δ[A109724(record[A026741(n)])]`
-/

namespace A053997.P16559127146517349980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P16559127146517349980

namespace A053997

/-- `Δ[A109724(record[A026741(n)])]` -/
def P16559127146517349980.Spec : Prop :=
  ∀ n, P16559127146517349980.a n = A053997 n

end A053997

/-! ## A053997.P361425828567071112

`Δ[A109724(A004277(n)-1)]`
-/

namespace A053997.P361425828567071112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P361425828567071112

namespace A053997

/-- `Δ[A109724(A004277(n)-1)]` -/
def P361425828567071112.Spec : Prop :=
  ∀ n, P361425828567071112.a n = A053997 n

end A053997

/-! ## A053997.P13791066131340960369

`Δ[A109724(A027379(n)-A000124(n))]`
-/

namespace A053997.P13791066131340960369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (A027379 n - A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P13791066131340960369

namespace A053997

/-- `Δ[A109724(A027379(n)-A000124(n))]` -/
def P13791066131340960369.Spec : Prop :=
  ∀ n, P13791066131340960369.a n = A053997 n

end A053997

/-! ## A053997.P14128559479244678366

`A109724(2*n+1)-A109724(A004273(n))`
-/

namespace A053997.P14128559479244678366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (2 * n + 1) - A109724 (A004273 n).toNat

end

end A053997.P14128559479244678366

namespace A053997

/-- `A109724(2*n+1)-A109724(A004273(n))` -/
def P14128559479244678366.Spec : Prop :=
  ∀ n, P14128559479244678366.a n = A053997 n

end A053997

/-! ## A053997.P13354226251944510413

`Δ[A007504(comp[2*(n+1)]²)]`
-/

namespace A053997.P13354226251944510413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P13354226251944510413

namespace A053997

/-- `Δ[A007504(comp[2*(n+1)]²)]` -/
def P13354226251944510413.Spec : Prop :=
  ∀ n, P13354226251944510413.a n = A053997 n

end A053997

/-! ## A053997.P3576691343059629987

`Δ[record[A007504((lcm(4, n)/4)²)]]`
-/

namespace A053997.P3576691343059629987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway (((Nat.lcm 4 n : ℚ) / 4) ^ 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P3576691343059629987

namespace A053997

/-- `Δ[record[A007504((lcm(4, n)/4)²)]]` -/
def P3576691343059629987.Spec : Prop :=
  ∀ n, P3576691343059629987.a n = A053997 n

end A053997

/-! ## A053997.P1833121480412858364

`Δ[record[A007504(A181318(n))]]`
-/

namespace A053997.P1833121480412858364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A181318 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P1833121480412858364

namespace A053997

/-- `Δ[record[A007504(A181318(n))]]` -/
def P1833121480412858364.Spec : Prop :=
  ∀ n, P1833121480412858364.a n = A053997 n

end A053997

/-! ## A053997.P10065782057246658119

`Δ[record[A007504(A191871(n))]]`
-/

namespace A053997.P10065782057246658119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A191871 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P10065782057246658119

namespace A053997

/-- `Δ[record[A007504(A191871(n))]]` -/
def P10065782057246658119.Spec : Prop :=
  ∀ n, P10065782057246658119.a n = A053997 n

end A053997

/-!
# A053998: Smallest prime in n-th shell of prime spiral.

The programs for A053998, there is no canonical definition to state claims against.
-/

/-! ## A053998.P14095281312539084067

`A243896(eq[n, n*gcd(2, n)])`
-/

namespace A053998.P14095281312539084067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A053998.P14095281312539084067

/-! ## A053998.P15166280689525643216

`A243896(eq[lcm(2, n)+n%2, or(2*n, n%4)])`
-/

namespace A053998.P15166280689525643216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A053998.P15166280689525643216

/-! ## A053998.P4687943716779659796

`A243896(A004273(n))`
-/

namespace A053998.P4687943716779659796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 (A004273 n).toNat

end

end A053998.P4687943716779659796

/-! ## A053998.P4843097166370424870

`A059428(A111284(n+1))`
-/

namespace A053998.P4843097166370424870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (A111284 (n + 1)).toNat

end

end A053998.P4843097166370424870

/-! ## A053998.P3339625793573627162

`A243896(lt[A055396(n+1), 2])`
-/

namespace A053998.P3339625793573627162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053998.P3339625793573627162

/-! ## A053998.P1859098491025859762

`A001748(A004273(n)²+1)/3`
-/

namespace A053998.P1859098491025859762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A004273 n ^ 2 + 1).toNat : ℚ) / 3

end

end A053998.P1859098491025859762

/-! ## A053998.P830141406910630351

`A000040(comp[2*(n+1)]²+1)`
-/

namespace A053998.P830141406910630351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 + 1)

end

end A053998.P830141406910630351

/-! ## A053998.P3759632667672913460

`A008578(comp[2*(n+1)]²+2)`
-/

namespace A053998.P3759632667672913460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 + 2)

end

end A053998.P3759632667672913460

/-! ## A053998.P11661127841048516845

`A182986(comp[2*(n+1)]²+2)`
-/

namespace A053998.P11661127841048516845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 + 2)

end

end A053998.P11661127841048516845

/-! ## A053998.P9164182589697270736

`record[A000040((lcm(8, n)/8)²+1)]`
-/

namespace A053998.P9164182589697270736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (((Nat.lcm 8 n : ℚ) / 8) ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053998.P9164182589697270736

/-!
# A053999: Prime number spiral (clockwise, Northwest spoke).

The programs for A053999, the canonical program `A053999.P8893675661368151238` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053999 has offset 0).

The definition of A053999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053999.P8893675661368151238

`A000040(4*n²+4*n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053999

/-- `A000040(4*n²+4*n+1)` -/
def P8893675661368151238.Spec : Prop :=
  ∀ n, P8893675661368151238.a n = A053999 n

theorem P8893675661368151238.correct : P8893675661368151238.Spec := by
  intro n
  simp only [A053999]

end A053999

/-! ## A053999.P15436543564870706597

`A011757(Δ[n²])`
-/

namespace A053999.P15436543564870706597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053999.P15436543564870706597

namespace A053999

/-- `A011757(Δ[n²])` -/
def P15436543564870706597.Spec : Prop :=
  ∀ n, P15436543564870706597.a n = A053999 n

end A053999

/-! ## A053999.P3869007400187984896

`A323526(2*(n+1))`
-/

namespace A053999.P3869007400187984896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (2 * (n + 1))

end

end A053999.P3869007400187984896

namespace A053999

/-- `A323526(2*(n+1))` -/
def P3869007400187984896.Spec : Prop :=
  ∀ n, P3869007400187984896.a n = A053999 n

end A053999

/-! ## A053999.P15377845464796489486

`round(sqrt(A011757(2*n+1)²+1))`
-/

namespace A053999.P15377845464796489486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A011757 (2 * n + 1) ^ 2 + 1 : ℝ))

end

end A053999.P15377845464796489486

namespace A053999

/-- `round(sqrt(A011757(2*n+1)²+1))` -/
def P15377845464796489486.Spec : Prop :=
  ∀ n, P15377845464796489486.a n = A053999 n

end A053999

/-! ## A053999.P3374539751666955945

`record[(n+1)%2*A011757(n+1)]`
-/

namespace A053999.P3374539751666955945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A011757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053999.P3374539751666955945

namespace A053999

/-- `record[(n+1)%2*A011757(n+1)]` -/
def P3374539751666955945.Spec : Prop :=
  ∀ n, P3374539751666955945.a n = A053999 n

end A053999

/-! ## A053999.P11928933966551456990

`record[A011757(A000265(n+1))]`
-/

namespace A053999.P11928933966551456990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053999.P11928933966551456990

namespace A053999

/-- `record[A011757(A000265(n+1))]` -/
def P11928933966551456990.Spec : Prop :=
  ∀ n, P11928933966551456990.a n = A053999 n

end A053999

/-! ## A053999.P9140544619886104955

`record[A011757(n+1)*A033999(n)]`
-/

namespace A053999.P9140544619886104955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053999.P9140544619886104955

namespace A053999

/-- `record[A011757(n+1)*A033999(n)]` -/
def P9140544619886104955.Spec : Prop :=
  ∀ n, P9140544619886104955.a n = A053999 n

end A053999

/-! ## A053999.P7668857374193615322

`A011757(2*n+1)%A109185(n+1)`
-/

namespace A053999.P7668857374193615322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011757 (2 * n + 1)) (A109185 (n + 1))

end

end A053999.P7668857374193615322

namespace A053999

/-- `A011757(2*n+1)%A109185(n+1)` -/
def P7668857374193615322.Spec : Prop :=
  ∀ n, P7668857374193615322.a n = A053999 n

end A053999

/-! ## A053999.P11800530737977890231

`or(A011757(2*n+1), A285515(n+1))`
-/

namespace A053999.P11800530737977890231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011757 (2 * n + 1)) (A285515 (n + 1))

end

end A053999.P11800530737977890231

namespace A053999

/-- `or(A011757(2*n+1), A285515(n+1))` -/
def P11800530737977890231.Spec : Prop :=
  ∀ n, P11800530737977890231.a n = A053999 n

end A053999

/-! ## A053999.P17800169386664362706

`or(A014709(n)-1, A011757(2*n+1))`
-/

namespace A053999.P17800169386664362706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014709 n - 1) (A011757 (2 * n + 1))

end

end A053999.P17800169386664362706

namespace A053999

/-- `or(A014709(n)-1, A011757(2*n+1))` -/
def P17800169386664362706.Spec : Prop :=
  ∀ n, P17800169386664362706.a n = A053999 n

end A053999

/-! ## A053999.P13059428106397372108

`A213926(2*n+1)+A000040(2*n+1)`
-/

namespace A053999.P13059428106397372108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213926 (2 * n + 1) + A000040 (2 * n + 1)

end

end A053999.P13059428106397372108

namespace A053999

/-- `A213926(2*n+1)+A000040(2*n+1)` -/
def P13059428106397372108.Spec : Prop :=
  ∀ n, P13059428106397372108.a n = A053999 n

end A053999

/-! ## A053999.P11561918381749442172

`A001248(2*n+1)-A123914(2*n+1)`
-/

namespace A053999.P11561918381749442172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (2 * n + 1) - A123914 (2 * n + 1)

end

end A053999.P11561918381749442172

namespace A053999

/-- `A001248(2*n+1)-A123914(2*n+1)` -/
def P11561918381749442172.Spec : Prop :=
  ∀ n, P11561918381749442172.a n = A053999 n

end A053999

/-! ## A053999.P5130447110083964203

`or(A011757(2*n+1), A086013(A039709(n+1)))`
-/

namespace A053999.P5130447110083964203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011757 (2 * n + 1)) (A086013 (A039709 (n + 1)).toNat)

end

end A053999.P5130447110083964203

namespace A053999

/-- `or(A011757(2*n+1), A086013(A039709(n+1)))` -/
def P5130447110083964203.Spec : Prop :=
  ∀ n, P5130447110083964203.a n = A053999 n

end A053999

/-! ## A053999.P6160995257011635220

`A296857(A031368(n+1))`
-/

namespace A053999.P6160995257011635220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A031368 (n + 1)).toNat

end

end A053999.P6160995257011635220

namespace A053999

/-- `A296857(A031368(n+1))` -/
def P6160995257011635220.Spec : Prop :=
  ∀ n, P6160995257011635220.a n = A053999 n

end A053999

/-! ## A053999.P3110240217282989354

`A296857(A000040(Δ[n²]))`
-/

namespace A053999.P3110240217282989354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A053999.P3110240217282989354

namespace A053999

/-- `A296857(A000040(Δ[n²]))` -/
def P3110240217282989354.Spec : Prop :=
  ∀ n, P3110240217282989354.a n = A053999 n

end A053999

/-! ## A053999.P13892394351360065395

`A296857(A008578(2*(n+1)))`
-/

namespace A053999.P13892394351360065395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A008578 (2 * (n + 1))).toNat

end

end A053999.P13892394351360065395

namespace A053999

/-- `A296857(A008578(2*(n+1)))` -/
def P13892394351360065395.Spec : Prop :=
  ∀ n, P13892394351360065395.a n = A053999 n

end A053999

/-! ## A053999.P7703077606076831376

`A296857(A182986(2*(n+1)))`
-/

namespace A053999.P7703077606076831376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A182986 (2 * (n + 1))).toNat

end

end A053999.P7703077606076831376

namespace A053999

/-- `A296857(A182986(2*(n+1)))` -/
def P7703077606076831376.Spec : Prop :=
  ∀ n, P7703077606076831376.a n = A053999 n

end A053999

/-! ## A053999.P6995837897160862951

`A296857(A297473(A000040(n+1)))`
-/

namespace A053999.P6995837897160862951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A297473 (A000040 (n + 1)).toNat).toNat

end

end A053999.P6995837897160862951

namespace A053999

/-- `A296857(A297473(A000040(n+1)))` -/
def P6995837897160862951.Spec : Prop :=
  ∀ n, P6995837897160862951.a n = A053999 n

end A053999

/-! ## A053999.P18105212758242714338

`A031915(∑[n]+1)`
-/

namespace A053999.P18105212758242714338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A053999.P18105212758242714338

namespace A053999

/-- `A031915(∑[n]+1)` -/
def P18105212758242714338.Spec : Prop :=
  ∀ n, P18105212758242714338.a n = A053999 n

end A053999

/-! ## A053999.P8088004977195413136

`∩[A011757(n+1), A031915(n+1)]`
-/

namespace A053999.P8088004977195413136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053999.P8088004977195413136

namespace A053999

/-- `∩[A011757(n+1), A031915(n+1)]` -/
def P8088004977195413136.Spec : Prop :=
  ∀ n, (P8088004977195413136.a n : ℤ) = A053999 n

end A053999

